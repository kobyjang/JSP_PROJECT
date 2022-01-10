<%-- JSP 페이지 정의 시작 --%>
<%@ page info="id check" errorPage="error.jsp" %>
<%@ page import="java.sql.*"%> 
<%@ page contentType="text/html; %>
<%@ page language="java" %>
<%-- JSP 페이지 정의 끝 --%>

<%-- JSP 코드 시작 --%>
<%
    Connection conn = null;
    Statement  stmt = null;
    ResultSet  rs   = null;

    // User ID값 받기
    String id = request.getParameter("id");
    String query  = new String();

    int check_count = 0;  // 해당레코드 카운드

  try {
    String url = "jdbc:mysql://localhost:3306/webmarketdb";
		String user = "root";
		String password = "8877";

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password); // 자바빈즈로부터 데이터베이스 커넥션 받기
        stmt = conn.createStatement(); // 커넥션으로부터 Statement 생성

        // 아이디 조회
        query = "Select count(*) as count from member where id='" + id + "'";
        rs = stmt.executeQuery(query);
        rs.next();
        check_count = rs.getInt("count");
        rs.close();
    } catch(SQLException e){
    } finally {
        conn.close();
    }
%>
<%-- JSP 코드 끝 --%>
<%-- HTML 코드 시작 --%>
<html>
<head>
<title>아이디 중복검사</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<%-- 외부 스타일시트 지정 --%>
<link rel="StyleSheet" href="style.css" type="text/css">
<%-- 자바스크립트 영역 시작 --%>
<script language="JavaScript">
function checkEnd(){
    var form = document.id_check;

    opener.join.userid.value       = form.userid.value;
    opener.join.userid_check.value = form.check_count.value;
    self.close();
}
function doCheck(){
    var form = document.id_check;
    if(!checkValue(form.userid, '아이디', 5, 16)){
        return;
    }
    form.submit();
}
function checkValue(target, cmt, lmin, lmax){
    var Alpha = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var Digit = '1234567890';
    var astr = Alpha+Digit;
    var i;
    var tValue = target.value;
    if(tValue.length < lmin || tValue.length > lmax){
        if(lmin==lmax) alert(cmt+'는'+lmin+'Byte이어야 합니다.');
        else alert(cmt+'는'+lmin+'~'+lmax+'Byte 이내로 입력하셔야 합니다.');
        target.focus();
        return false;
    }
    if(astr.length > 1){
        for (i=0; i<tValue.length; i++){
            if(astr.indexOf(tValue.substring(i,i+1))<0){
                alert(cmt+'에 허용할 수 없는 문자가 입력되었습니다.');
                target.focus();
                return false;
            }
        }
    }
    return true;
}
</script>
</head>
<body text="#000000" bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<br>
<br>
<%-- FORM 태그 시작 --%>
<form name="id_check" method="post" action="userid_check.jsp">
  <input type="hidden" name="check_count" value="<%=check_count%>">
  <table width="300" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
      <td>원하는 아이디를 입력하세요.</td>
    </tr>
  </table>
  <table width="300" border="0" bgcolor="#B6C1D6" height="39" align="center">
    <tr>
      <td bgcolor="#ffffff" width="40%" align="center">
        <input type="text" name="userid" value="<%=id%>" onFocus="this.value=''" maxlength="16" size="16" class="oneborder">
        <input type="button" value="중복확인" onClick="doCheck()" class="oneborder">
      </td>
    </tr>
    <tr>
      <td>
<%
    if(check_count > 0){
%>
      [<%=id%>]은 등록되어있는 아이디입니다.<br> 다시 시도해주십시오.
<%
    }else{
%>
      [<%=id%>]은 사용 가능합니다.
<%
    }
%>
      </td>
    </tr>
  </table>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
      <td align="center">
        <input type="button" value="확인" onClick="checkEnd()" class="oneborder">
      </td>
    </tr>
  </table>
</form>
<%-- FORM 태그 끝 --%>
</body>
</html>
<%-- HTML 코드 끝 --%>