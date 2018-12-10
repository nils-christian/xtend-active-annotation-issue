package de.rhocas.a

import java.lang.annotation.ElementType
import java.lang.annotation.Retention
import java.lang.annotation.RetentionPolicy
import java.lang.annotation.Target
import org.eclipse.xtend.lib.macro.AbstractClassProcessor
import org.eclipse.xtend.lib.macro.RegisterGlobalsContext
import org.eclipse.xtend.lib.macro.TransformationContext
import org.eclipse.xtend.lib.macro.declaration.ClassDeclaration
import org.eclipse.xtend.lib.macro.declaration.EnumerationTypeDeclaration
import org.eclipse.xtend.lib.macro.declaration.MutableClassDeclaration

class ActiveAnnotation1Processor extends AbstractClassProcessor {
	
	extension NameHelper = new NameHelper()
	
	override doRegisterGlobals(ClassDeclaration annotatedClass, extension RegisterGlobalsContext context) {
		getFullQualifiedAnnotationName(annotatedClass, context).registerAnnotationType
	}
	
	override doTransform(MutableClassDeclaration annotatedClass, extension TransformationContext context) {
		val generatedAnnotation = getFullQualifiedAnnotationName(annotatedClass, context).findAnnotationType
		
		generatedAnnotation.addAnnotation(Retention.newAnnotationReference [
			setEnumValue('value', (RetentionPolicy.findTypeGlobally as EnumerationTypeDeclaration).findDeclaredValue(RetentionPolicy.RUNTIME.name))
		])
		generatedAnnotation.addAnnotation(Target.newAnnotationReference [
			setEnumValue('value', (ElementType.findTypeGlobally as EnumerationTypeDeclaration).findDeclaredValue(ElementType.TYPE.name))
		])
	}

}