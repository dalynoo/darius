﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TourCrud.aspx.cs" Inherits="Tour_Management.TourCrud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="TOUR_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="TOUR_ID" HeaderText="TOUR_ID" InsertVisible="False" ReadOnly="True" SortExpression="TOUR_ID" />
                <asp:BoundField DataField="TOUR_NAME" HeaderText="TOUR_NAME" SortExpression="TOUR_NAME" />
                <asp:BoundField DataField="PLACE" HeaderText="PLACE" SortExpression="PLACE" />
                <asp:BoundField DataField="DAYS" HeaderText="DAYS" SortExpression="DAYS" />
                <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
                <asp:BoundField DataField="LOCATIONS" HeaderText="LOCATIONS" SortExpression="LOCATIONS" />
                <asp:BoundField DataField="TOUR_INFO" HeaderText="TOUR_INFO" SortExpression="TOUR_INFO" />
                <asp:TemplateField HeaderText="pic">

                <ItemTemplate>
                    <img src="Tour_pics/<%#Eval("pic") %>" style="width:150px;height:150px" />
                </ItemTemplate>
                    </asp:TemplateField>
                
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" 
            SelectCommand="SELECT * FROM [Tour]"
            UpdateCommand="UPDATE [Tour] Set [TOUR_NAME]=@TOUR_NAME,[PLACE]=@PLACE,[DAYS]=@DAYS,[PRICE]=@PRICE,[LOCATIONS]=@LOCATIONS,[TOUR_INFO]=@TOUR_INFO Where [TOUR_ID]=@TOUR_ID"
            DeleteCommand="Delete from [Tour] Where [TOUR_ID]=@TOUR_ID"
            ></asp:SqlDataSource>
    </form>
</body>
</html>
