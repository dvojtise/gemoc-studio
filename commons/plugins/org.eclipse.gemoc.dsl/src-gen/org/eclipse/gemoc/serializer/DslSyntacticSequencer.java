/*
 * generated by Xtext 2.12.0
 */
package org.eclipse.gemoc.serializer;

import com.google.inject.Inject;
import java.util.List;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.gemoc.services.DslGrammarAccess;
import org.eclipse.xtext.IGrammarAccess;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.nodemodel.INode;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.AbstractElementAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.TokenAlias;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynNavigable;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynTransition;
import org.eclipse.xtext.serializer.sequencer.AbstractSyntacticSequencer;

@SuppressWarnings("all")
public class DslSyntacticSequencer extends AbstractSyntacticSequencer {

	protected DslGrammarAccess grammarAccess;
	protected AbstractElementAlias match_Dsl_LineFeedKeyword_7_q;
	protected AbstractElementAlias match_Dsl_SPACETerminalRuleCall_0_a;
	protected AbstractElementAlias match_Dsl_SPACETerminalRuleCall_2_a;
	protected AbstractElementAlias match_Dsl_SPACETerminalRuleCall_4_a;
	protected AbstractElementAlias match_Dsl_SPACETerminalRuleCall_6_a;
	protected AbstractElementAlias match_Entry_LineFeedKeyword_7_q;
	protected AbstractElementAlias match_Entry_SPACETerminalRuleCall_0_a;
	protected AbstractElementAlias match_Entry_SPACETerminalRuleCall_2_a;
	protected AbstractElementAlias match_Entry_SPACETerminalRuleCall_4_a;
	protected AbstractElementAlias match_Entry_SPACETerminalRuleCall_6_a;
	
	@Inject
	protected void init(IGrammarAccess access) {
		grammarAccess = (DslGrammarAccess) access;
		match_Dsl_LineFeedKeyword_7_q = new TokenAlias(false, true, grammarAccess.getDslAccess().getLineFeedKeyword_7());
		match_Dsl_SPACETerminalRuleCall_0_a = new TokenAlias(true, true, grammarAccess.getDslAccess().getSPACETerminalRuleCall_0());
		match_Dsl_SPACETerminalRuleCall_2_a = new TokenAlias(true, true, grammarAccess.getDslAccess().getSPACETerminalRuleCall_2());
		match_Dsl_SPACETerminalRuleCall_4_a = new TokenAlias(true, true, grammarAccess.getDslAccess().getSPACETerminalRuleCall_4());
		match_Dsl_SPACETerminalRuleCall_6_a = new TokenAlias(true, true, grammarAccess.getDslAccess().getSPACETerminalRuleCall_6());
		match_Entry_LineFeedKeyword_7_q = new TokenAlias(false, true, grammarAccess.getEntryAccess().getLineFeedKeyword_7());
		match_Entry_SPACETerminalRuleCall_0_a = new TokenAlias(true, true, grammarAccess.getEntryAccess().getSPACETerminalRuleCall_0());
		match_Entry_SPACETerminalRuleCall_2_a = new TokenAlias(true, true, grammarAccess.getEntryAccess().getSPACETerminalRuleCall_2());
		match_Entry_SPACETerminalRuleCall_4_a = new TokenAlias(true, true, grammarAccess.getEntryAccess().getSPACETerminalRuleCall_4());
		match_Entry_SPACETerminalRuleCall_6_a = new TokenAlias(true, true, grammarAccess.getEntryAccess().getSPACETerminalRuleCall_6());
	}
	
