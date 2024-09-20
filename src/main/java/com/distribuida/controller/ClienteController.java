package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.ClienteDao;
import com.distribuida.entities.Cliente;


@Controller
@RequestMapping("/clientes") // path principal
public class ClienteController {

	@Autowired
	private ClienteDao clienteDao;

	@GetMapping("/findAll") // path secundario
	public String findAll(Model model) {

		// try {
		List<Cliente> clientes = clienteDao.findAll();
		model.addAttribute("clientes", clientes);
		return "clientes-listar"; // nombre del formulario web EJ: cliente-lista.jsp
		// }catch (Exception e) {
		// TODO: handle exception
		// }

	}

	@GetMapping("/findOne") // findOne se emple para actualizar o eleminar un registro
	public String findOne(@RequestParam("idCliente") @Nullable Integer idCliente
			,@RequestParam("opcion") @Nullable Integer opcion
			, Model model
			) {

		// try {
		if (idCliente != null) {
			Cliente cliente = clienteDao.findOne(idCliente);
			model.addAttribute("cliente", cliente);
		}
		if (opcion == 1) return "clientes-add"; // redirige al formulario web "cliente-add"
		else return "clientes-del";

		// }catch (Exception e) {
		// TODO: handle exception
		// }

	}
	
	@PostMapping("/add")
	public String add(@RequestParam("idCliente") @Nullable Integer idCliente 
		,@RequestParam("cedula") @Nullable String cedula
		,@RequestParam("nombre") @Nullable String nombre
		,@RequestParam("apellido") @Nullable String apellido
		,@RequestParam("direccion") @Nullable String direccion
		,@RequestParam("telfono") @Nullable String telefono
		,@RequestParam("correo") @Nullable String correo
		) {
		if (idCliente == null) {
			Cliente cliente = new Cliente(0,cedula,nombre,apellido,direccion,telefono,correo);
			clienteDao.add(cliente);
		}else {
			Cliente cliente = new Cliente(idCliente,cedula,nombre,apellido,direccion,telefono,correo);
			clienteDao.up(cliente);
		}
		return "redirect:/clientes/findAll";
	}
	
	@GetMapping("/del")
	public String del(@RequestParam("idCliente") @Nullable Integer idCliente
			) {
		//try {
			clienteDao.del(idCliente);
			return "redirect:/clientes/findAll";
		//}catch(Exception e) {}
		
	}

}
