<%@ page language="java" session="true" import="java.sql.*" %>
<%@ include file="date1.jsp" %>
<%
String fraccno=(String)session.getValue("ano"); 
        String toaccno=request.getParameter("T1");
        String famt=request.getParameter("T2");
        
%>

<%
try
{
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

}catch(ClassNotFoundException ex){}
try{

    int en=0,balance=0,i=0,auto=0,no=0,depamt=0,n=0,balance1=0,check=0;
    int f=0,f1=0,f2=0,f3=0;
    int en1=0,balance2=0,tobalance=0,todepamt=0,check1=0;
    String atype="",type="fund transfer",y="",paye="";
    String toatype="",topaye="";
        
    int famt1=Integer.parseInt(famt);
        Connection cc=null;
    cc=DriverManager.getConnection("jdbc:odbc:wallet","sa","");
    Statement s=cc.createStatement();
out.println("from");
        PreparedStatement p=cc.prepareStatement("select encode,bal from trans where accno=? ");
    p.setString(1,fraccno);
        ResultSet rs=p.executeQuery();    
    int ent=0;
        while(rs.next())
    {

             en=rs.getInt("encode");
        if(ent<en)
        {
            ent=en;
                balance=rs.getInt("bal");  
        }

    }
    ent=ent+1;
        
        PreparedStatement p1=cc.prepareStatement("select acctype,damt,payee from trans where accno=? ");
    p1.setString(1,fraccno);
        ResultSet rs1=p1.executeQuery();      
    while(rs1.next())
    {
        atype=rs1.getString("acctype");
        //depamt=rs1.getInt("damt");
        paye=rs1.getString("payee");
    }


PreparedStatement p5=cc.prepareStatement("select encode,bal from trans where accno=? ");
    p5.setString(1,toaccno);
        ResultSet rs5=p5.executeQuery();      
    int ent1=0;
        while(rs5.next())
    {

         check1=1;  
             en1=rs5.getInt("encode");
        if(ent1<en1)
        {
            ent1=en1;
                tobalance=rs5.getInt("bal");  
        }

    }
    ent1=ent1+1;
        
        PreparedStatement p6=cc.prepareStatement("select acctype,damt,payee from trans where accno=? ");
    p6.setString(1,toaccno);
        ResultSet rs6=p6.executeQuery();      
    while(rs6.next())
    {
        toatype=rs6.getString("acctype");
        //todepamt=rs6.getInt("damt");
        topaye=rs6.getString("payee");
    }


if(check1==1)
{

             if(famt1>balance)
        {
        check=1;
        out.println("cannot pass.ur bal is"+ balance);
        }
        else
        {   
            balance1=balance-famt1;
                        balance2=tobalance+famt1;
                        //todepamt=todepamt+famt1;
        }       

}                   

    if(check!=1)
    {

            
String sq2=("insert into trans values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
    PreparedStatement p2=cc.prepareStatement(sq2);
    p2.setInt(1,ent);
    p2.setInt(2,Integer.parseInt(fraccno));
    p2.setString(3,atype);
    p2.setString(4,x);
    p2.setString(5,type);
    p2.setString(6,y);
    p2.setString(7,x);
    p2.setString(8,y);
    p2.setInt(9,n);
    p2.setString(10,paye);
    p2.setString(11,toaccno);
    p2.setInt(12,famt1);
    p2.setInt(13,balance1);
         int j=p2.executeUpdate();
    if(j>0)
    {
        f=1;
    }       
String sq3=("insert into wdraw values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    PreparedStatement p4=cc.prepareStatement(sq3);
    p4.setInt(1,ent);
    p4.setInt(2,Integer.parseInt(fraccno));
    p4.setString(3,atype);
    p4.setString(4,x);
    p4.setString(5,type);
    p4.setString(6,y);
    p4.setString(7,x);
    p4.setString(8,paye);
    p4.setInt(9,n);
    p4.setString(10,y);
    p4.setString(11,y);
    p4.setInt(12,famt1);
    p4.setInt(13,balance1);
    p4.setString(14,y);
         int jj=p4.executeUpdate();
    if(jj>0)
    {
        f1=1;
    }       

String sq4=("insert into trans values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
    PreparedStatement p7=cc.prepareStatement(sq4);
    p7.setInt(1,ent1);
    p7.setInt(2,Integer.parseInt(toaccno));
    p7.setString(3,toatype);
    p7.setString(4,x);
    p7.setString(5,type);
    p7.setString(6,y);
    p7.setString(7,x);
    p7.setString(8,y);
    p7.setInt(9,famt1);
    p7.setString(10,topaye);
    p7.setString(11,y);
    p7.setInt(12,n);
    p7.setInt(13,balance2);
         int j1=p7.executeUpdate();
    if(j1>0)
    {
        f2=1;
    }       
String sq5=("insert into deposit values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    PreparedStatement p8=cc.prepareStatement(sq5);
    p8.setInt(1,ent1);
    p8.setInt(2,Integer.parseInt(toaccno));
    p8.setString(3,toatype);
    p8.setString(4,x);
    p8.setString(5,type);
    p8.setString(6,y);
    p8.setString(7,x);
    p8.setString(8,topaye);
    p8.setInt(9,famt1);
    p8.setString(10,y);
    p8.setString(11,y);
    p8.setInt(12,n);
    p8.setInt(13,balance2);
    p8.setString(14,fraccno);
         int jj1=p8.executeUpdate();
    if(jj1>0)
    {
        f3=1;
    }       
    if(f==1 && f1==1 && f2==1 && f3==1)
    {
        out.println("SUCCESSFULLY TRANSFERRED"); 
        //response.sendRedirect("http://localhost:8080/examples/jsp/frames/final.htm");
    }

    }
}catch(SQLException ex){}

%>




