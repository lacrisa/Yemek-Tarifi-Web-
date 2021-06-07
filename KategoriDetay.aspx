<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifleri.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style9 {
            width: 100%;
        }

        .auto-style11 {
            background-color: #FF9999;
        }
    
        .auto-style10 {
            font-size: x-large;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="447px">
    <ItemTemplate>
        <table class="auto-style9">
            <tr>
                <td class="auto-style11"><strong><a href='<%# Eval("YemekId", "YemekDetay.aspx?YemekId={0}") %>'>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td><strong>Malzemeler :</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Tarifi :</strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Eklenme Tarihi :
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>' ForeColor="White"></asp:Label>
                        &nbsp;- <em>Puan</em> : <em>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>' ForeColor="White"></asp:Label>
                    </em>&nbsp;- Kategori :
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("KategoriId") %>' ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
