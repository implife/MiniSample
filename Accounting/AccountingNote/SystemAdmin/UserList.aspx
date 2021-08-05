﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SystemAdmin/Admin.Master" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="AccountingNote.SystemAdmin.WebForm1" %>

<%@ Register Src="~/UserControls/ucPager.ascx" TagPrefix="uc1" TagName="ucPager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>會員管理</h2>
    <div>
        <asp:Button ID="btnAdd" runat="server" Text="新增" OnClick="btnAdd_Click" Font-Size="Medium" Height="36px" Width="79px" />
    </div>
    <asp:GridView ID="gvUserList" runat="server" AutoGenerateColumns="False" OnRowDataBound="gvUserList_RowDataBound" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField HeaderText="帳號" DataField="Account" />
            <asp:BoundField HeaderText="姓名" DataField="Name" />

            <asp:TemplateField HeaderText="等級">
                <ItemTemplate>
                    <asp:Label ID="lblUserLevel" runat="server" Text="Label"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField HeaderText="建立時間" DataField="CreateDate" />

            <asp:TemplateField HeaderText="Act">
                <ItemTemplate>
                    <asp:HyperLink ID="linkEdit" runat="server">編輯</asp:HyperLink>
                    <%--<a href="/SystemAdmin/UserDetail.aspx?UID=<%# Eval("ID") %>">編輯</a>--%>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    	<FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
		<HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
		<PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
		<RowStyle BackColor="White" ForeColor="#003399" />
		<SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
		<SortedAscendingCellStyle BackColor="#EDF6F6" />
		<SortedAscendingHeaderStyle BackColor="#0D4AC4" />
		<SortedDescendingCellStyle BackColor="#D6DFDF" />
		<SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <%--<uc1:ucPager runat="server" id="ucPager" />--%>
</asp:Content>
