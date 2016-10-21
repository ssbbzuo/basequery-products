package com.eenet.basequery.pri;

import java.util.ArrayList;

import com.eenet.authen.AdminUserLoginAccount;
import com.eenet.base.SimpleResultSet;
import com.eenet.base.biz.BackupData;
import com.eenet.base.biz.BizShadowForBackup;
import com.eenet.base.biz.BizShadowForSave;
import com.eenet.base.biz.SimpleBizImpl;
import com.eenet.base.query.OrderBy;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.Rank;
import com.eenet.common.BackupUpdatedData;
import com.eenet.common.OPOwner;
import com.eenet.common.exception.DBOPException;
import com.eenet.common.exception.MyRuntimeException;
import com.eenet.util.EEBeanUtils;

public class AccountInfoServiceImpl extends SimpleBizImpl implements AccountInfoService {

	@Override
	public SimpleResultSet<AdminUserLoginAccount> getAccountInfo(QueryCondition condition) {
		if (condition.getOrderBySet() == null || condition.getOrderBySet().isEmpty()) {
			ArrayList<OrderBy> orderList = new ArrayList<OrderBy>();
			OrderBy order = new OrderBy();
			order.setAttName("crdt");
			order.setRank(Rank.DESC);
			orderList.add(order);
			condition.setOrderBySet(orderList);
		}
		return super.query(condition);
	}

	@Override
	public AdminUserLoginAccount getAccountInfoByPK(String pk) {
		return super.get(pk);
	}

	@Override
	public AdminUserLoginAccount save(AdminUserLoginAccount m, boolean isAdd) {

		if (m == null)
			return null;

		// 调用者、调用系统为止
		m.setCrps(OPOwner.getCurrentUser());
		m.setCrss(OPOwner.getCurrentSys());
		m.setMdps(OPOwner.getCurrentUser());
		m.setMdss(OPOwner.getCurrentSys());
		try {
			if (isAdd) {// true说明是要进行数据新增
				System.out.println("insert  ==========================");
				m = getBaseDAOService().insert(m);
				m.setSuccessful(true);
			} else {// false说明是要进行数据修改
				this.backup(m.getAtid(), m);
				Boolean success = getBaseDAOService().update(m);
				m.setSuccessful(success);
			}
			return m;
		} catch (Exception e) {
			m.setSuccessful(false);
			m.addMessage(e.toString());
		}
		return m;
		// return super.save(m);
	}

	private <M> void backup(String atid, M m) {
		if (!(m instanceof BackupUpdatedData))// 这是数据不需要备份
			return;

		BackupData backup = new BackupData();
		backup.setBackup4("update");
		backup.addAtids(atid);
		new BizShadowForBackup(getNotLimitedDAOService()).executeBackup(backup, m.getClass().getName() + ".backup");
	}

	@Override
	public Class<AdminUserLoginAccount> getPojoCLS() {
		return AdminUserLoginAccount.class;
	}
}
