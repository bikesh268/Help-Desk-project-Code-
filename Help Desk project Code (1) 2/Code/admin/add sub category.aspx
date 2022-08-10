<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="add sub category.aspx.cs" Inherits="admin_add_sub_category" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 363px; position: static; height: 244px">
        <tr>
            <td align="left" colspan="2" style="color: #cc9966">
                <strong>Add New Department&gt;&gt;&gt;</strong></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Category Name</td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" 
                    Style="position: static">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Sub Category</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 17px">
                <asp:Button ID="Button1" runat="server" Height="24px" onclick="Button1_Click" 
                    Text="Button" Width="92px" />
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="height: 17px">
                <div style="text-align: left">
                    <table style="width: 494px; position: static; height: 167px">
                        <tr>
                            <td style="width: 100px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" 
                OnRowDeleting="GridView1_RowDeleting" PageSize="3" Style="position: static" 
                Width="655px" Height="169px">
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="delete" runat="server" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sub Category Id">
                        <ItemTemplate>
                            <asp:Label ID="cid" runat="server" Text='<%#Eval("scid") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category Name">
                        <ItemTemplate>
                            <asp:Label ID="cname" runat="server" Text='<%#Eval("cname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Sub Category Name">
                        <ItemTemplate>
                            <asp:Label ID="scname" runat="server" Text='<%#Eval("scname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CreatedDate">
                        <ItemTemplate>
                            <asp:Label ID="cdate" runat="server" Text='<%#Eval("cdate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

