local parserName = "Lua O365"
local parserVersion = "2018.08.10.1"

local O365 = nw.createParser(parserName, "Lua O365")

nw.logDebug(parserName .. " " .. parserVersion)

local summary = {["parserName"] = parserName, ["parserVersion"] = parserVersion}

summary.parserDetails = [=[
marks Office365 traffic as whitelisted as well as the product name detected
]=]

summary.dependencies = {
    ["parsers"] = {
        "NETWORK",
        "FeedParser"
    },
}

summary.conflicts = {
    ["parsers"] = {
        ""
    }
}

summary.keyUsage = {
    ["filter"]              = "'whitelist','office365','MS Product Name'",
}

summary.investigation = {
    ["filter"] = {
        ["office365"] = {
            ["filter"] = {
                "whitelist",
            },
            ["inv.category"] = {
                "whitelist",
            },
            ["feed.name"] = "lua_O365",
            ["reason"] = ""
        },
    },
}

summary.liveTags = {
    "whitelist",
}

--[[
    VERSION
        2018.08.11.1  eric.partington@rsa.com  11.1.0.0-8987.3  UDM

    OPTIONS

        none


    IMPLEMENTATION

        Relies on meta registered by other parsers.


    TODO

        none?

--]]

--local debugParser = require('debugParser')

O365:setKeys({
    nwlanguagekey.create("filter"),
})

