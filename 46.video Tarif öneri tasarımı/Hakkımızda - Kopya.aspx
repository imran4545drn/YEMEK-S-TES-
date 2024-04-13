<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkımızda.aspx.cs" Inherits="Hakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

        <asp:DataList ID="DataList2" runat="server" Width="425px" style="text-align: center">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>' style="font-style: italic; text-align: center"></asp:Label>
        </ItemTemplate>
    </asp:DataList>
        <br />
    <asp:Image ID="Image1" runat="server" Height="159px" Width="445px" ImageUrl="~/Resim/how-to-write-a-blog-post.jpeg" />
</asp:Content>

