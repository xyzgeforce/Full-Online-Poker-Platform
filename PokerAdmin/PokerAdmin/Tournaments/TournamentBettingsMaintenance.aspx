<%@ Register TagPrefix="GFC" Namespace="Common.WebControls" Assembly = "Common" %>
<%@ Register TagPrefix="CDC" TagName="PageFooter" Src="../Controls/PageFooter.ascx" %>
<%@ Register TagPrefix="CDC" TagName="PageHeader" Src="../Controls/PageHeader.ascx" %>
<%@ Register TagPrefix="GPC" TagName="SmartGridPager" Src="../Controls/SmartGridPager.ascx" %>
<%@ Register TagPrefix="CBC" TagName="ButtonImage" Src="../Controls/ButtonImage.ascx" %>
<%@ Page language="c#" Codebehind="TournamentBettingsMaintenance.aspx.cs" AutoEventWireup="false" Inherits="Admin.Tournaments.TournamentBettingsMaintenance" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Tournament Bettings Maintenance</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="GameProcessMaintenance" method="post" runat="server">
			<CDC:PageHeader ID="oPageHeader" runat="server" />
			<table width="100%">
				<tr>
					<td align="center" height="27">
						<table align="center" width="53%" border="0">
							<tr>
								<td align="center"><CBC:ButtonImage ID="btnAdd" Text="Add" OnClick="btnAdd_Click" runat="server" /></td>
								<td align="center"><CBC:ButtonImage ID="btnDelete" Text="Delete" OnClick="btnDelete_Click" runat="server" /></td>
								<td align="center"><CBC:ButtonImage ID="btnSearchAgain" Text="SearchAgain" OnClick="btnSearchAgain_Click" runat="server" /></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="center">
						<GFC:gridfilter id="oFilter" runat="server" MoveHeader="true" Grid="oGrid">
							<GFC:FilterItem></GFC:FilterItem>
							<GFC:FilterItem id="edt1" GridSourceParameter="@Name" Type="Edit"></GFC:FilterItem>
						</GFC:gridfilter>
						<asp:datagrid id="oGrid" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" CellPadding="2"
							BorderColor="#3399FF" CssClass="cssReport cssTextMain" PageSize="50">
							<AlternatingItemStyle CssClass="cssReportItemOdd"></AlternatingItemStyle>
							<ItemStyle CssClass="cssReportItem"></ItemStyle>
							<HeaderStyle CssClass="cssReportHeader"></HeaderStyle>
							<Columns>
								<asp:TemplateColumn>
									<HeaderStyle Width="30px"></HeaderStyle>
									<ItemTemplate>
										<%#GetCheckBoxHtml(Container.DataItem)%>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:HyperLinkColumn HeaderText="Name"></asp:HyperLinkColumn>
							</Columns>
						</asp:datagrid>
						<GPC:SmartGridPager ID="oSGridPager" Grid="oGrid" GridFilter="oFilter" CssClass="cssReport" ItemCssClass="cssGridPagerItem"
							EditCssClass="cssGridPagerEdit" runat="server" />
					</td>
				</tr>
			</table>
			<CDC:PageFooter ID="oPageFooter" runat="server" />
		</form>
	</body>
</HTML>
