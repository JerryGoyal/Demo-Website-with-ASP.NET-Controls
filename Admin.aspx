﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">
        var lblMessage;
        function init() {
            lblMessage = document.getElementById('<%=lblMessage.ClientID %>');
        }
        function ClearValidation() {
            lblMessage.innerHTML = "";
        }
    </script>
    <style type="text/css">
        #txtFileUpload
        {
            width: 213px;
        }
    </style>
</head>
<body onload="init()">
    <form id="form1" runat="server" enctype="multipart/form-data">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="up1" runat="server">
        <ContentTemplate>--%>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID"
            Height="29px" Width="1031px" ShowFooter="True" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="ID" SortExpression="ID" Visible="False">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditUsername" runat="server" ErrorMessage="UserName is a required field"
                            ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertUsername" ValidationGroup="INSERT" runat="server"
                            ErrorMessage="UserName is a required field" ControlToValidate="txtUsername" Text="*"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditEmail" runat="server" ErrorMessage="Email is a required field"
                            ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertEmail" ValidationGroup="INSERT" runat="server"
                            ErrorMessage="Email is a required field" ControlToValidate="txtEmail" Text="*"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password" SortExpression="Password">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditPassword" runat="server" ErrorMessage="Password is a required field"
                            ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertPassword" ValidationGroup="INSERT" runat="server"
                            ErrorMessage="Password is a required field" ControlToValidate="txtPassword" Text="*"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Country" SortExpression="Country">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Country") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditCuntry" runat="server" ErrorMessage="Country is a required field"
                            ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertCuntry" ValidationGroup="INSERT" runat="server"
                            ErrorMessage="Country is a required field" ControlToValidate="txtCountry" Text="*"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Files">
                    <EditItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Files") %>'></asp:Label>
                        <input type="file" id="FileUpload" name="myEditFile" />
                        <%-- <asp:FileUpload ID="FileUpload1" runat="server"  FileName ='<%# Bind("Files") %>'></asp:FileUpload>--%>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                        <asp:LinkButton ID="Download" runat="server" CommandArgument='<%# Eval("Files") %>'
                            Text='<%# this.ExtractData(Eval("Files").ToString()) %>' CommandName="Download"></asp:LinkButton>
                    </ItemTemplate>
                    <FooterTemplate>
                        <input type="file" id="txtFileUpload" name="myFile" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbEdit" CommandArgument='<%# Eval("Id") %>' OnClientClick="ClearValidation()"
                            CommandName="EditRow" ForeColor="#8C4510" runat="server">Edit</asp:LinkButton>
                        <asp:LinkButton ID="lbDelete" CommandArgument='<%# Eval("Id") %>' CommandName="DeleteRow"
                            ForeColor="#8C4510" OnClientClick="ClearValidation()" runat="server" CausesValidation="false">Delete</asp:LinkButton>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:LinkButton ID="lbUpdate" CommandArgument='<%# Eval("Id") %>' CommandName="UpdateRow"
                            OnClientClick="ClearValidation()" ForeColor="#8C4510" runat="server">Update</asp:LinkButton>
                        <asp:LinkButton ID="lbCancel" CommandArgument='<%# Eval("Id") %>' CommandName="CancelUpdate"
                            OnClientClick="ClearValidation()" ForeColor="#8C4510" runat="server" CausesValidation="false">Cancel</asp:LinkButton>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton CommandName="InsertRow" ID="lbInsert" ValidationGroup="INSERT" ForeColor="#8C4510"
                            OnClientClick="ClearValidation()" runat="server">Insert</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="INSERT" runat="server"
            ForeColor="Red" />
        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" Height="16px"
            Width="1086px" />
    </div>
    <%--      </ContentTemplate>
    </asp:UpdatePanel>--%>
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </form>
</body>
</html>
