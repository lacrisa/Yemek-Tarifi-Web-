<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifleri.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style13 {
            background-color: #CCCCCC;
        }

        .auto-style18 {
            width: 32px;
        }

        .auto-style20 {
            font-weight: bold;
            font-size: x-large;
        }
    
        .auto-style19 {
            width: 39px;
        }

        .auto-style21 {
            text-align: right;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style13">
        <table class="auto-style9">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="34px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="36px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td><strong>Onaysız Tarif Listesi</strong></td>
            </tr>
        </table>
        <strong></strong>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style22">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style21">
                           <a href='<%# Eval("TarifId", "TarifOnerDetay.aspx?TarifId={0}") %>'> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/read.png" Width="30px" /> </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style13" style="margin-top:15px;">
        <table class="auto-style9">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Height="34px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="36px" Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td><strong>Onaylı Tarif Listesi</strong></td>
            </tr>
        </table>
        <strong></strong>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style22">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style21">
                           <a href='<%# Eval("TarifId", "TarifOnerDetay.aspx?TarifId={0}") %>'> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/read.png" Width="30px" /> </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
