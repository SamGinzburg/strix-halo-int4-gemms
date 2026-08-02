	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8,@function
amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8:                                 ; @amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 1071 0                        ; attention.py:1071:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x10
	s_load_b128 s[8:11], s[0:1], 0x0
.Ltmp0:
	.loc	1 1081 25 prologue_end          ; attention.py:1081:25
	v_and_b32_e32 v1, 7, v0
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_lshrrev_b32_e32 v6, 6, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v8, 2, v6
	v_or_b32_e32 v9, 4, v6
	v_or_b32_e32 v10, 6, v6
	.loc	1 1084 26                       ; attention.py:1084:26
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s3, s17, s2
	.loc	1 1083 28                       ; attention.py:1083:28
	s_add_i32 s0, s16, 2
	.loc	1 1087 13                       ; attention.py:1087:13
	v_add_nc_u32_e32 v2, s3, v1
	.loc	1 1085 22                       ; attention.py:1085:22
	v_cmp_gt_i32_e32 vcc_lo, s17, v1
	.loc	1 1086 23                       ; attention.py:1086:23
	s_and_b32 s13, s9, 0xffff
	s_mov_b32 s12, s8
	.loc	1 1084 26                       ; attention.py:1084:26
	s_mul_i32 s5, s3, s0
	.loc	1 1087 13                       ; attention.py:1087:13
	v_mul_lo_u32 v2, v2, s0
	.loc	1 1085 22                       ; attention.py:1085:22
	v_cmp_gt_i32_e64 s3, s17, v6
	v_cmp_gt_i32_e64 s1, s17, v10
	v_cmp_gt_i32_e64 s4, s17, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1086 23                       ; attention.py:1086:23
	v_lshlrev_b32_e32 v4, 2, v2
	v_cndmask_b32_e32 v1, 0x80000000, v4, vcc_lo
	.loc	1 1097 23                       ; attention.py:1097:23
	v_add_nc_u32_e32 v4, 4, v4
	.loc	1 1086 23                       ; attention.py:1086:23
	buffer_load_b32 v5, v1, s[12:15], 0 offen
	.loc	1 1097 23                       ; attention.py:1097:23
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_b32 v4, v4, s[12:15], 0 offen
	.loc	1 1087 13                       ; attention.py:1087:13
	v_mul_lo_u32 v1, s0, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[2:3], null, s0, 6, v[1:2]
	v_lshl_add_u32 v3, s0, 1, v1
	v_lshl_add_u32 v7, s0, 2, v1
	.loc	1 1085 22                       ; attention.py:1085:22
	v_cmp_gt_i32_e64 s0, s17, v8
	.loc	1 1086 23                       ; attention.py:1086:23
	v_add_lshl_u32 v12, s5, v1, 2
	v_add_lshl_u32 v11, s5, v3, 2
	v_add_lshl_u32 v13, s5, v2, 2
	v_add_lshl_u32 v14, s5, v7, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v6, 0x80000000, v12, s3
	v_cndmask_b32_e64 v8, 0x80000000, v11, s0
	.loc	1 1082 25                       ; attention.py:1082:25
	v_and_b32_e32 v11, 63, v0
	.loc	1 1086 23                       ; attention.py:1086:23
	v_cndmask_b32_e64 v10, 0x80000000, v13, s1
	v_cndmask_b32_e64 v9, 0x80000000, v14, s4
	s_clause 0x1
	buffer_load_b32 v10, v10, s[12:15], 0 offen
	buffer_load_b32 v6, v6, s[12:15], 0 offen
	.loc	1 1104 13                       ; attention.py:1104:13
	v_add3_u32 v12, s5, 2, v11
	.loc	1 1086 23                       ; attention.py:1086:23
	s_clause 0x1
	buffer_load_b32 v8, v8, s[12:15], 0 offen
	buffer_load_b32 v9, v9, s[12:15], 0 offen
	.loc	1 1081 25                       ; attention.py:1081:25
	v_and_b32_e32 v14, 64, v0
	.loc	1 1103 26                       ; attention.py:1103:26
	v_add_lshl_u32 v3, v12, v3, 2
	v_add_lshl_u32 v1, v12, v1, 2
	v_add_lshl_u32 v2, v12, v2, 2
	v_add_lshl_u32 v7, v12, v7, 2
	.loc	1 1086 23                       ; attention.py:1086:23
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e32 v5, 0xff800000, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1091:22 ]
	v_mov_b32_e32 v12, v5
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1091:22 ] ]
	v_max_f32_e32 v13, v5, v5
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1091:22 ]
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1091:22 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v12, v13, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1091:22 ]
	v_mov_b32_e32 v13, v12
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp6:
	.loc	1 1086 23                       ; attention.py:1086:23
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v10, 0xff800000, v10, s1
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v6, 0xff800000, v6, s3
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1091:22 ] ]
	v_max_f32_e32 v13, v13, v13
