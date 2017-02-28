package routers

import (
	"github.com/astaxie/beego"
)

func init() {

	beego.GlobalControllerRouter["ingresoapi/controllers:ConceptoController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:ConceptoController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:ConceptoController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:ConceptoController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:ConceptoController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:ConceptoController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:ConceptoController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:ConceptoController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:ConceptoController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:ConceptoController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:CuentaBancariaController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:CuentaBancariaController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:CuentaBancariaController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:CuentaBancariaController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:CuentaBancariaController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:CuentaBancariaController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:CuentaBancariaController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:CuentaBancariaController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:CuentaBancariaController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:CuentaBancariaController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:FormaIngresoController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:FormaIngresoController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:FormaIngresoController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:FormaIngresoController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:FormaIngresoController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:FormaIngresoController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:FormaIngresoController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:FormaIngresoController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:FormaIngresoController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:FormaIngresoController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:InformacionPersonaNaturalController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:InformacionPersonaNaturalController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:InformacionPersonaNaturalController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:InformacionPersonaNaturalController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:InformacionPersonaNaturalController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:InformacionPersonaNaturalController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:InformacionPersonaNaturalController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:InformacionPersonaNaturalController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:InformacionPersonaNaturalController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:InformacionPersonaNaturalController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:IngresoController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:IngresoController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:IngresoController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:IngresoController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:IngresoController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:IngresoController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:IngresoController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:IngresoController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:IngresoController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:IngresoController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:IngresoRubroController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:IngresoRubroController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:IngresoRubroController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:IngresoRubroController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:IngresoRubroController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:IngresoRubroController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:IngresoRubroController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:IngresoRubroController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:IngresoRubroController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:IngresoRubroController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:RubroController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:RubroController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:RubroController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:RubroController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:RubroController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:RubroController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:RubroController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:RubroController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			Params: nil})

	beego.GlobalControllerRouter["ingresoapi/controllers:RubroController"] = append(beego.GlobalControllerRouter["ingresoapi/controllers:RubroController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			Params: nil})

}
