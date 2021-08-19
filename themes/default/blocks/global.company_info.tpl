<!-- BEGIN: main -->
<hr class="hr-light">
<div class="info-footer py-5">
<div class="container">
<div class="row gy-4">
<div class="col-sm-4">
<div class="info-fcontainer">
<div class="infof-icon">
<i class="v-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M12 2a8 8 0 00-8 7.92c0 5.48 7.05 11.58 7.35 11.84a1 1 0 001.3 0C13 21.5 20 15.4 20 9.92A8 8 0 0012 2zm0 17.65c-1.67-1.59-6-6-6-9.73a6 6 0 0112 0c0 3.7-4.33 8.14-6 9.73z"/><path d="M12 6a3.5 3.5 0 103.5 3.5A3.5 3.5 0 0012 6zm0 5a1.5 1.5 0 111.5-1.5A1.5 1.5 0 0112 11z"/></svg></i>
</div>
<div class="infof-content">
<h3>{LANG.company_address}</h3>
<!-- BEGIN: company_address --><p>{DATA.company_address}</p><!-- END: company_address -->
</div>
</div>
</div>
<div class="col-sm-4">
<div class="info-fcontainer">
<div class="infof-icon">
<i class="v-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M17.4 22A15.42 15.42 0 012 6.6 4.6 4.6 0 016.6 2a3.94 3.94 0 01.77.07 3.79 3.79 0 01.72.18 1 1 0 01.65.75l1.37 6a1 1 0 01-.26.92c-.13.14-.14.15-1.37.79a9.91 9.91 0 004.87 4.89c.65-1.24.66-1.25.8-1.38a1 1 0 01.92-.26l6 1.37a1 1 0 01.72.65 4.34 4.34 0 01.19.73 4.77 4.77 0 01.06.76A4.6 4.6 0 0117.4 22zM6.6 4A2.61 2.61 0 004 6.6 13.41 13.41 0 0017.4 20a2.61 2.61 0 002.6-2.6v-.33L15.36 16l-.29.55c-.45.87-.78 1.5-1.62 1.16a11.85 11.85 0 01-7.18-7.21c-.36-.78.32-1.14 1.18-1.59L8 8.64 6.93 4z"/></svg></i>
</div>
<div class="infof-content">
<h3>{LANG.company_phone}</h3>
<!-- BEGIN: company_phone -->
<p><!-- BEGIN: item --><!-- BEGIN: comma --> | <!-- END: comma --><!-- BEGIN: href --><a href="tel:{PHONE.href}"><!-- END: href --><span>{PHONE.number}</span><!-- BEGIN: href2 --></a><!-- END: href2 --><!-- END: item --></p>
<!-- END: company_phone -->
</div>
</div>
</div>
<div class="col-sm-4">
<div class="info-fcontainer">
<div class="infof-icon">
<i class="v-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M19 4H5a3 3 0 00-3 3v10a3 3 0 003 3h14a3 3 0 003-3V7a3 3 0 00-3-3zm-.67 2L12 10.75 5.67 6zM19 18H5a1 1 0 01-1-1V7.25l7.4 5.55a1 1 0 00.6.2 1 1 0 00.6-.2L20 7.25V17a1 1 0 01-1 1z"/></svg></i>
</div>
<div class="infof-content">
<h3>{LANG.company_email}</h3>
<!-- BEGIN: company_email -->
<p><!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="mailto:{EMAIL}"><span>{EMAIL}</span></a><!-- END: item --></p>
<!-- END: company_email -->
</div>
</div>
</div>
</div>
</div>
</div>
<script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "LocalBusiness",
    "image": [
      "{SITE_LOGO}",
      "{SITE_BANNER}"
    ],
    "@id": "{NV_REAL_DOMAIN}",
    "logo": "{SITE_LOGO}",
    "name": "{SCHEMA_NAME}",
    "address": {
      "@type": "PostalAddress",
      "streetAddress": "{SCHEMA_ADDRESS}"
    },
    "url": "{NV_REAL_DOMAIN}",
    "priceRange": "{SCHEMA_PRICE_RANGE}",
    "telephone": "{SCHEMA_PHONE}",
    "email": "{SCHEMA_EMAIL}",
    "openingHoursSpecification": [{
        "@type": "OpeningHoursSpecification",
        "dayOfWeek": [
          "Monday",
          "Tuesday",
          "Wednesday",
          "Thursday",
          "Friday",
          "Saturday",
          "Sunday"
        ],
        "opens": "00:00",
        "closes": "00:00"
      }
    ]
  }
</script>
<!-- END: main -->