<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifleri.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            background-color: #CCCCCC;
        }

        .auto-style14 {
            text-align: right;
        }

        .auto-style15 {
            font-size: large;
        }

        .auto-style16 {
            text-align: left;
            width: 1074px;
        }

        .auto-style18 {
            width: 32px;
        }
        .auto-style19 {
            width: 39px;
        }
        .auto-style20 {
            font-weight: bold;
            font-size: x-large;
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
                <td><strong>Kategori Listesi</strong></td>
            </tr>
        </table>
        <strong></strong>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style16">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style14">
                         <a href='<%# Eval("KategoriId", "Kategoriler.aspx?KategoriId={0}") %>&islem=sil'>   <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.jpg" Width="32px" /> </a>
                        </td>
                        <td class="auto-style14">
                         <a href='<%# Eval("KategoriId", "KategoriDuzenle.aspx?KategoriId={0}") %>'>   <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update.png" Width="30px" /> </a>
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
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Height="34px" Text="+" Width="30px" OnClick="Button3_Click"/>
                </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="36px" Text="-" Width="30px" OnClick="Button4_Click"/>
                </strong></td>
                <td><strong>Kategori Ekleme</strong></td>
            </tr>
        </table>
        <strong></strong>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style9">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Kategori Ad : </td>
                <td>
                    <asp:TextBox ID="tb_kategoriad" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori Resim : </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btn_ekle" runat="server" CssClass="fb8" Height="34px" Text="Ekle" Width="50px" OnClick="btn_ekle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
