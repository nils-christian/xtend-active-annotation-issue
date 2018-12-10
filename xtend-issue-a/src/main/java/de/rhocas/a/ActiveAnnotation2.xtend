package de.rhocas.a

import java.lang.annotation.Retention
import java.lang.annotation.Target
import org.eclipse.xtend.lib.macro.Active

@Target(TYPE)
@Retention(CLASS)
@Active(ActiveAnnotation2Processor)
annotation ActiveAnnotation2 {
	
}