local O365Hosts = ({
["aadrm.com"] = "office365",
["acompli.net"] = "office365",
["adhybridhealth.azure.com"] = "office365",
["adl.windows.com"] = "office365",
["api.microsoftstream.com"] = "office365",
["appex.bing.com"] = "office365",
["appex-rf.msn.com"] = "office365",
["aria.microsoft.com"] = "office365",
["assets-yammer.com"] = "office365",
["azureedge.net"] = "office365",
["azurerms.com"] = "office365",
["blob.core.windows.net"] = "office365",
["broadcast.skype.com"] = "office365",
["cdn.office.net"] = "office365",
["cloudapp.net"] = "office365",
["dc.trouter.io"] = "office365",
["entrust.net"] = "office365",
["eu.portal.cloudappsecurity.com"] = "office365",
["eu2.portal.cloudappsecurity.com"] = "office365",
["geotrust.com"] = "office365",
["helpshift.com"] = "office365",
["hockeyapp.net"] = "office365",
["itunes.apple.com"] = "office365",
["keydelivery.mediaservices.windows.net"] = "office365",
["localytics.com"] = "office365",
["log.optimizely.com"] = "office365",
["lync.com"] = "office365",
["mail.protection.outlook.com"] = "office365",
["manage.office.com"] = "office365",
["media.azure.net"] = "office365",
["microsoft.com"] = "office365",
["microsoftonline.com"] = "office365",
["microsoftonline-p.com"] = "office365",
["microsoftonline-p.net"] = "office365",
["msappproxy.net"] = "office365",
["msecnd.net"] = "office365",
["msedge.net"] = "office365",
["msocdn.com"] = "office365",
["mstea.ms"] = "office365",
["notification.api.microsoftstream.com"] = "office365",
["o365weve.com"] = "office365",
["office.com"] = "office365",
["office.net"] = "office365",
["office365.com"] = "office365",
["omniroot.com"] = "office365",
["onenote.com"] = "office365",
["onmicrosoft.com"] = "office365",
["outlook.com"] = "office365",
["outlook.office.com"] = "office365",
["phonefactor.net"] = "office365",
["portal.cloudappsecurity.com"] = "office365",
["protection.office.com"] = "office365",
["protection.outlook.com"] = "office365",
["public-trust.com"] = "office365",
["queue.core.windows.net"] = "office365",
["search.production.apac.trafficmanager.net"] = "office365",
["search.production.emea.trafficmanager.net"] = "office365",
["search.production.us.trafficmanager.net"] = "office365",
["secure.skypeassets.com"] = "office365",
["servicebus.windows.net"] = "office365",
["sfbassets.com"] = "office365",
["sharepoint.com"] = "office365",
["sharepointonline.com"] = "office365",
["skype.com"] = "office365",
["skypeforbusiness.com"] = "office365",
["staffhub.office.com"] = "office365",
["store.core.windows.net"] = "office365",
["streaming.mediaservices.windows.net"] = "office365",
["svc.ms"] = "office365",
["symcb.com"] = "office365",
["symcd.com"] = "office365",
["table.core.windows.net"] = "office365",
["teams.microsoft.com"] = "office365",
["tenor.com"] = "office365",
["urlp.sfbassets.com"] = "office365",
["us.portal.cloudappsecurity.com"] = "office365",
["us2.portal.cloudappsecurity.com"] = "office365",
["us3.portal.cloudappsecurity.com"] = "office365",
["users.storage.live.com"] = "office365",
["verisign.com"] = "office365",
["verisign.net"] = "office365",
["windows.net"] = "office365",
["yammer.com"] = "office365",
["yammerusercontent.com"] = "office365",
["*broadcast.officeapps.live.com"] = "office365",
["*cdn.onenote.net"] = "office365",
["*excel.officeapps.live.com"] = "office365",
["*-files.sharepoint.com"] = "office365",
["*-my.sharepoint.com"] = "office365",
["*-myfiles.sharepoint.com"] = "office365",
["*onenote.officeapps.live.com"] = "office365",
["*powerpoint.officeapps.live.com"] = "office365",
["*view.officeapps.live.com"] = "office365",
["*visio.officeapps.live.com"] = "office365",
["*word-edit.officeapps.live.com"] = "office365",
["*word-view.officeapps.live.com"] = "office365",
["a.wunderlist.com"] = "office365",
["account.activedirectory.windowsazure.com"] = "office365",
["account.live.com"] = "office365",
["account.office.net"] = "office365",
["accounts.accesscontrol.windows.net"] = "office365",
["accounts.google.com"] = "office365",
["acompli.helpshift.com"] = "office365",
["acompli-android-logs.s3.amazonaws.com"] = "office365",
["activation.sls.microsoft.com"] = "office365",
["ad.atdmt.com"] = "office365",
["admin.microsoft.com"] = "office365",
["admin.onedrive.com"] = "office365",
["adminwebservice.microsoftonline.com"] = "office365",
["agent.office.net"] = "office365",
["aia.entrust.net"] = "office365",
["ajax.aspnetcdn.com"] = "office365",
["ajax.microsoft.com"] = "office365",
["aka.ms"] = "office365",
["amp.azure.net"] = "office365",
["amsglob0cdnstream11.azureedge.net"] = "office365",
["amsglob0cdnstream12.azureedge.net"] = "office365",
["analytics.localytics.com"] = "office365",
["apc.delve.office.com"] = "office365",
["api.diagnostics.office.com"] = "office365",
["api.dropboxapi.com"] = "office365",
["api.localytics.com"] = "office365",
["api.login.microsoftonline.com"] = "office365",
["api.login.yahoo.com"] = "office365",
["api.meetup.com"] = "office365",
["api.microsoftstream.com"] = "office365",
["api.office.com"] = "office365",
["api.passwordreset.microsoftonline.com"] = "office365",
["apis.live.net"] = "office365",
["app.adjust.com"] = "office365",
["app.box.com"] = "office365",
["appexsin.stb.s-msn.com"] = "office365",
["apps.identrust.com"] = "office365",
["appsforoffice.microsoft.com"] = "office365",
["asl.configure.office.com"] = "office365",
["assets.onestore.ms"] = "office365",
["aus.delve.office.com"] = "office365",
["auth.gfx.ms"] = "office365",
["autodiscover-outlook.com"] = "office365",
["autologon.microsoftazuread-sso.com"] = "office365",
["az416426.vo.msecnd.net"] = "office365",
["az826701.vo.msecnd.net"] = "office365",
["becws.microsoftonline.com"] = "office365",
["bit.ly"] = "office365",
["broadcast.skype.com"] = "office365",
["browser.pipe.aria.microsoft.com"] = "office365",
["by.uservoice.com"] = "office365",
["c.bing.com"] = "office365",
["c.bing.net"] = "office365",
["c.live.com"] = "office365",
["c.microsoft.com"] = "office365",
["c1.microsoft.com"] = "office365",
["cacert.a.omniroot.com"] = "office365",
["cacert.omniroot.com"] = "office365",
["cacerts.digicert.com"] = "office365",
["can.delve.office.com"] = "office365",
["ccs.login.microsoftonline.com"] = "office365",
["ccs-sdf.login.microsoftonline.com"] = "office365",
["cdn.odc.officeapps.live.com"] = "office365",
["cdn.onenote.net"] = "office365",
["cdn.optimizely.com"] = "office365",
["cdn.sharepointonline.com"] = "office365",
["cdp1.public-trust.com"] = "office365",
["cert.int-x3.letsencrypt.org"] = "office365",
["cl2.apple.com"] = "office365",
["click.email.microsoftonline.com"] = "office365",
["client.hip.live.com"] = "office365",
["clientconfig.microsoftonline-p.net"] = "office365",
["com.microsoft.office.outlook.dev"] = "office365",
["companymanager.microsoftonline.com"] = "office365",
["compass-ssl.microsoft.com"] = "office365",
["connect.facebook.net"] = "office365",
["contentstorage.osi.office.net"] = "office365",
["crl.entrust.net"] = "office365",
["crl.globalsign.com"] = "office365",
["crl.globalsign.net"] = "office365",
["crl.identrust.com"] = "office365",
["crl.microsoft.com"] = "office365",
["crl3.digicert.com"] = "office365",
["crl4.digicert.com"] = "office365",
["cus-000.tasks.osi.office.net"] = "office365",
["cus-odc.officeapps.live.com"] = "office365",
["cus-roaming.officeapps.live.com"] = "office365",
["d.docs.live.net"] = "office365",
["data.flurry.com"] = "office365",
["dc.applicationinsights.microsoft.com"] = "office365",
["dc.services.visualstudio.com"] = "office365",
["dc2.client.hip.live.com"] = "office365",
["delve.office.com"] = "office365",
["device.login.microsoftonline.com"] = "office365",
["dgps.support.microsoft.com"] = "office365",
["directory.services.live.com"] = "office365",
["docs.live.net"] = "office365",
["docs.microsoft.com"] = "office365",
["domains.live.com"] = "office365",
["ea-000.forms.osi.office.net"] = "office365",
["ea-000.ocws.officeapps.live.com"] = "office365",
["ea-000.tasks.osi.office.net"] = "office365",
["ea-roaming.officeapps.live.com"] = "office365",
["ecn.dev.virtualearth.net"] = "office365",
["enterpriseregistration.windows.net"] = "office365",
["en-us.appex-rf.msn.com"] = "office365",
["eur.delve.office.com"] = "office365",
["eus-000.www.sway.com"] = "office365",
["eus-001.www.sway.com"] = "office365",
["eus-002.www.sway.com"] = "office365",
["eus-003.www.sway.com"] = "office365",
["eus-004.www.sway.com"] = "office365",
["eus-005.www.sway.com"] = "office365",
["eus-006.www.sway.com"] = "office365",
["eus-007.www.sway.com"] = "office365",
["eus-008.www.sway.com"] = "office365",
["eus-009.www.sway.com"] = "office365",
["eus-00a.www.sway.com"] = "office365",
["eus-00b.www.sway.com"] = "office365",
["eus-00c.www.sway.com"] = "office365",
["eus-00d.www.sway.com"] = "office365",
["eus-00e.www.sway.com"] = "office365",
["eus2-000.forms.osi.office.net"] = "office365",
["eus2-000.ocws.officeapps.live.com"] = "office365",
["eus2-roaming.officeapps.live.com"] = "office365",
["eus-odc.officeapps.live.com"] = "office365",
["eus-www.sway.com"] = "office365",
["eus-www.sway-cdn.com"] = "office365",
["eus-www.sway-extensions.com"] = "office365",
["eus-zzz.tasks.osi.office.net"] = "office365",
["evintl-aia.verisign.com"] = "office365",
["evintl-crl.verisign.com"] = "office365",
["evintl-ocsp.verisign.com"] = "office365",
["evsecure-aia.verisign.com"] = "office365",
["evsecure-crl.verisign.com"] = "office365",
["evsecure-ocsp.verisign.com"] = "office365",
["excelbingmap.firstpartyapps.oaspapps.com"] = "office365",
["excelcs.officeapps.live.com"] = "office365",
["firstpartyapps.oaspapps.com"] = "office365",
["foodanddrink.services.appex.bing.com"] = "office365",
["forms.microsoft.com"] = "office365",
["forms.office.com"] = "office365",
["g.live.com"] = "office365",
["gbr.delve.office.com"] = "office365",
["go.microsoft.com"] = "office365",
["graph.facebook.com"] = "office365",
["graph.microsoft.com"] = "office365",
["graph.windows.net"] = "office365",
["groupsapi2-prod.outlookgroups.ms"] = "office365",
["groupsapi3-prod.outlookgroups.ms"] = "office365",
["groupsapi4-prod.outlookgroups.ms"] = "office365",
["groupsapi-prod.outlookgroups.ms"] = "office365",
["hip.microsoftonline-p.net"] = "office365",
["hipservice.microsoftonline.com"] = "office365",
["home.office.com"] = "office365",
["ind.delve.office.com"] = "office365",
["insertmedia.bing.office.net"] = "office365",
["isrg.trustid.ocsp.identrust.com"] = "office365",
["jpn.delve.office.com"] = "office365",
["kor.delve.office.com"] = "office365",
["lam.delve.office.com"] = "office365",
["liverdcxstorage.blob.core.windowsazure.com"] = "office365",
["login.live.com"] = "office365",
["login.microsoft.com"] = "office365",
["login.microsoftonline.com"] = "office365",
["login.microsoftonline-p.com"] = "office365",
["login.windows.net"] = "office365",
["login.windows-ppe.net"] = "office365",
["logincert.microsoftonline.com"] = "office365",
["loginex.microsoftonline.com"] = "office365",
["login-us.microsoftonline.com"] = "office365",
["m.facebook.com"] = "office365",
["m.webtrends.com"] = "office365",
["mail.google.com"] = "office365",
["mam.manage.microsoft.com"] = "office365",
["manage.office.com"] = "office365",
["management.azure.com"] = "office365",
["mem.gfx.ms"] = "office365",
["mlccdn.blob.core.windows.net"] = "office365",
["mlccdnprod.azureedge.net"] = "office365",
["mobile.pipe.aria.microsoft.com"] = "office365",
["mrodevicemgr.officeapps.live.com"] = "office365",
["ms.tific.com"] = "office365",
["mscrl.microsoft.com"] = "office365",
["msdn.microsoft.com"] = "office365",
["mshrcstorageprod.blob.core.windows.net"] = "office365",
["nam.delve.office.com"] = "office365",
["ncus-000.ocws.officeapps.live.com"] = "office365",
["ncus-odc.officeapps.live.com"] = "office365",
["ncus-roaming.officeapps.live.com"] = "office365",
["neu-000.forms.osi.office.net"] = "office365",
["neu-000.ocws.officeapps.live.com"] = "office365",
["neu-000.tasks.osi.office.net"] = "office365",
["neu-odc.officeapps.live.com"] = "office365",
["neu-roaming.officeapps.live.com"] = "office365",
["nexus.microsoftonline-p.com"] = "office365",
["nexus.officeapps.live.com"] = "office365",
["nexusrules.officeapps.live.com"] = "office365",
["nps.onyx.azure.net"] = "office365",
["o15.officeredir.microsoft.com"] = "office365",
["ocos-office365-s2s.msedge.net"] = "office365",
["ocsa.officeapps.live.com"] = "office365",
["ocsp.digicert.com"] = "office365",
["ocsp.entrust.net"] = "office365",
["ocsp.globalsign.com"] = "office365",
["ocsp.int-x3.letsencrypt.org"] = "office365",
["ocsp.msocsp.com"] = "office365",
["ocsp.omniroot.com"] = "office365",
["ocsp2.globalsign.com"] = "office365",
["ocspx.digicert.com"] = "office365",
["ocsredir.officeapps.live.com"] = "office365",
["ocws.officeapps.live.com"] = "office365",
["odc.officeapps.live.com"] = "office365",
["odcsm.officeapps.live.com"] = "office365",
["office.live.com"] = "office365",
["office.microsoft.com"] = "office365",
["office15client.microsoft.com"] = "office365",
["office365servicehealthcommunications.cloudapp.net"] = "office365",
["officeapps.live.com"] = "office365",
["officecdn.microsoft.com"] = "office365",
["officecdn.microsoft.com.edgekey.net"] = "office365",
["officecdn.microsoft.com.edgesuite.net"] = "office365",
["officeclient.microsoft.com"] = "office365",
["officeimg.vo.msecnd.net"] = "office365",
["officepreviewredir.microsoft.com"] = "office365",
["officeredir.microsoft.com"] = "office365",
["ols.officeapps.live.com"] = "office365",
["omextemplates.content.office.net"] = "office365",
["oneclient.sfx.ms"] = "office365",
["outlook.office.com"] = "office365",
["outlook.office365.com"] = "office365",
["outlook.uservoice.com"] = "office365",
["p100-sandbox.itunes.apple.com"] = "office365",
["partnerservices.getmicrosoftkey.com"] = "office365",
["passwordreset.microsoftonline.com"] = "office365",
["peoplegraph.firstpartyapps.oaspapps.com"] = "office365",
["platform.linkedin.com"] = "office365",
["play.google.com"] = "office365",
["policykeyservice.dc.ad.msft.net"] = "office365",
["portal.microsoftonline.com"] = "office365",
["portal.office.com"] = "office365",
["pptcs.officeapps.live.com"] = "office365",
["privatecdn.sharepointonline.com"] = "office365",
["prod.firstpartyapps.oaspapps.com.akadns.net"] = "office365",
["prod.msocdn.com"] = "office365",
["products.office.com"] = "office365",
["protection.office.com"] = "office365",
["provisioningapi.microsoftonline.com"] = "office365",
["publiccdn.sharepointonline.com"] = "office365",
["quicktips.skypeforbusiness.com"] = "office365",
["r.office.microsoft.com"] = "office365",
["r1.res.office365.com"] = "office365",
["r3.res.office365.com"] = "office365",
["r3.res.outlook.com"] = "office365",
["r4.res.office365.com"] = "office365",
["res.delve.office.com"] = "office365",
["rink.hockeyapp.net"] = "office365",
["roaming.officeapps.live.com"] = "office365",
["s.ytimg.com"] = "office365",
["s0.assets-yammer.com"] = "office365",
["s1.symcb.com"] = "office365",
["s2.symcb.com"] = "office365",
["s3-us-west-2.amazonaws.com"] = "office365",
["sa.symcb.com"] = "office365",
["sas.office.microsoft.com"] = "office365",
["sas.officeapps.live.com"] = "office365",
["scsinstrument-ss-us.trafficmanager.net"] = "office365",
["scsquery-ss-asia.trafficmanager.net"] = "office365",
["scsquery-ss-eu.trafficmanager.net"] = "office365",
["scsquery-ss-us.trafficmanager.net"] = "office365",
["scus-000.ocws.officeapps.live.com"] = "office365",
["scus-odc.officeapps.live.com"] = "office365",
["scus-roaming.officeapps.live.com"] = "office365",
["sd.symcb.com"] = "office365",
["sdfpilot.outlook.com"] = "office365",
["sdk.hockeyapp.net"] = "office365",
["sea-000.tasks.osi.office.net"] = "office365",
["sea-odc.officeapps.live.com"] = "office365",
["sea-roaming.officeapps.live.com"] = "office365",
["secure.aadcdn.microsoftonline-p.com"] = "office365",
["secure.globalsign.com"] = "office365",
["secure.meetup.com"] = "office365",
["securescore.office.com"] = "office365",
["shellprod.msocdn.com"] = "office365",
["signup.live.com"] = "office365",
["signup.microsoft.com"] = "office365",
["site-cdn.onenote.net"] = "office365",
["skydrive.wns.windows.com"] = "office365",
["skypemaprdsitus.trafficmanager.net"] = "office365",
["smtp.office365.com"] = "office365",
["social.yahooapis.com"] = "office365",
["spoprod-a.akamaihd.net"] = "office365",
["sqm.microsoft.com"] = "office365",
["sr.symcb.com"] = "office365",
["sr.symcd.com"] = "office365",
["ssw.live.com"] = "office365",
["staffhub.ms"] = "office365",
["staffhub.office.com"] = "office365",
["staffhub.uservoice.com"] = "office365",
["staffhubweb.azureedge.net"] = "office365",
["stamp2.login.microsoftonline.com"] = "office365",
["static.sharepointonline.com"] = "office365",
["storage.live.com"] = "office365",
["store.office.com"] = "office365",
["su.symcb.com"] = "office365",
["su.symcd.com"] = "office365",
["suite.office.net"] = "office365",
["support.content.office.net"] = "office365",
["support.microsoft.com"] = "office365",
["support.office.com"] = "office365",
["sway.com"] = "office365",
["tasks.office.com"] = "office365",
["tds.configure.office.com"] = "office365",
["teams.microsoft.com"] = "office365",
["technet.microsoft.com"] = "office365",
["telemetry.remoteapp.windowsazure.com"] = "office365",
["telemetryservice.firstpartyapps.oaspapps.com"] = "office365",
["templates.office.com"] = "office365",
["templateservice.office.com"] = "office365",
["testconnectivity.microsoft.com"] = "office365",
["tse1.mm.bing.net"] = "office365",
["uci.officeapps.live.com"] = "office365",
["vassg142.crl.omniroot.com"] = "office365",
["vassg142.ocsp.omniroot.com"] = "office365",
["video.osi.office.net"] = "office365",
["videocontent.osi.office.net"] = "office365",
["videoplayercdn.osi.office.net"] = "office365",
["view.atdmt.com"] = "office365",
["vortex.data.microsoft.com"] = "office365",
["watson.microsoft.com"] = "office365",
["watson.telemetry.microsoft.com"] = "office365",
["weather.tile.appex.bing.com"] = "office365",
["web.localytics.com"] = "office365",
["web.microsoftstream.com"] = "office365",
["webanalytics.localytics.com"] = "office365",
["webshell.suite.office.com"] = "office365",
["wer.microsoft.com"] = "office365",
["weu-000.forms.osi.office.net"] = "office365",
["weu-000.ocws.officeapps.live.com"] = "office365",
["weu-000.tasks.osi.office.net"] = "office365",
["weu-odc.officeapps.live.com"] = "office365",
["weu-roaming.officeapps.live.com"] = "office365",
["wikipedia.firstpartyapps.oaspapps.com"] = "office365",
["wordcs.officeapps.live.com"] = "office365",
["wu.client.hip.live.com"] = "office365",
["wus-000.forms.osi.office.net"] = "office365",
["wus-000.ocws.officeapps.live.com"] = "office365",
["wus-000.tasks.osi.office.net"] = "office365",
["wus-000.www.sway.com"] = "office365",
["wus-001.www.sway.com"] = "office365",
["wus-002.www.sway.com"] = "office365",
["wus-003.www.sway.com"] = "office365",
["wus-004.www.sway.com"] = "office365",
["wus-005.www.sway.com"] = "office365",
["wus-006.www.sway.com"] = "office365",
["wus-007.www.sway.com"] = "office365",
["wus-008.www.sway.com"] = "office365",
["wus-009.www.sway.com"] = "office365",
["wus-00a.www.sway.com"] = "office365",
["wus-00b.www.sway.com"] = "office365",
["wus-00c.www.sway.com"] = "office365",
["wus-00d.www.sway.com"] = "office365",
["wus-00e.www.sway.com"] = "office365",
["wus-firstpartyapps.oaspapps.com"] = "office365",
["wus-odc.officeapps.live.com"] = "office365",
["wus-roaming.officeapps.live.com"] = "office365",
["wus-www.sway.com"] = "office365",
["wus-www.sway-cdn.com"] = "office365",
["wus-www.sway-extensions.com"] = "office365",
["www.acompli.com"] = "office365",
["www.bing.com"] = "office365",
["www.digicert.com"] = "office365",
["www.dropbox.com"] = "office365",
["www.evernote.com"] = "office365",
["www.google-analytics.com"] = "office365",
["www.googleapis.com"] = "office365",
["www.microsoft.com"] = "office365",
["www.office.com"] = "office365",
["www.onedrive.com"] = "office365",
["www.onenote.com"] = "office365",
["www.outlook.com"] = "office365",
["www.remoteapp.windowsazure.com"] = "office365",
["www.sway.com"] = "office365",
["www.wunderlist.com"] = "office365",
["www.youtube.com"] = "office365",
["xsi.outlook.com"] = "office365"
})

function O365:onHost(idx, host)
    host = string.lower(host)
    local match
	-- exact match
    if O365Hosts[host] then
        match = O365Hosts[host]
		--nw.logInfo(parserName .. " found exact " .. match)
    else
		-- substring match
        local tags = {}
		--nw.logInfo(parserName .. " substring test")
        for tag in string.gmatch(host, "[^.]+") do
            table.insert(tags, tag)
			--nw.logInfo(parserName .. " " .. tag)
        end
        for i = #tags, 2, -1 do
            local test = table.concat(tags, ".", i, #tags)
			--nw.logInfo(parserName .. " " .. test)
            if O365Hosts[test] then
                match = O365Hosts[test]
				--nw.logInfo(parserName .. " substring found " .. match)
                break
            end
        end
    end
	-- if we have a match on the host
    if match then
		-- write the value for the host found
		
		--nw.logInfo(parserName .. " write meta " .. match)
        nw.createMeta(self.keys["filter"], match)
		nw.createMeta(self.keys["filter"], "whitelist")
		nw.createMeta(self.keys["feed.name"], "lua_o365")
		
    end
end

O365:setCallbacks({
    [nwlanguagekey.create("alias.host")] = O365.onHost
})

return summary