<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class User extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id' => [
				'type' => 'INT',
				'constraint'     => 5,
				'unsigned'       => true,
				'auto_increment' => true,
			],
			'fullname' => [
				'type' => 'VARCHAR',
				'constraint' => 100,
			],
			'email' => [
				'type' => 'TEXT',
				'null' => 100,
			],
			'password' => [
				'type' => 'VARCHAR',
				'constraint' => 150,
				'null' => true
			]
		]);
		$this->forge->addKey('id', true);
		$this->forge->createTable('user');
	}


	public function down()
	{
		//
	}
}
