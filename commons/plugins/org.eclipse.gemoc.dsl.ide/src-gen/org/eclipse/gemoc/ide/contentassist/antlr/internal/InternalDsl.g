/*
 * generated by Xtext 2.12.0
 */
grammar InternalDsl;

options {
	superClass=AbstractInternalContentAssistParser;
	backtrack=true;
}

@lexer::header {
package org.eclipse.gemoc.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.gemoc.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.eclipse.gemoc.services.DslGrammarAccess;

}
@parser::members {
	private DslGrammarAccess grammarAccess;

	public void setGrammarAccess(DslGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleDsl
entryRuleDsl
:
{ before(grammarAccess.getDslRule()); }
	 ruleDsl
{ after(grammarAccess.getDslRule()); } 
	 EOF 
;

// Rule Dsl
ruleDsl 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDslAccess().getGroup()); }
		(rule__Dsl__Group__0)
		{ after(grammarAccess.getDslAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleEntry
entryRuleEntry
:
{ before(grammarAccess.getEntryRule()); }
	 ruleEntry
{ after(grammarAccess.getEntryRule()); } 
	 EOF 
;

// Rule Entry
ruleEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getEntryAccess().getGroup()); }
		(rule__Entry__Group__0)
		{ after(grammarAccess.getEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleWORD
entryRuleWORD
:
{ before(grammarAccess.getWORDRule()); }
	 ruleWORD
{ after(grammarAccess.getWORDRule()); } 
	 EOF 
;

// Rule WORD
ruleWORD 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getWORDAccess().getGroup()); }
		(rule__WORD__Group__0)
		{ after(grammarAccess.getWORDAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleVALUE_WORD
entryRuleVALUE_WORD
:
{ before(grammarAccess.getVALUE_WORDRule()); }
	 ruleVALUE_WORD
{ after(grammarAccess.getVALUE_WORDRule()); } 
	 EOF 
;

// Rule VALUE_WORD
ruleVALUE_WORD 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVALUE_WORDAccess().getGroup()); }
		(rule__VALUE_WORD__Group__0)
		{ after(grammarAccess.getVALUE_WORDAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleMULTILINE
entryRuleMULTILINE
:
{ before(grammarAccess.getMULTILINERule()); }
	 ruleMULTILINE
{ after(grammarAccess.getMULTILINERule()); } 
	 EOF 
;

// Rule MULTILINE
ruleMULTILINE 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMULTILINEAccess().getGroup()); }
		(rule__MULTILINE__Group__0)
		{ after(grammarAccess.getMULTILINEAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__WORD__Alternatives_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getWORDAccess().getLETTERTerminalRuleCall_1_0_0()); }
		RULE_LETTER
		{ after(grammarAccess.getWORDAccess().getLETTERTerminalRuleCall_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getWORDAccess().getSPACETerminalRuleCall_1_0_1()); }
		RULE_SPACE
		{ after(grammarAccess.getWORDAccess().getSPACETerminalRuleCall_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VALUE_WORD__Alternatives_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVALUE_WORDAccess().getLETTERTerminalRuleCall_0_0()); }
		RULE_LETTER
		{ after(grammarAccess.getVALUE_WORDAccess().getLETTERTerminalRuleCall_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getVALUE_WORDAccess().getSEPARATORTerminalRuleCall_0_1()); }
		RULE_SEPARATOR
		{ after(grammarAccess.getVALUE_WORDAccess().getSEPARATORTerminalRuleCall_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VALUE_WORD__Alternatives_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVALUE_WORDAccess().getAlternatives_1_0_0()); }
		(rule__VALUE_WORD__Alternatives_1_0_0)
		{ after(grammarAccess.getVALUE_WORDAccess().getAlternatives_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getVALUE_WORDAccess().getSPACETerminalRuleCall_1_0_1()); }
		RULE_SPACE
		{ after(grammarAccess.getVALUE_WORDAccess().getSPACETerminalRuleCall_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VALUE_WORD__Alternatives_1_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVALUE_WORDAccess().getLETTERTerminalRuleCall_1_0_0_0()); }
		RULE_LETTER
		{ after(grammarAccess.getVALUE_WORDAccess().getLETTERTerminalRuleCall_1_0_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getVALUE_WORDAccess().getSEPARATORTerminalRuleCall_1_0_0_1()); }
		RULE_SEPARATOR
		{ after(grammarAccess.getVALUE_WORDAccess().getSEPARATORTerminalRuleCall_1_0_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VALUE_WORD__Alternatives_1_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVALUE_WORDAccess().getLETTERTerminalRuleCall_1_1_0_0()); }
		RULE_LETTER
		{ after(grammarAccess.getVALUE_WORDAccess().getLETTERTerminalRuleCall_1_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getVALUE_WORDAccess().getSEPARATORTerminalRuleCall_1_1_0_1()); }
		RULE_SEPARATOR
		{ after(grammarAccess.getVALUE_WORDAccess().getSEPARATORTerminalRuleCall_1_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__0__Impl
	rule__Dsl__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getSPACETerminalRuleCall_0()); }
	(RULE_SPACE)*
	{ after(grammarAccess.getDslAccess().getSPACETerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__1__Impl
	rule__Dsl__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getNameKeyword_1()); }
	'name'
	{ after(grammarAccess.getDslAccess().getNameKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__2__Impl
	rule__Dsl__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getSPACETerminalRuleCall_2()); }
	(RULE_SPACE)*
	{ after(grammarAccess.getDslAccess().getSPACETerminalRuleCall_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__3__Impl
	rule__Dsl__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getSEPARATORTerminalRuleCall_3()); }
	RULE_SEPARATOR
	{ after(grammarAccess.getDslAccess().getSEPARATORTerminalRuleCall_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__4__Impl
	rule__Dsl__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getSPACETerminalRuleCall_4()); }
	(RULE_SPACE)*
	{ after(grammarAccess.getDslAccess().getSPACETerminalRuleCall_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__5__Impl
	rule__Dsl__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getNameAssignment_5()); }
	(rule__Dsl__NameAssignment_5)
	{ after(grammarAccess.getDslAccess().getNameAssignment_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__6__Impl
	rule__Dsl__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getSPACETerminalRuleCall_6()); }
	(RULE_SPACE)*
	{ after(grammarAccess.getDslAccess().getSPACETerminalRuleCall_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__7__Impl
	rule__Dsl__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getLineFeedKeyword_7()); }
	('\n')?
	{ after(grammarAccess.getDslAccess().getLineFeedKeyword_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__8__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__8__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getEntriesAssignment_8()); }
	(rule__Dsl__EntriesAssignment_8)*
	{ after(grammarAccess.getDslAccess().getEntriesAssignment_8()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Entry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entry__Group__0__Impl
	rule__Entry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryAccess().getSPACETerminalRuleCall_0()); }
	(RULE_SPACE)*
	{ after(grammarAccess.getEntryAccess().getSPACETerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entry__Group__1__Impl
	rule__Entry__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryAccess().getKeyAssignment_1()); }
	(rule__Entry__KeyAssignment_1)
	{ after(grammarAccess.getEntryAccess().getKeyAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entry__Group__2__Impl
	rule__Entry__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryAccess().getSPACETerminalRuleCall_2()); }
	(RULE_SPACE)*
	{ after(grammarAccess.getEntryAccess().getSPACETerminalRuleCall_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entry__Group__3__Impl
	rule__Entry__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryAccess().getSEPARATORTerminalRuleCall_3()); }
	RULE_SEPARATOR
	{ after(grammarAccess.getEntryAccess().getSEPARATORTerminalRuleCall_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entry__Group__4__Impl
	rule__Entry__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryAccess().getSPACETerminalRuleCall_4()); }
	(RULE_SPACE)*
	{ after(grammarAccess.getEntryAccess().getSPACETerminalRuleCall_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entry__Group__5__Impl
	rule__Entry__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryAccess().getValueAssignment_5()); }
	(rule__Entry__ValueAssignment_5)
	{ after(grammarAccess.getEntryAccess().getValueAssignment_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entry__Group__6__Impl
	rule__Entry__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryAccess().getSPACETerminalRuleCall_6()); }
	(RULE_SPACE)*
	{ after(grammarAccess.getEntryAccess().getSPACETerminalRuleCall_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entry__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryAccess().getLineFeedKeyword_7()); }
	('\n')?
	{ after(grammarAccess.getEntryAccess().getLineFeedKeyword_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__WORD__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WORD__Group__0__Impl
	rule__WORD__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WORD__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWORDAccess().getLETTERTerminalRuleCall_0()); }
	RULE_LETTER
	{ after(grammarAccess.getWORDAccess().getLETTERTerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__WORD__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WORD__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WORD__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWORDAccess().getGroup_1()); }
	(rule__WORD__Group_1__0)?
	{ after(grammarAccess.getWORDAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__WORD__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WORD__Group_1__0__Impl
	rule__WORD__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WORD__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWORDAccess().getAlternatives_1_0()); }
	(rule__WORD__Alternatives_1_0)*
	{ after(grammarAccess.getWORDAccess().getAlternatives_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__WORD__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WORD__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WORD__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWORDAccess().getLETTERTerminalRuleCall_1_1()); }
	(RULE_LETTER)
	{ after(grammarAccess.getWORDAccess().getLETTERTerminalRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__VALUE_WORD__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VALUE_WORD__Group__0__Impl
	rule__VALUE_WORD__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__VALUE_WORD__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVALUE_WORDAccess().getAlternatives_0()); }
	(rule__VALUE_WORD__Alternatives_0)
	{ after(grammarAccess.getVALUE_WORDAccess().getAlternatives_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VALUE_WORD__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VALUE_WORD__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__VALUE_WORD__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVALUE_WORDAccess().getGroup_1()); }
	(rule__VALUE_WORD__Group_1__0)?
	{ after(grammarAccess.getVALUE_WORDAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__VALUE_WORD__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VALUE_WORD__Group_1__0__Impl
	rule__VALUE_WORD__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__VALUE_WORD__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVALUE_WORDAccess().getAlternatives_1_0()); }
	(rule__VALUE_WORD__Alternatives_1_0)*
	{ after(grammarAccess.getVALUE_WORDAccess().getAlternatives_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VALUE_WORD__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VALUE_WORD__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__VALUE_WORD__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVALUE_WORDAccess().getGroup_1_1()); }
	(rule__VALUE_WORD__Group_1_1__0)
	{ after(grammarAccess.getVALUE_WORDAccess().getGroup_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__VALUE_WORD__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VALUE_WORD__Group_1_1__0__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__VALUE_WORD__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVALUE_WORDAccess().getAlternatives_1_1_0()); }
	(rule__VALUE_WORD__Alternatives_1_1_0)
	{ after(grammarAccess.getVALUE_WORDAccess().getAlternatives_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MULTILINE__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MULTILINE__Group__0__Impl
	rule__MULTILINE__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MULTILINE__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMULTILINEAccess().getVALUE_WORDParserRuleCall_0()); }
	ruleVALUE_WORD
	{ after(grammarAccess.getMULTILINEAccess().getVALUE_WORDParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MULTILINE__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MULTILINE__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MULTILINE__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMULTILINEAccess().getGroup_1()); }
	(rule__MULTILINE__Group_1__0)*
	{ after(grammarAccess.getMULTILINEAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MULTILINE__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MULTILINE__Group_1__0__Impl
	rule__MULTILINE__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MULTILINE__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMULTILINEAccess().getReverseSolidusControl000aKeyword_1_0()); }
	'\\\n'
	{ after(grammarAccess.getMULTILINEAccess().getReverseSolidusControl000aKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MULTILINE__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MULTILINE__Group_1__1__Impl
	rule__MULTILINE__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MULTILINE__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMULTILINEAccess().getSPACETerminalRuleCall_1_1()); }
	(RULE_SPACE)*
	{ after(grammarAccess.getMULTILINEAccess().getSPACETerminalRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MULTILINE__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MULTILINE__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MULTILINE__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMULTILINEAccess().getVALUE_WORDParserRuleCall_1_2()); }
	ruleVALUE_WORD
	{ after(grammarAccess.getMULTILINEAccess().getVALUE_WORDParserRuleCall_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Dsl__NameAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDslAccess().getNameMULTILINEParserRuleCall_5_0()); }
		ruleMULTILINE
		{ after(grammarAccess.getDslAccess().getNameMULTILINEParserRuleCall_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__EntriesAssignment_8
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDslAccess().getEntriesEntryParserRuleCall_8_0()); }
		ruleEntry
		{ after(grammarAccess.getDslAccess().getEntriesEntryParserRuleCall_8_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__KeyAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEntryAccess().getKeyWORDParserRuleCall_1_0()); }
		ruleWORD
		{ after(grammarAccess.getEntryAccess().getKeyWORDParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__ValueAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEntryAccess().getValueMULTILINEParserRuleCall_5_0()); }
		ruleMULTILINE
		{ after(grammarAccess.getEntryAccess().getValueMULTILINEParserRuleCall_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_SEPARATOR : ('='|':');

RULE_SL_COMMENT : ('!'|'#') ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_LETTER : (~((RULE_SEPARATOR|RULE_SPACE|'\\\n'|'\r'|'\n'))|'\\='|'\\:'|'\\#'|'\\!');

RULE_SPACE : (' '|'\t');
