package controller.ticket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import model.ticket.TicketInfoService;

@Controller

public class TicketController {
	
	@Autowired
	private TicketInfoService ticketInfoService;
	
}
