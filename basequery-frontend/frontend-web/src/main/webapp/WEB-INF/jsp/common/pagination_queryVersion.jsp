<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.eenet.basequery.page.Pagination" %>

<% 
		Pagination pagination = (Pagination)request.getAttribute("pagination");
		int current = pagination.getPageCurrent();
		int pages = pagination.getPageSize();
		int begin = Math.max(1, current - 2);
		int end = Math.min(current+2, pagination.getPages());
		request.setAttribute("begin", begin);
		request.setAttribute("end", end);
%>

<div>
<%if(pagination.getTotal()>100){ %>
	<input type="hidden"  value="<%=pagination.getIndexCurrent() %>" name="indexCurrent">
		<input type="hidden"  value="<%=pagination.getPageCurrent() %>" name="pageCurrent">
	<div class="pageing-info">
		<div class="dataTables_info" id="DataTables_Table_0_info" role="status"
			 aria-inputve="poinputte">
			<table>
				<tr>
			<td><%=pagination.getTotal() %>条，共 <%=pagination.getPages() %> 页，当前<%=pagination.getPageCurrent() %>页，到第
			<input type="text" id="page" name="page" class="form-control jump-page-input" value="<%=pagination.getPageCurrent()+1 %>" onkeyup="changeNumber()" onblur="changeNumber()">
			页
			<button class="btn btn-block btn-default sure-btn" oncinputck="toPage(document.forms[0].page.value)">
				确定
			</button>
			</td>
				<% if (pagination.isHasPreviousPage()){%>
				<td class="paginate_button previous" id="DataTables_Table_0_previous">
					<a href="javascript:toPage(''<%=pagination.getPageCurrent()-1%>);" aria-controls="DataTables_Table_0" data-dt-idx="0" tabindex="0">
						上一页
					</a>
				</td>
				<%}else{%>
				<td class="paginate_button previous disabled" id="DataTables_Table_0_previous">
					<a href="#" aria-controls="DataTables_Table_0" data-dt-idx="0" tabindex="0">
						上一页
					</a>
				</td>
				<%} %>
				
				<c:forEach var="i" begin="${begin}" end="${end}">
					<td class="paginate_button <c:if test="${i == pagination.pageCurrent}">active</c:if>">
						<a href="javascript:toPage('${i}');" aria-controls="DataTables_Table_0" data-dt-idx="${i}" tabindex="0">
							${i}
						</a>
					</td>
				</c:forEach>
				
					<% if (pagination.isHasNextPage()){%>
				<td class="paginate_button next" id="DataTables_Table_0_next">
					<a href="javascript:toPage('<%=pagination.getPageCurrent()+1%>');" aria-controls="DataTables_Table_0" data-dt-idx="100" tabindex="0">
						下一页
					</a>
				</td>
				<%}else{%>
				<td class="paginate_button next disabled" id="DataTables_Table_0_next">
					<a href="#" aria-controls="DataTables_Table_0" data-dt-idx="100" tabindex="0">
						下一页
					</a>
				</td>
				<%} %>
				</tr>
			</table>
		</div>
	</div>
</div>
<script>
function toPage(index) {
    if (index == "") {
        alert("请输入跳转的页面数！");
        return;
    }
	if(isNaN(document.forms[0].page.value)) {
		alert("跳转页面必须为数值型");
		return;
	}
	if(index == 0){
    	index = 1;
    }
	 if (index > <%=pagination.getPages()%>)
    		document.forms[0].pageCurrent.value = "<%=pagination.getPages()%>" ;
    	else
    		document.forms[0].pageCurrent.value = index;
    document.forms[0].submit();
}
</script>
<%} %>