.Ltmp8:
	.loc	1 1086 23                       ; attention.py:1086:23
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v8, 0xff800000, v8, s0
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v9, 0xff800000, v9, s4
	.loc	1 1093 27                       ; attention.py:1093:27
	v_cmp_neq_f32_e64 s7, 0xff800000, v10
	v_cmp_neq_f32_e64 s8, 0xff800000, v6
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1091:22 ] ]
	v_max_f32_e32 v12, v12, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp10:
	.loc	1 1093 27                       ; attention.py:1093:27
	v_cmp_neq_f32_e64 s9, 0xff800000, v9
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1091:22 ]
	v_mov_b32_e32 v13, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1091:22 ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v12, v12, v13
.Ltmp13:
	.loc	1 1109 41                       ; attention.py:1109:41
	v_cmp_gt_i32_e64 s5, s16, v11
	.loc	1 1081 25                       ; attention.py:1081:25
	v_bfe_i32 v13, v0, 6, 1
	.loc	1 1094 26                       ; attention.py:1094:26
	v_sub_f32_e32 v16, v8, v12
	.loc	1 1109 18                       ; attention.py:1109:18
	s_and_b32 s6, s5, s0
	.loc	1 1094 26                       ; attention.py:1094:26
	v_sub_f32_e32 v17, v10, v12
	.loc	1 1103 26                       ; attention.py:1103:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	.loc	1 1109 18                       ; attention.py:1109:18
	s_and_b32 s6, s5, s1
	.loc	1 1094 13                       ; attention.py:1094:13
	v_exp_f32_e32 v16, v16
	.loc	1 1103 26                       ; attention.py:1103:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	.loc	1 1109 18                       ; attention.py:1109:18
	s_and_b32 s6, s5, s3
	.loc	1 1094 26                       ; attention.py:1094:26
	v_sub_f32_e32 v18, v6, v12
	.loc	1 1103 26                       ; attention.py:1103:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s6
	.loc	1 1109 18                       ; attention.py:1109:18
	s_and_b32 s6, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1103 26                       ; attention.py:1103:26
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	s_clause 0x3
	buffer_load_b32 v3, v3, s[12:15], 0 offen
	buffer_load_b32 v2, v2, s[12:15], 0 offen
	buffer_load_b32 v1, v1, s[12:15], 0 offen
	buffer_load_b32 v7, v7, s[12:15], 0 offen
	.loc	1 1093 27                       ; attention.py:1093:27
	v_cmp_neq_f32_e64 s6, 0xff800000, v8
	.loc	1 1094 26                       ; attention.py:1094:26
	v_sub_f32_e32 v19, v9, v12
	.loc	1 1118 13                       ; attention.py:1118:13
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	.loc	1 1093 13                       ; attention.py:1093:13
	s_and_b32 s0, s0, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1094 13                       ; attention.py:1094:13
	v_exp_f32_e32 v10, v19
	.loc	1 1092 19                       ; attention.py:1092:19
	v_cndmask_b32_e64 v6, 0, v16, s0
	.loc	1 1093 13                       ; attention.py:1093:13
	s_and_b32 s0, s1, s7
	.loc	1 1112 25                       ; attention.py:1112:25
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v3, v6, v3
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1112:18 ]
	v_lshlrev_b32_e32 v6, 2, v11
.Ltmp15:
	.loc	1 1094 13                       ; attention.py:1094:13
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1092 19                       ; attention.py:1092:19
	v_cndmask_b32_e64 v9, 0, v17, s0
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1112:18 ]
	v_lshlrev_b32_e32 v15, 2, v0
.Ltmp17:
	.loc	1 1093 13                       ; attention.py:1093:13
	s_and_b32 s0, s3, s8
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1112:18 ]
	v_bfe_i32 v0, v0, 0, 1
