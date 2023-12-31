CREATE TABLE IF NOT EXISTS `preguntas` (
  `Encuesta` int NOT NULL DEFAULT '0',
  `Numero` int NOT NULL DEFAULT '0',
  `Pregunta` varchar(500) NOT NULL DEFAULT '?',
  `Clasificacion` int NOT NULL DEFAULT '0',
  `TipoDeRespuesta` enum('Breve','EscalaDe1a5','SiNo','OpcionMultiple','Numerica','EscalaDe0a5') DEFAULT 'EscalaDe1a5',
  PRIMARY KEY (`Encuesta`,`Numero`),
  KEY `IndiceEncuestaClasificacion` (`Encuesta`,`Clasificacion`),
  KEY `Índice 3` (`Encuesta`),
  KEY `Índice 4` (`TipoDeRespuesta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `preguntas` (`Encuesta`, `Numero`, `Pregunta`, `Clasificacion`, `TipoDeRespuesta`) VALUES
	(1, 1, 'El espacio físico donde realizó mis actividades es adecuado.', 2, 'EscalaDe1a5'),
	(1, 2, 'Realizas tu trabajo en condiciones seguras.', 2, 'EscalaDe1a5'),
	(1, 3, 'Los niveles de ruido son aceptables para la realizaci&oacute;n de tu actividad.', 2, 'EscalaDe1a5'),
	(1, 4, 'Los niveles de temperatura son aceptables para la realizaci&oacute;n de tu actividad.', 2, 'EscalaDe1a5'),
	(1, 5, 'Los niveles de humedad  son aceptables para la realizaci&oacute;n de tu actividad.', 2, 'EscalaDe1a5'),
	(1, 6, 'Los niveles de iluminaci&oacute;n son aceptables para la realizaci&oacute;n de tu actividad.', 2, 'EscalaDe1a5'),
	(1, 7, 'Tengo definidas claramente las funciones de mi puesto.', 3, 'EscalaDe1a5'),
	(1, 8, 'La carga de trabajo que hago es mayor a la de mis compa&ntilde;eros/as.', 3, 'EscalaDe1a5'),
	(1, 9, 'Cuento con los equipos y herramientas necesarias para ejecutar mi trabajo.', 3, 'EscalaDe1a5'),
	(1, 10, 'Considero que realizo mi trabajo bajo condiciones seguras.', 3, 'EscalaDe1a5'),
	(1, 11, 'Mi trabajo no me estresa.', 3, 'EscalaDe1a5'),
	(1, 12, 'No me molesta quedarme tiempo adicional a mi trabajo.', 3, 'EscalaDe1a5'),
	(1, 13, 'Estoy capacitado/a lo suficiente para hacer bien mi trabajo.', 3, 'EscalaDe1a5'),
	(1, 14, 'Las funciones de mi puesto, las desempe&ntilde;o de acuerdo a como se declaran en el Manual de Organizaci&oacute;n.', 3, 'EscalaDe1a5'),
	(1, 15, 'Considero que tengo mi puesto seguro.', 3, 'EscalaDe1a5'),
	(1, 16, 'Mis compa&ntilde;eros/as de trabajo comparten conmigo informaci&oacute;n que me ayuda a realizar mi trabajo', 4, 'EscalaDe1a5'),
	(1, 17, 'Las relaciones entre el personal de los departamentos es buena.', 4, 'EscalaDe1a5'),
	(1, 18, 'Considero que en mi &aacute;rea podemos trabajar en equipo.', 4, 'EscalaDe1a5'),
	(1, 19, 'Considero que con las dem&aacute;s &aacute;reas de trabajo podemos trabajar en equipo.', 4, 'EscalaDe1a5'),
	(1, 20, 'Existen &aacute;reas con quien me gusta trabajar mucho.', 4, 'EscalaDe1a5'),
	(1, 21, 'Me gusta mi trabajo.', 5, 'EscalaDe1a5'),
	(1, 22, 'Me gusta mi horario.', 5, 'EscalaDe1a5'),
	(1, 23, 'No me ir&iacute;a del Instituto Tecnol&oacute;gico o Centro aunque me ofrecieran un trabajo similar ', 5, 'EscalaDe1a5'),
	(1, 24, 'Me gustar&iacute;a permanecer en mi departamento.', 5, 'EscalaDe1a5'),
	(1, 25, 'Me siento satisfecho/a con mi jefe/a.', 5, 'EscalaDe1a5'),
	(1, 26, 'Estoy motivado/a por el reconocimiento que mi jefe/a y los directivos/as dan a mi trabajo.', 5, 'EscalaDe1a5'),
	(1, 27, 'Mi jefe/a es respetuoso/a conmigo.', 6, 'EscalaDe1a5'),
	(1, 28, 'Mi Jefe/a conoce lo suficiente para resolver los problemas que se presentan.', 6, 'EscalaDe1a5'),
	(1, 29, 'Mi jefe/a atiende mis dudas e inquietudes r&aacute;pidamente.', 6, 'EscalaDe1a5'),
	(1, 30, 'Para conservar mi trabajo no necesito llevarme bien con mi jefe/a.', 6, 'EscalaDe1a5'),
	(1, 31, 'Mi jefe/a solamente me pide que me quede tiempo adicional cuando es necesario.', 6, 'EscalaDe1a5'),
	(1, 32, 'Estoy de acuerdo que mi trabajo sea supervisado.', 6, 'EscalaDe1a5'),
	(1, 33, 'Mi jefe/a me apoya en la soluci&oacute;n de problemas que se presentan en mi trabajo.', 6, 'EscalaDe1a5'),
	(1, 34, 'Me siento satisfecho/a por el desempe&ntilde;o de mi jefe/a.', 6, 'EscalaDe1a5'),
	(1, 35, 'El Tecnol&oacute;gico me permite desarrollarme en mi trabajo sin descuidar mi vida personal y/o familiar', 7, 'EscalaDe1a5'),
	(1, 36, 'Cuando tengo necesidad de atender asuntos familiares mi jefa/a me otorga permiso sin condiciones', 7, 'EscalaDe1a5'),
	(1, 37, 'Cuando requiero atender asuntos relacionados con mis hijas/os el Instituto me da las facilidades para hacerlo', 7, 'EscalaDe1a5'),
	(1, 38, 'Estoy satisfecha/o con el servicio de guarderia que me provee el ISSSTE', 7, 'EscalaDe1a5'),
	(1, 39, 'Cuando regreso de permiso conservo mi posici&oacute;n en el trabajo', 7, 'EscalaDe1a5'),
	(1, 40, 'Si usted fuera el/la Director/a, &iquest;Qu&eacute; har&iacute;a por mejorar el desempe&ntilde;o del Instituto Tecnol&oacute;gico de la Paz?', 1, 'Breve'),
	(1, 41, '&iquest;Qu&eacute; le gustar&iacute;a que el Instituto Tecnol&oacute;gico de La Paz  hiciera por usted?', 1, 'Breve'),
	(1, 42, 'Qu&eacute; har&iacute;a Usted para que el Instituto Tecnol&oacute;gico de La Paz  mejorara en su Ambiente de Trabajo', 1, 'Breve'),
	(1, 43, 'Alg&uacute;n otro comentario que nos quisiera compartir.', 1, 'Breve'),
	(2, 1, 'Habilidades directivas para fortalecimiento e innovación de las organizaciones', 1, 'EscalaDe0a5'),
	(2, 2, 'Decisiones sobre el nivel de integración /Automatización de procesos de producción y servicios', 2, 'EscalaDe0a5'),
	(2, 3, 'Conocer  y manejar las herramientas  adecuadas en procesos para financiamiento de nuevos proyectos.', 3, 'EscalaDe0a5'),
	(2, 4, 'Integración de equipo de producción con sistemas informáticos de control (hardware/software)', 2, 'EscalaDe0a5'),
	(2, 5, 'Las claves de la economía internacional que afectan la supervivencia de las empresas (macroeconomía)', 3, 'EscalaDe0a5'),
	(2, 6, 'Análisis de resultados de operaciones financieras y estados contables en los diferentes tipos de negocios y/o empresas.', 3, 'EscalaDe0a5'),
	(2, 7, 'Estrategias y tácticas de marketing (diseño e implementación)', 4, 'EscalaDe0a5'),
	(2, 8, 'Dirección financiera (inversión y rentabilidad de la organización) ', 3, 'EscalaDe0a5'),
	(2, 9, 'Creatividad e iniciativa empresarial (innovación de estructuras administrativas, procesos, sistemas y productos)', 4, 'EscalaDe0a5'),
	(2, 10, 'Legislación laboral (Daños, responsabilidad y seguridad)', 1, 'EscalaDe0a5'),
	(2, 11, 'Base legal para: reclutamiento, selección y contratación de personal', 1, 'EscalaDe0a5'),
	(2, 12, 'Decisiones para Desarrollo del capital humano y/o la subcontratación de servicios especializados', 2, 'EscalaDe0a5'),
	(2, 13, 'Administración comercial e integración de las cadenas de suministro', 4, 'EscalaDe0a5'),
	(2, 14, 'Desarrollo de Comercio electrónico (viabilidad y factibilidad para su uso y aplicación)', 4, 'EscalaDe0a5'),
	(2, 15, 'Sistemas actuales de ventas y estrategias de comercialización', 4, 'EscalaDe0a5'),
	(2, 16, 'Tener habilidades para el desarrollo de ordenamiento de áreas productivas ante la contracción o distención de la demanda.', 2, 'EscalaDe0a5'),
	(2, 17, 'Marco legal de las organizaciones (configuración, estructura y operacionalidad)', 1, 'EscalaDe0a5'),
	(2, 18, 'Investigación de mercado (análisis, identificación de clientes, competidores y mercados: meta, potenciales, reales, etc.)', 4, 'EscalaDe0a5'),
	(2, 19, 'La gestión de RH en una estrategia comercial', 1, 'EscalaDe0a5'),
	(2, 20, 'Conocer y aplicar procesos para hacer uso de franquicias, patentar productos y registro de marcas', 1, 'EscalaDe0a5'),
	(2, 21, 'Identificación de puntos críticos que requieran el uso de dispositivos para eliminar desperdicios en la industria manufacturera y de servicio', 2, 'EscalaDe0a5'),
	(2, 22, 'Conocer y utilizar instrumentos financieros para innovar en empresas pequeñas y medianas.', 3, 'EscalaDe0a5'),
	(2, 23, 'Uso de Nuevas tecnologías de la información en la organización', 2, 'EscalaDe0a5'),
	(2, 24, 'Entorno económico y social de la organización', 3, 'EscalaDe0a5'),
	(2, 25, 'Otras areas que son de tu interes:', 5, 'Breve'),
	(3, 1, 'Conoces la politica de equidad de genero del SNEST', 1, 'EscalaDe1a5'),
	(3, 2, 'Cual es el proposito de la politica del sistema de gestion de equidad de genero', 2, 'OpcionMultiple'),
	(3, 3, 'De las opciones que a continuacion se presentan, elige la que corresponde a la politica de equidad de genero', 3, 'OpcionMultiple'),
	(3, 4, 'La igualdad de oportunidades significa tener acceso al empleo sin distincion de genero', 4, 'SiNo'),
	(3, 5, 'Las burlas, apodos, btomas sexistas, imagenes de tipo sexual en tu lugar de trabajo, se considera hostigamiento sexual.', 5, 'SiNo'),
	(3, 6, 'El modelo de equidad de genero solo beneficia al genero femenino', 6, 'SiNo'),
	(3, 7, 'Ha cambiado tu comportamentiento con tus compañeros/as de trabajo, a partir de la implementación del SGEG en el Tecnologico', 7, 'SiNo'),
	(4, 1, 'Explica de manera clara los contenidos de la asignatura.', 1, 'EscalaDe1a5'),
	(4, 2, 'Relaciona los contenidos de la asignatura con los contenidos de otras.', 1, 'EscalaDe1a5'),
	(4, 3, 'Resuelve las dudas relacionadas con los contenidos de la asignatura.', 1, 'EscalaDe1a5'),
	(4, 4, 'Propone ejemplos o ejercicios que vinculan la asignatura con la práctica profesional.', 1, 'EscalaDe1a5'),
	(4, 5, 'Explica la utilidad de los contenidos teóricos y prácticos para la actividad profesional.', 1, 'EscalaDe1a5'),
	(4, 6, 'Cumple con los acuerdos establecidos al inicio de la asignatura.', 2, 'EscalaDe1a5'),
	(4, 7, 'Durante el curso establece las estrategias adecuadas necesarias para lograr el aprendizaje deseado.', 2, 'EscalaDe1a5'),
	(4, 8, 'El programa presentado al principio de la asignatura se cubre totalmente.', 2, 'EscalaDe1a5'),
	(4, 9, 'Incluye experiencias de aprendizaje en lugares diferentes al aula (talleres, laboratorios, empresa, comunidad, etc.).', 3, 'EscalaDe1a5'),
	(4, 10, 'Utiliza para el aprendizaje las herramientas de interacción de las tecnologías actuales de la información (correo electrónico, chats, plataformas, etc.).', 3, 'EscalaDe1a5'),
	(4, 11, 'Organiza actividades que me permiten ejercitar mi expresión oral y escrita.', 3, 'EscalaDe1a5'),
	(4, 12, 'Relaciona los contenidos de la asignatura con la industria y la sociedad a nivel local, regional, nacional e internacional.', 3, 'EscalaDe1a5'),
	(4, 13, 'Usa ejemplos y casos relacionados con la vida real', 3, 'EscalaDe1a5'),
	(4, 14, 'Adapta las actividades para atender los diferentes estilos de aprendizaje de los estudiantes.', 4, 'EscalaDe1a5'),
	(4, 15, 'Promueve el autodidactismo y la investigación.', 4, 'EscalaDe1a5'),
	(4, 16, 'Promueve actividades participativas que me permiten colaborar con mis compañeros con una actitud positiva.', 4, 'EscalaDe1a5'),
	(4, 17, 'Estimula la reflexión sobre la manera en que aprendes.', 4, 'EscalaDe1a5'),
	(4, 18, 'Se involucra en las actividades propuestas al grupo.', 4, 'EscalaDe1a5'),
	(4, 19, 'Presenta y expone las clases de manera organizada y estructurada.', 4, 'EscalaDe1a5'),
	(4, 20, 'Utiliza diversas estrategias, métodos, medios y materiales.', 4, 'EscalaDe1a5'),
	(4, 21, 'Muestra compromiso y entusiasmo en sus actividades docentes.', 5, 'EscalaDe1a5'),
	(4, 22, 'Toma en cuenta las necesidades, intereses y expectativas del grupo.', 5, 'EscalaDe1a5'),
	(4, 23, 'Propicia el desarrollo de un ambiente de respeto y confianza.', 5, 'EscalaDe1a5'),
	(4, 24, 'Propicia la curiosidad y el deseo de aprender.', 5, 'EscalaDe1a5'),
	(4, 25, 'Reconoce los éxitos y logros en las actividades de aprendizaje.', 5, 'EscalaDe1a5'),
	(4, 26, 'Existe la impresión de que se toman represalias con algunos estudiantes.', 5, 'EscalaDe1a5'),
	(4, 27, 'Hace interesante la asignatura.', 5, 'EscalaDe1a5'),
	(4, 28, 'Identifica los conocimientos y habilidades de los estudiantes al inicio de la asignatura o de cada unidad.', 6, 'EscalaDe1a5'),
	(4, 29, 'Proporciona información para realizar adecuadamente las actividades de evaluación.', 6, 'EscalaDe1a5'),
	(4, 30, 'Toma en cuenta las actividades realizadas y los productos como evidencias para la calificación y acreditación de la asignatura.', 6, 'EscalaDe1a5'),
	(4, 31, 'Considera los resultados de la evaluación (asesorías, trabajos complementarios, búsqueda de información, etc.) para realizar mejoras en el aprendizaje.', 6, 'EscalaDe1a5'),
	(4, 32, 'Da a conocer las calificaciones en el plazo establecido.', 6, 'EscalaDe1a5'),
	(4, 33, 'Da oportunidad de mejorar los resultados de la evaluación del aprendizaje.', 6, 'EscalaDe1a5'),
	(4, 34, 'Muestra apertura para la corrección de errores de apreciación y evaluación.', 6, 'EscalaDe1a5'),
	(4, 35, 'Otorga calificaciones imparciales.', 6, 'EscalaDe1a5'),
	(4, 36, 'Desarrolla la clase en un clima de apertura y entendimiento.', 7, 'EscalaDe1a5'),
	(4, 37, 'Escucha y toma en cuenta las opiniones de los estudiantes.', 7, 'EscalaDe1a5'),
	(4, 38, 'Muestra congruencia entre lo que dice y lo que hace.', 7, 'EscalaDe1a5'),
	(4, 39, 'Asiste a clases regular y puntualmente.', 8, 'EscalaDe1a5'),
	(4, 40, 'Fomenta la importancia de contribuir a la conservación del medio ambiente.', 8, 'EscalaDe1a5'),
	(4, 41, 'Promueve mantener limpias y ordenadas las instalaciones.', 8, 'EscalaDe1a5'),
	(4, 42, 'Es accesible y está dispuesto a brindarte ayuda académica.', 8, 'EscalaDe1a5'),
	(4, 43, 'Emplea las tecnologías de la información y de la comunicación como un medio que facilite el aprendizaje de los estudiantes.', 9, 'EscalaDe1a5'),
	(4, 44, 'Promueve el uso de diversas herramientas, particularmente las digitales, para gestionar (recabar, procesar, evaluar y usar) información.', 9, 'EscalaDe1a5'),
	(4, 45, 'Promueve el uso seguro, legal y ético de la información digital.', 9, 'EscalaDe1a5'),
	(4, 46, 'En general, pienso que es un buen docente', 10, 'EscalaDe1a5'),
	(4, 47, 'Estoy satisfecha o satisfecho por mi nivel de desempeño y aprendizaje logrado gracias a la labor del docente.', 10, 'EscalaDe1a5'),
	(4, 48, 'Yo recomendaría a este docente a otros compañeros.', 10, 'EscalaDe1a5'),
	(5, 1, 'Los alimentos de la lista del menú se encuentran siempre disponibles para su consumo.', 1, 'EscalaDe1a5'),
	(5, 2, 'La presentación de los alimentos preparados es adecuada.', 1, 'EscalaDe1a5'),
	(5, 3, 'La porción de los alimentos preparados es adecuada.', 1, 'EscalaDe1a5'),
	(5, 4, 'El sabor, la condición y estado  de los alimentos preparados es adecuado para su consumo.', 1, 'EscalaDe1a5'),
	(5, 5, 'Los precios son adecuados a los productos ofrecidos.', 2, 'EscalaDe1a5'),
	(5, 6, 'El platillo del día tiene un precio razonable.', 2, 'EscalaDe1a5'),
	(5, 7, 'Los precios han permanecido o han tenido aumento', 2, 'Breve'),
	(5, 8, 'La atención en el punto de pago y por parte de las personas que sirven los alimentos es siempre amable y cordial.', 3, 'EscalaDe1a5'),
	(5, 9, 'El tiempo que se utiliza para la preparación de los alimentos es el adecuado.', 3, 'EscalaDe1a5'),
	(5, 10, 'Considera que el manejo higiénico de los alimentos es el adecuado.', 4, 'EscalaDe1a5'),
	(5, 11, 'El personal de la cafetería utiliza accesorios de higiene adecuado en la preparación y manejo de los alimentos.', 4, 'EscalaDe1a5'),
	(5, 12, 'La higiene del área de atención y consumo de los alimentos es adecuada.', 4, 'EscalaDe1a5'),
	(5, 13, 'El equipo, los utensilios y bienes muebles se encuentran limpios y en óptimas condiciones de uso.', 4, 'EscalaDe1a5'),
	(5, 14, 'Los depósitos de basura y los sanitarios se encuentran en condiciones de higiene adecuados.', 4, 'EscalaDe1a5'),
	(5, 15, 'Los alimentos que te sirven como becario son adecuados.', 5, 'SiNo'),
	(5, 16, '¿Por qué?', 5, 'Breve'),
	(5, 17, 'Seguirás aplicando para la beca alimenticia en el próximo semestre. ', 5, 'SiNo'),
	(5, 18, '¿Por qué?', 5, 'Breve'),
	(5, 19, 'Has tenido un problema de salud al consumir algún producto de la cafetería. ', 4, 'SiNo'),
	(5, 20, '¿Cuál?', 4, 'Breve'),
	(5, 21, 'Comentarios y Sugerencias', 0, 'Breve'),
	(6, 1, 'Genera buena comunicación con todo el grupo', 1, 'EscalaDe1a5'),
	(6, 2, 'Genera confianza', 1, 'EscalaDe1a5'),
	(6, 3, 'Hace agradable la sesión de tutoría', 1, 'EscalaDe1a5'),
	(6, 4, 'Escucha con atención lo que se le solicita', 1, 'EscalaDe1a5'),
	(6, 5, 'Se muestra empático con las preguntas que se le hacen', 1, 'EscalaDe1a5'),
	(6, 6, 'Da información necesaria sobre el programa de tutoría', 2, 'EscalaDe1a5'),
	(6, 7, 'Provee de la información adecuada para realizar trámites escolares ', 2, 'EscalaDe1a5'),
	(6, 8, 'Proporciona información suficiente sobre los apoyos que requiere el estudiante', 2, 'EscalaDe1a5'),
	(6, 9, 'Da información y orientación importante que apoye el área personal del tutorado', 2, 'EscalaDe1a5'),
	(6, 10, 'Informa con precisión sobre las asesorías académicas que ofrecen los docentes de su carrera', 2, 'EscalaDe1a5'),
	(6, 11, 'Entrego su horario y localización desde el inicio del semestre', 3, 'EscalaDe1a5'),
	(6, 12, 'Atiende con amabilidad cada que se le necesita', 3, 'EscalaDe1a5'),
	(6, 13, 'Canaliza adecuadamente a los tutorados siempre que tienen algún problema y que él no puede resolver', 3, 'EscalaDe1a5'),
	(6, 14, 'Realiza su función tutorial con disponibilidad y calidad', 3, 'EscalaDe1a5'),
	(6, 15, 'Le da seguimiento a los tutorados que ha canalizado', 3, 'EscalaDe1a5'),
	(6, 16, 'Muestra tener las herramientas necesarias para atender el grupo y/o individualmente', 4, 'EscalaDe1a5'),
	(6, 17, 'Realiza la programación de las sesiones considerando los tiempos disponibles de los estudiantes', 4, 'EscalaDe1a5'),
	(6, 18, 'Muestra evidencia de que planeo las sesiones individuales y grupales con sus tutorados, pues lleva un orden en sus actividades', 4, 'EscalaDe1a5'),
	(6, 19, 'Realiza sus actividades como tutor respetando los tiempos disponibles para ello, evitando interrupciones que corten el hilo de la sesión', 4, 'EscalaDe1a5'),
	(7, 1, 'Tengo definidas claramente las funciones de mi puesto.', 1, 'EscalaDe1a5'),
	(7, 2, 'La carga de trabajo que hago es igual a la de mis compañeros (as).', 1, 'EscalaDe1a5'),
	(7, 3, 'Cuento con los equipos y herramientas necesarias para ejecutar mi trabajo.', 1, 'EscalaDe1a5'),
	(7, 4, 'Cuento con espacio físico adecuado para realizar mis actividades laborales.', 1, 'EscalaDe1a5'),
	(7, 5, 'Considero que realizo mi trabajo bajo condiciones seguras (Ruidos, Temperatura, Iluminación).', 1, 'EscalaDe1a5'),
	(7, 6, 'Realizo tranquilamente mi trabajo.', 1, 'EscalaDe1a5'),
	(7, 7, 'No me molesta quedarme tiempo adicional a mi trabajo.', 1, 'EscalaDe1a5'),
	(7, 8, 'Estoy capacitado (a)  lo suficiente para hacer bien mi trabajo.', 1, 'EscalaDe1a5'),
	(7, 9, 'Las funciones de mi puesto, las desempeño de acuerdo a como se declaran en el Manual de Organización.', 1, 'EscalaDe1a5'),
	(7, 10, 'Si su respuesta a la pregunta 8 es diferente a "Totalmente de Acuerdo". ¿Qué capacitación consideras que requieres? A. Para el desempeño de tu trabajo.  B. Para tu superación personal. C. De cooperación en tu área. D. De supervisión por parte de tu jefe(a) inmediato. E. Otro, especifique (Escribe todos los incisos que consideres necesarios)', 7, 'Breve'),
	(7, 11, 'Mis compañeros (as) de trabajo comparten conmigo información que me ayuda a realizar mi trabajo.', 2, 'EscalaDe1a5'),
	(7, 12, 'Las relaciones entre el personal de mi departamentos es buena.', 2, 'EscalaDe1a5'),
	(7, 13, 'Considero que en mi área podemos trabajar en equipo.', 2, 'EscalaDe1a5'),
	(7, 14, 'Considero que con las demás áreas de trabajo podemos trabajar en equipo.', 2, 'EscalaDe1a5'),
	(7, 15, 'Existen áreas con quien me gusta trabajar mucho.', 2, 'EscalaDe1a5'),
	(7, 16, 'Mi jefe(a) es respetuoso conmigo.', 3, 'EscalaDe1a5'),
	(7, 17, 'Mi Jefe(a) conoce lo suficiente para resolver los problemas que se presentan.', 3, 'EscalaDe1a5'),
	(7, 18, 'Mi jefe(a)  atiende mis dudas e inquietudes rápidamente.', 3, 'EscalaDe1a5'),
	(7, 19, 'Mi jefe(a) solamente me pide que me quede tiempo adicional cuando es necesario.', 3, 'EscalaDe1a5'),
	(7, 20, 'Estoy de acuerdo que mi trabajo sea supervisado.', 3, 'EscalaDe1a5'),
	(7, 21, 'Me siento satisfecho por el desempeño de mi jefe(a).', 3, 'EscalaDe1a5'),
	(7, 22, 'Me gusta mi trabajo.', 4, 'EscalaDe1a5'),
	(7, 23, 'Me gusta mi horario.', 4, 'EscalaDe1a5'),
	(7, 24, 'Permanecería en el Instituto Tecnológico de La Paz aunque me ofrecieran un trabajo similar por el mismo sueldo.', 4, 'EscalaDe1a5'),
	(7, 25, 'Me gustaría permanecer en mi departamento.', 4, 'EscalaDe1a5'),
	(7, 26, 'Me siento satisfecho con mi jefe(a).', 4, 'EscalaDe1a5'),
	(7, 27, 'Estoy motivado por el reconocimiento que mi jefe(a) y los directivos(as) dan a mi trabajo.', 4, 'EscalaDe1a5'),
	(7, 28, 'El Tecnológico me permite desarrollarme en mi trabajo sin descuidar mi vida personal y/o familiar', 5, 'EscalaDe1a5'),
	(7, 29, 'Cuando tengo necesidad de atender asuntos familiares extraordinarios, mi jefe(a) me otorga facilidad para hacerlo.', 5, 'EscalaDe1a5'),
	(7, 30, 'Cuando regreso de permiso conservo mi posición en el trabajo.', 5, 'EscalaDe1a5'),
	(7, 31, 'Cuento con espacio y opciones adecuadas para mi alimentación en la institución.', 5, 'EscalaDe1a5'),
	(7, 32, 'Mi institución me otorga el descanso en días feriados nacionales obligatorios y vacaciones a que tengo derecho.', 5, 'EscalaDe1a5'),
	(7, 33, 'El Tecnológico ofrece servicios médicos dentro de la institución.', 6, 'EscalaDe1a5'),
	(7, 34, 'El horario de servicio médico es el adecuado a su horario de trabajo.', 6, 'EscalaDe1a5'),
	(7, 35, 'La atención del servicio médico satisface a sus necesidades.', 6, 'EscalaDe1a5'),
	(7, 36, 'El instituto le proporciona información sobre los aspectos de prevención de riesgos laborales y enfermedades específicas de mujeres y hombres.', 6, 'EscalaDe1a5'),
	(7, 37, 'Mi institución le proporciona información sobre las leyes, reglamentos y normas vigentes con relación a la seguridad, higiene y salud en el trabajo.', 6, 'EscalaDe1a5'),
	(7, 38, 'Algún comentario adicional que nos quisiera compartir para mejorar el ambiente de trabajo en el Instituto Tecnológico de La Paz.  ', 7, 'Breve');
