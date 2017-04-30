<?xml version="1.0" encoding="UTF-8"?>
<!-- Vrettos Georgios 
This XSL document is made in order to create a JSON output of the original XML file "settings.xml" -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>

    <xsl:template match="/settings">
            {
                "my_profile":
                {
                    "photos":
                    {
                            "current_photo":
                            [
                                <xsl:for-each select = "my_profile/photos/current_photo/photo">
                                {
                                    "pid": "<xsl:value-of select="@pid"/>",
                                    "size": "<xsl:value-of select="@size50"/>"
                                }<xsl:if test="position() != last()">,</xsl:if>
                                </xsl:for-each>
                            ],
                            "other_photos":
                            [
                                <xsl:for-each select = "my_profile/photos/other_photos/photo">
                                {
                                    "pid": "<xsl:value-of select="@pid"/>",
                                    "size": "<xsl:value-of select="@size50"/>"
                                }<xsl:if test="position() != last()">,</xsl:if>
                                </xsl:for-each>
                            ]
                    },
                    "name": "<xsl:value-of select="my_profile/name"/>",
                    "birthday":
                    {
                        "year":"<xsl:value-of select="my_profile/birthday/year"/>",
                        "month":"<xsl:value-of select="my_profile/birthday/month"/>",
                        "day":"<xsl:value-of select="my_profile/birthday/day"/>"
                    },
                    "gender": "<xsl:value-of select="my_profile/gender"/>",
                    "location":
                    {  
                        "country":"<xsl:value-of select="my_profile/location/country"/>",
                        "city":"<xsl:value-of select="my_profile/location/city"/>"
                    },
                    "weight": "<xsl:value-of select="my_profile/weight"/>",
                    "url": "<xsl:value-of select="my_profile/url"/>",
                    "bio": "<xsl:value-of select="my_profile/bio"/>"   
                },
                "my_account":
                {
                    "member_since":
                    {
                        "year":"<xsl:value-of select="my_account/member_since/year"/>",
                        "month":"<xsl:value-of select="my_account/member_since/month"/>",
                        "day":"<xsl:value-of select="my_account/member_since/day"/>"
                    },
                    "membership_status": "<xsl:value-of select="my_account/membership_status"/>"
                },
                "display_preferences":
                {
                    "units":"<xsl:value-of select="display_preferences/units"/>",
                    "default_sport":"<xsl:value-of select="display_preferences/default_sport"/>",
                    "default_highlight_image":"<xsl:value-of select="display_preferences/default_highlight_image"/>"
                },
                "privacy":
                {
                    "enhaced_privacy":"<xsl:value-of select="privacy/log_visibility"/>",
                    "flyby_visibility":"<xsl:value-of select="privacy/flyby_visibility"/>",
                    "log_visibility":"<xsl:value-of select="privacy/log_visibility"/>",
                    "hidden_locations":
                    [
                        <xsl:for-each select = "privacy/hidden_locations/location">
                        {
                            "location_id":"<xsl:value-of select="@lid"/>",
                            "street":"<xsl:value-of select="street"/>",
                            "number":"<xsl:value-of select="number"/>",
                            "zip":"<xsl:value-of select="zip"/>"
                        }<xsl:if test="position() != last()">,</xsl:if>
                        </xsl:for-each>
                    ],
                    "private_activities":"<xsl:value-of select="privacy/private_activities"/>",
                    "hidden_from_leaderboards":"<xsl:value-of select="privacy/hidden_from_leaderboards"/>",
                    "data_usage":"<xsl:value-of select="privacy/data_usage"/>"
                },
                "email_notifications":
                {
                    "club_email":"<xsl:value-of select="email_notifications/club_email"/>",
                    "social_email":"<xsl:value-of select="email_notifications/social_email"/>",
                    "segment_email":"<xsl:value-of select="email_notifications/segment_email"/>",
                    "newsletter":"<xsl:value-of select="email_notifications/newsletter"/>",
                    "language":"<xsl:value-of select="email_notifications/language"/>"
                },
                "my_gear":
                {
                    "my_bikes":
                    [
                        <xsl:for-each select = "my_gear/my_bikes/bike">
                        {
                            "bike_id":"<xsl:value-of select="@bike_id"/>",
                            "bike_status":"<xsl:value-of select="@bike_status"/>",
                            "name":"<xsl:value-of select="name"/>",
                            "kilometers":"<xsl:value-of select="kilometers"/>"
                        }<xsl:if test="position() != last()">,</xsl:if>
                        </xsl:for-each>
                    ],
                    "my_shoes":
                    [
                        <xsl:for-each select = "my_gear/my_shoes/shoe">
                        {
                            "shoe_id":"<xsl:value-of select="@shoe_id"/>",
                            "shoe_status":"<xsl:value-of select="@shoe_status"/>",
                            "name":"<xsl:value-of select="name"/>",
                            "kilometers":"<xsl:value-of select="kilometers"/>"
                        }<xsl:if test="position() != last()">,</xsl:if>
                        </xsl:for-each>
                    ]
                },
                "my_apps":
                [
                    <xsl:for-each select = "my_apps/app">
                        {
                            "app_id":"<xsl:value-of select="@app_id"/>",
                            "access":"<xsl:value-of select="@access"/>",
                            "name":"<xsl:value-of select="name"/>"
                        }<xsl:if test="position() != last()">,</xsl:if>
                    </xsl:for-each>
                ],
                "social_connections":
                [
                    <xsl:for-each select = "social_connections/service">
                        {
                            "service_id":"<xsl:value-of select="@service_id"/>",
                            "service_status":"<xsl:value-of select="@service_status"/>",
                            "name":"<xsl:value-of select="name"/>",
                            "icon":
                            {
                                "icon_id":"<xsl:value-of select="icon/@icid"/>",
                                "size":"<xsl:value-of select="icon/@size10"/>"
                            }
                        }<xsl:if test="position() != last()">,</xsl:if>
                    </xsl:for-each>
                ]
            }
    </xsl:template>

</xsl:stylesheet>
