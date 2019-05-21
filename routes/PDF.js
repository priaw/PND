
var PSPDFKit = require("pspdfkit");

function PDF (req,res){
    PSPDFKit.load({
  container: "#pspdfkit",
  pdf: "<pdf-file-path>",
  licenseKey: "YOUR_LICENSE_KEY_GOES_HERE"
})
  .then(function(instance) {
    console.log("PSPDFKit for Web loaded", instance);
  })
  .catch(function(error) {
    console.error(error.message);
  });
}


  router.get('/pdf', PDF);
module.exports = router;