.Ltmp19:
	.loc	1 1112 25                       ; attention.py:1112:25
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v2, v9, v2 :: v_dual_and_b32 v9, 0x104, v13
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1112:18 ]
	v_and_b32_e32 v13, 0xf8, v15
.Ltmp21:
	.loc	1 1094 13                       ; attention.py:1094:13
	v_exp_f32_e32 v8, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1112:18 ]
	v_and_or_b32 v0, 0x104, v0, v13
.Ltmp23:
	.loc	1 1092 19                       ; attention.py:1092:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1093 13                       ; attention.py:1093:13
	s_and_b32 s0, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1092 19                       ; attention.py:1092:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1093 27                       ; attention.py:1093:27
	v_cmp_neq_f32_e64 s0, 0xff800000, v5
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1112:18 ] ]
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v3, v8, v1
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1112:18 ]
	v_xad_u32 v8, v9, v6, 0
	v_lshrrev_b32_e32 v1, 4, v14
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1112:18 ] ]
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v2, v10, v7 :: v_dual_sub_f32 v7, v5, v12
.Ltmp27:
	.loc	1 1093 13                       ; attention.py:1093:13
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 26                       ; attention.py:1114:26
	s_mul_i32 s0, s16, s2
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1112:18 ]
	v_xad_u32 v0, v0, v1, 0
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1112:18 ] ]
	v_add_f32_e32 v2, v3, v2
.Ltmp30:
	.loc	1 1094 13                       ; attention.py:1094:13
	v_exp_f32_e32 v3, v7
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1112:18 ]
	v_add3_u32 v1, 0, v13, v1
	ds_store_b32 v8, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp32:
	.loc	1 1092 19                       ; attention.py:1092:19
	v_cndmask_b32_e32 v2, 0, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1102 30                       ; attention.py:1102:30
	v_mul_f32_e32 v3, v4, v2
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1102:23 ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1102:23 ] ]
	v_fmac_f32_e32 v3, v4, v2
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1102:23 ]
	v_mov_b32_e32 v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1102:23 ] ]
	v_dual_add_f32 v3, v3, v4 :: v_dual_mov_b32 v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1112:18 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1112:18 ] ]
	v_add_f32_e32 v0, v0, v2
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1112:18 ]
	v_add_nc_u32_e32 v2, 0, v6
	ds_store_b32 v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v2
.Ltmp40:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1102:23 ]
	v_mov_b32_e32 v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1102:23 ] ]
	v_add_f32_e32 v1, v3, v1
.Ltmp42:
	.loc	1 1113 46                       ; attention.py:1113:46
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v2, null, v1, v1, v0
	v_div_scale_f32 v5, vcc_lo, v0, v1, v0
	v_rcp_f32_e32 v3, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v4, -v2, v3, 1.0
	v_fmac_f32_e32 v3, v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v4, v5, v3
	v_fma_f32 v6, -v2, v4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, v6, v3
	v_fma_f32 v2, -v2, v4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v3, v4
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1112:18 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v14
.Ltmp44:
	.loc	1 1113 46                       ; attention.py:1113:46
	v_div_fixup_f32 v0, v2, v1, v0
	.loc	1 1118 13                       ; attention.py:1118:13
	v_add_lshl_u32 v2, s0, v11, 2
	.loc	1 1113 27                       ; attention.py:1113:27
	v_cmp_lt_f32_e64 s0, 0, v1
	.loc	1 1118 13                       ; attention.py:1118:13
	s_and_b32 vcc_lo, vcc_lo, s5
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 1113 18                       ; attention.py:1113:18
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1118 13                       ; attention.py:1118:13
	buffer_store_b32 v0, v1, s[12:15], 0 offen
	.loc	1 1071 5                        ; attention.py:1071:5
	s_endpgm
.Ltmp45:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 40
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 20
		.amdhsa_next_free_sgpr 18
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 10
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8.num_vgpr, 20
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8.numbered_sgpr, 18
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 1264
; TotalNumSgprs: 20
; NumVgprs: 20
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 20
; NumVGPRsForWavesPerEU: 20
; Occupancy: 16
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x88 DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x62 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1091                            ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1112                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1102                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x83:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .offset:         16
        .size:           4
        .value_kind:     by_value
      - .offset:         20
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 40
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     20
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     20
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
