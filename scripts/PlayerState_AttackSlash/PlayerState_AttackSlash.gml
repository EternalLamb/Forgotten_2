/*hSpeed = 0;
vSpeed = 0;

if (sprite_index != Spr_AttackSlash)
{
	sprite_index = Spr_AttackSlash;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

// Usar la hitbox y verificar golpes
mask_index = Spr_AttackSlash_1;
/*var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x, y, Obj_enemigo1, hitByAttackNow,false);
var hits = instance_place_list(x, y, Obj_enemigo2, hitByAttackNow,false);
var hits = instance_place_list(x, y, Obj_enemigo3, hitByAttackNow,false);
var hits = instance_place_list(x, y, Obj_enemigo4, hitByAttackNow,false);
var hits = instance_place_list(x, y, Obj_enemigo5, hitByAttackNow,false);

if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		var hitID = hitByAttackNow[ds_list_find_value(hitByAttackNow,i)];
		if (ds_list_find_index(hitByAttack,hitID) == -1)
		{
			ds_list_add(hitByAttack,hitID);
			with (hitID)
			{
			EnemyHit(2);	
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = Spr_Player;

if (animation_end())
{
	sprite_index = Spr_Player;
	state = PLAYERSTATE.FREE;
}