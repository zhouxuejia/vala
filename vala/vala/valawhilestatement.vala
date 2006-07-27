/* valawhilestatement.vala
 *
 * Copyright (C) 2006  Jürg Billeter
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.

 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.

 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
 *
 * Author:
 * 	Jürg Billeter <j@bitron.ch>
 */

using GLib;

/**
 * Represents a while iteration statement in the source code.
 */
public class Vala.WhileStatement : Statement {
	/**
	 * Specifies the loop condition.
	 */
	public Expression condition { get; set; }
	
	/**
	 * Specifies the loop body.
	 */
	public Statement body { get; set; }

	/**
	 * Creates a new while statement.
	 *
	 * @param cond   loop condition
	 * @param body   loop body
	 * @param source reference to source code
	 * @return       newly created while statement
	 */
	public static ref WhileStatement! new (Expression! cond, Statement! body, SourceReference source) {
		return (new WhileStatement (condition = cond, body = body, source_reference = source));
	}
	
	public override void accept (CodeVisitor! visitor) {
		condition.accept (visitor);
		
		visitor.visit_end_full_expression (condition);

		body.accept (visitor);

		visitor.visit_while_statement (this);
	}
}
