package com.mascotas;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndView;





/**
 * @author Elvis Martinez
 */
@Controller
public class ControladorMascota {
	
	/**
     * Metodo para mostrar el formulario de ingreso de mascotas
     */
	@RequestMapping("/formularioMascota")
	public ModelAndView mostraForm(){
		ModelAndView formulariomascota = new ModelAndView("formulariomascota", "command", new ModeloMascota());
		return formulariomascota;
	}
	
	/**
     * Metodo para ingresar los datos en la base de datos mascota
     */
	@RequestMapping(value="/save",method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("pet") ModeloMascota pet){
		ModeloMascota nuevaMascota = new ModeloMascota(4, pet.getNombreAnimal(), pet.getNombreDueno(), pet.getEspecie(), pet.getSexo(), pet.getRaza(), pet.getColor(), pet.getEdadAprox(), pet.getEstadoReproductivo(), pet.getTiempoEstadia());

		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();     
		Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
		  
		SessionFactory factory = meta.getSessionFactoryBuilder().build();  
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();   		        
		session.save(nuevaMascota);  
		t.commit();  
		System.out.println("successfully saved");    
		factory.close();  
		session.close();    	
		return new ModelAndView("redirect:/mascotas");
	}
	
	/**
     * Metodo para mostrar la lista de mascotas recuperada de la base de datos
     */
	@RequestMapping("/mascotas")  
    public ModelAndView verMascotas(){
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
		Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();    
		SessionFactory factory = meta.getSessionFactoryBuilder().build();  
		Session session = factory.openSession();
	    Transaction tx = null;
	    tx = session.beginTransaction();
        List mascotas = session.createQuery("FROM com.mascotas.ModeloMascota").list(); 
        List<ModeloMascota> lmascotas = new ArrayList<ModeloMascota>();
        for (Iterator iterator = mascotas.iterator(); iterator.hasNext();){
           ModeloMascota mascota = (ModeloMascota) iterator.next();
           lmascotas.add(mascota);
        }
        tx.commit();
        session.close();
        
	    return new ModelAndView("listamascotas", "lmascotas", mascotas);
    }
	
	/**
     * Metodo para dirigir a formulario actualizar determinado por el id
     */
	@RequestMapping(value="/{id}")  
    public ModelAndView edit(@PathVariable int id){  
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
		Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();    
		SessionFactory factory = meta.getSessionFactoryBuilder().build();  
		Session session = factory.openSession();
		ModeloMascota pe = (ModeloMascota) session.get(ModeloMascota.class, id);
        return new ModelAndView("peteditform", "command", pe);  
    }
	
	/**
     * Metodo para eliminar objeto de la base de datos mediante el id
     */
	@RequestMapping(value="/deletepet/{id}",method = RequestMethod.GET)  
    public ModelAndView delete(@PathVariable int id){  
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
		Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();    
		SessionFactory factory = meta.getSessionFactoryBuilder().build();  
		Session session = factory.openSession();
		System.out.println("pasa por aqui en el delete");
		Transaction tx = null;
		tx = session.beginTransaction();
		Query q = session.createQuery("delete from com.mascotas.ModeloMascota where id ="+ id +"");
		q.executeUpdate();
		System.out.println("eliminado");
		tx.commit();
        session.close();
        return new ModelAndView("redirect:/mascotas");  
    }
	
	
	/**
     * Metodo para actulizar los datos del objeto en la base de datos
     */
	@RequestMapping(value="/actualizar",method = RequestMethod.POST)  
    public ModelAndView actualizar(@ModelAttribute("pet") ModeloMascota pet){
		ModeloMascota updateMascota = new ModeloMascota(pet.getId(), pet.getNombreAnimal(), pet.getNombreDueno(), pet.getEspecie(), pet.getSexo(), pet.getRaza(), pet.getColor(), pet.getEdadAprox(), pet.getEstadoReproductivo(), pet.getTiempoEstadia());
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();      
		Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  		  
		SessionFactory factory = meta.getSessionFactoryBuilder().build();  
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();   		        
		session.update(updateMascota);  
		t.commit();  
		System.out.println("actualizado");    
		factory.close();  
		session.close();    
		return new ModelAndView("redirect:/mascotas");
	}
	
}
