<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JobSearch._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--
        1. Job Title
        2. Job Ad
        3. Experience Level -- Intermediate, Senior
        4. Job Type -- Remove, Onsite, Hybrid
        5. Location -- State dropdown list box
        6. Company Name
        7. Salary Information From/To
        8. Date Applied

        9. Submit 
        10. Clear

    -->
    <link href="Content/Content.css" rel="stylesheet" />

    <table class="tableAd">
        <tr>
            <td>
                <asp:Label ID="lblJobTitle" runat="server" Text="Job Title" CssClass="labelAd"></asp:Label>&nbsp;
            </td>
            <td>
                <asp:TextBox ID="txtJobTitle" runat="server"></asp:TextBox>&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblJobAd" runat="server" Text="Job Ad" CssClass="labelAd"></asp:Label>&nbsp;
            </td>
            <td>
                <asp:TextBox ID="txtJobAd" runat="server"></asp:TextBox>&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblExperienceLevel" runat="server" Text="Experience Level" CssClass="labelAd"></asp:Label>&nbsp;
            </td>
            <td>
                <asp:DropDownList ID="ddlExperienceLevel" runat="server" AutoPostBack="True" DataSourceID="ExperienceLevel" DataTextField="ExperienceLevel" DataValueField="ExperienceLevel"></asp:DropDownList>
                <asp:SqlDataSource ID="ExperienceLevel" runat="server" ConnectionString="<%$ ConnectionStrings:JobSearchConnectionString %>" SelectCommand="SELECT [ExperienceLevel] FROM [ExperienceLevel]"></asp:SqlDataSource>
                &nbsp;
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
           <td>
               <asp:Label ID="lblJobType" runat="server" Text="Job Type" CssClass="labelAd"></asp:Label>&nbsp;
           </td>
           <td>
               <asp:DropDownList ID="ddlJobType" runat="server" AutoPostBack="True" DataSourceID="JobType" DataTextField="JobType" DataValueField="JobType"></asp:DropDownList>
               <asp:SqlDataSource ID="JobType" runat="server" ConnectionString="<%$ ConnectionStrings:JobSearchConnectionString3 %>" SelectCommand="SELECT [JobType] FROM [JobType]"></asp:SqlDataSource>
               &nbsp;
           </td>
           <td>&nbsp;</td>
       </tr>
        <tr>
           <td>
               <asp:Label ID="lblLocation" runat="server" Text="Location" CssClass="labelAd"></asp:Label>&nbsp;
           </td>
           <td>
               <asp:DropDownList ID="ddlLocation" runat="server" AutoPostBack="True" DataSourceID="States" DataTextField="State" DataValueField="State"></asp:DropDownList>
               <asp:SqlDataSource ID="States" runat="server" ConnectionString="<%$ ConnectionStrings:JobSearchConnectionString2 %>" SelectCommand="SELECT [State] FROM [States]"></asp:SqlDataSource>
               &nbsp;
           </td>
       </tr>
        <tr>
           <td>
               <asp:Label ID="lblCompanyName" runat="server" Text="Company Name" CssClass="labelAd"></asp:Label>&nbsp;
           </td>
           <td>
               <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox>
           </td>
           <td>&nbsp;</td>
       </tr> 
        <tr>
           <td>
               <asp:Label ID="lblSalaryInfoFrom" runat="server" Text="Salary Info From" CssClass="labelAd"></asp:Label>&nbsp;
           </td>
           <td>
               <asp:TextBox ID="txtSalaryInfoFrom" runat="server"></asp:TextBox>&nbsp;
           </td>
       </tr>
        <tr>
           <td>
               <asp:Label ID="lblSalaryInfoTo" runat="server" Text="Salary Info To" CssClass="labelAd"></asp:Label>&nbsp;
           </td>
           <td>
               <asp:TextBox ID="txtSalaryInfoTo" runat="server"></asp:TextBox>&nbsp;
           </td>
       </tr>
        <tr>
           <td>
               <asp:Label ID="lblDateApplied" runat="server" Text="Date Applied" CssClass="labelAd"></asp:Label>&nbsp;
           </td>
           <td>
               <asp:TextBox ID="txtDateApplied" runat="server" TextMode="Date"></asp:TextBox>
           </td>
       </tr>
        <tr>
           <td>
               <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
           </td>
           <td>
               <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click"/>
           </td>
       </tr>
    </table>
</asp:Content>
