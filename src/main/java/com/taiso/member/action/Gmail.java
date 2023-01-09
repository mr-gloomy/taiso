package com.taiso.member.action;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class Gmail extends Authenticator{
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("welcometaiso@gmail.com", "rqywgqbssmshuoew");
	}
}