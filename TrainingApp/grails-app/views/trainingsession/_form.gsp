<%@ page import="uk.ac.shu.webarch.trainingapp.Trainingsession" %>



<div class="fieldcontain ${hasErrors(bean: trainingsessionInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="trainingsession.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${trainingsessionInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: trainingsessionInstance, field: 'sessionExercise', 'error')} ">
	<label for="sessionExercise">
		<g:message code="trainingsession.sessionExercise.label" default="Session Exercise" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${trainingsessionInstance?.sessionExercise?}" var="s">
    <li><g:link controller="sessionexercise" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="sessionexercise" action="create" params="['trainingsession.id': trainingsessionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'sessionexercise.label', default: 'Sessionexercise')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingsessionInstance, field: 'sessionID', 'error')} ">
	<label for="sessionID">
		<g:message code="trainingsession.sessionID.label" default="Session ID" />
		
	</label>
	<g:textField name="sessionID" value="${trainingsessionInstance?.sessionID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingsessionInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="trainingsession.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="username" name="username.id" from="${uk.ac.shu.webarch.trainingapp.User.list()}" optionKey="id" required="" value="${trainingsessionInstance?.username?.username}" class="many-to-one"/>
</div>