	@Override
	protected String getUnassignedRuleCallToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (ruleCall.getRule() == grammarAccess.getSEPARATORRule())
			return getSEPARATORToken(semanticObject, ruleCall, node);
		else if (ruleCall.getRule() == grammarAccess.getSPACERule())
			return getSPACEToken(semanticObject, ruleCall, node);
		return "";
	}
	
	/**
	 * terminal SEPARATOR:
	 * 	'=' | ':'
	 * ;
	 */
	protected String getSEPARATORToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (node != null)
			return getTokenText(node);
		return "=";
	}
	
	/**
	 * terminal SPACE:
	 * 	' '|'\t'
	 * 	
	 * ;
	 */
	protected String getSPACEToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (node != null)
			return getTokenText(node);
		return " ";
	}
	
	@Override
	protected void emitUnassignedTokens(EObject semanticObject, ISynTransition transition, INode fromNode, INode toNode) {
		if (transition.getAmbiguousSyntaxes().isEmpty()) return;
		List<INode> transitionNodes = collectNodes(fromNode, toNode);
		for (AbstractElementAlias syntax : transition.getAmbiguousSyntaxes()) {
			List<INode> syntaxNodes = getNodesFor(transitionNodes, syntax);
			if (match_Dsl_LineFeedKeyword_7_q.equals(syntax))
				emit_Dsl_LineFeedKeyword_7_q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Dsl_SPACETerminalRuleCall_0_a.equals(syntax))
				emit_Dsl_SPACETerminalRuleCall_0_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Dsl_SPACETerminalRuleCall_2_a.equals(syntax))
				emit_Dsl_SPACETerminalRuleCall_2_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Dsl_SPACETerminalRuleCall_4_a.equals(syntax))
				emit_Dsl_SPACETerminalRuleCall_4_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Dsl_SPACETerminalRuleCall_6_a.equals(syntax))
				emit_Dsl_SPACETerminalRuleCall_6_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Entry_LineFeedKeyword_7_q.equals(syntax))
				emit_Entry_LineFeedKeyword_7_q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Entry_SPACETerminalRuleCall_0_a.equals(syntax))
				emit_Entry_SPACETerminalRuleCall_0_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Entry_SPACETerminalRuleCall_2_a.equals(syntax))
				emit_Entry_SPACETerminalRuleCall_2_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Entry_SPACETerminalRuleCall_4_a.equals(syntax))
				emit_Entry_SPACETerminalRuleCall_4_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Entry_SPACETerminalRuleCall_6_a.equals(syntax))
				emit_Entry_SPACETerminalRuleCall_6_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else acceptNodes(getLastNavigableState(), syntaxNodes);
		}
	}

	/**
	 * Ambiguous syntax:
	 *     '
	  *     '?
	 *
	 * This ambiguous syntax occurs at:
	 *     name=MULTILINE SPACE* (ambiguity) (rule end)
	 *     name=MULTILINE SPACE* (ambiguity) entries+=Entry
	 */
	protected void emit_Dsl_LineFeedKeyword_7_q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Ambiguous syntax:
	 *     SPACE*
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) (ambiguity) 'name' SPACE* SEPARATOR SPACE* name=MULTILINE
	 */
	protected void emit_Dsl_SPACETerminalRuleCall_0_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Ambiguous syntax:
	 *     SPACE*
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) SPACE* 'name' (ambiguity) SEPARATOR SPACE* name=MULTILINE
	 */
	protected void emit_Dsl_SPACETerminalRuleCall_2_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Ambiguous syntax:
	 *     SPACE*
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) SPACE* 'name' SPACE* SEPARATOR (ambiguity) name=MULTILINE
	 */
	protected void emit_Dsl_SPACETerminalRuleCall_4_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Ambiguous syntax:
	 *     SPACE*
	 *
	 * This ambiguous syntax occurs at:
	 *     (
	 *         name=MULTILINE 
	 *         (ambiguity) 
	 *         '
	 *         '? 
	 *         (rule end)
	 *     )
	 *     (
	 *         name=MULTILINE 
	 *         (ambiguity) 
	 *         '
	 *         '? 
	 *         entries+=Entry
	 *     )
	 */
	protected void emit_Dsl_SPACETerminalRuleCall_6_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Ambiguous syntax:
	 *     '
	  *     '?
	 *
	 * This ambiguous syntax occurs at:
	 *     value=MULTILINE SPACE* (ambiguity) (rule end)
	 */
	protected void emit_Entry_LineFeedKeyword_7_q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Ambiguous syntax:
	 *     SPACE*
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) (ambiguity) key=WORD
	 */
	protected void emit_Entry_SPACETerminalRuleCall_0_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Ambiguous syntax:
	 *     SPACE*
	 *
	 * This ambiguous syntax occurs at:
	 *     key=WORD (ambiguity) SEPARATOR SPACE* value=MULTILINE
	 */
	protected void emit_Entry_SPACETerminalRuleCall_2_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Ambiguous syntax:
	 *     SPACE*
	 *
	 * This ambiguous syntax occurs at:
	 *     key=WORD SPACE* SEPARATOR (ambiguity) value=MULTILINE
	 */
	protected void emit_Entry_SPACETerminalRuleCall_4_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Ambiguous syntax:
	 *     SPACE*
	 *
	 * This ambiguous syntax occurs at:
	 *     (
	 *         value=MULTILINE 
	 *         (ambiguity) 
	 *         '
	 *         '? 
	 *         (rule end)
	 *     )
	 */
	protected void emit_Entry_SPACETerminalRuleCall_6_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
}
