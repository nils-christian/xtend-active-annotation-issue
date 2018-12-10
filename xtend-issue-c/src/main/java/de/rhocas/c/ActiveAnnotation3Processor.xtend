package de.rhocas.c

import org.eclipse.xtend.lib.macro.AbstractClassProcessor
import org.eclipse.xtend.lib.macro.declaration.MutableClassDeclaration
import org.eclipse.xtend.lib.macro.TransformationContext
import org.eclipse.xtend.lib.macro.declaration.ClassDeclaration

class ActiveAnnotation3Processor extends AbstractClassProcessor {
	
	override doTransform(MutableClassDeclaration annotatedClass, extension TransformationContext context) {
		val mySecondActiveAnnotation = annotatedClass.findAnnotation(ActiveAnnotation3.findTypeGlobally)
		val referencedClass = mySecondActiveAnnotation.getClassValue('value').type as ClassDeclaration
		
		val annotations = referencedClass.annotations
		annotatedClass.addWarning(annotations.map[annotationTypeDeclaration.simpleName].toString)
	}
	
}