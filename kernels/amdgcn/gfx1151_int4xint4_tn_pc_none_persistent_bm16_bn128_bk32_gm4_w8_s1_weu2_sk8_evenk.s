	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 251 0                         ; generate_amdgcn.py:251:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:260:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 15
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:261:17 ]
	s_add_i32 s5, s25, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_lshr_b32 s6, s6, 28
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_lshr_b32 s7, s7, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_ashr_i32 s26, s4, 4
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s14, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 262 17 is_stmt 1              ; generate_amdgcn.py:262:17
	s_mul_i32 s27, s14, s26
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cmp_ge_i32 s2, s27
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph5
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 268 14 is_stmt 1              ; generate_amdgcn.py:268:14
	v_and_b32_e32 v3, 0xf0, v0
	v_and_b32_e32 v6, 7, v0
	v_bfe_i32 v7, v0, 3, 1
	v_lshlrev_b32_e32 v10, 1, v0
	v_bfe_i32 v5, v0, 7, 1
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 263 24                        ; generate_amdgcn.py:263:24
	s_lshl_b32 s1, s14, 2
	v_and_b32_e32 v7, 0x1040, v7
	v_and_b32_e32 v10, 28, v10
	v_and_b32_e32 v5, 0x204, v5
	v_lshl_or_b32 v3, v6, 2, v3
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_lshrrev_b32_e32 v9, 7, v0
	v_xor_b32_e32 v3, v3, v7
	v_lshlrev_b32_e32 v7, 2, v0
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s15, 31
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v2, 0x70, v2
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_add_i32 s0, s15, s0
	v_lshl_or_b32 v3, v6, 9, v3
	s_ashr_i32 s0, s0, 1
	v_and_or_b32 v6, 0x1c0, v7, v10
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:281:36 ]
	s_addk_i32 s0, 0x7f
	v_lshlrev_b32_e32 v10, 5, v0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_ashr_i32 s16, s0, 31
.Ltmp12:
	.loc	1 277 36 is_stmt 1              ; generate_amdgcn.py:277:36
	v_and_or_b32 v12, v4, 1, v2
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_lshr_b32 s16, s16, 25
	v_xor_b32_e32 v5, v6, v5
	s_add_i32 s0, s0, s16
	s_mov_b32 s16, s4
	s_ashr_i32 s0, s0, 7
	s_cmp_gt_i32 s15, 1
	s_mov_b32 s4, s6
	s_cselect_b32 s15, -1, 0
	s_abs_i32 s28, s1
	v_and_or_b32 v5, v10, 32, v5
	s_cvt_f32_u32 s6, s28
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp14:
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	v_lshl_or_b32 v4, s3, 4, v4
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_and_b32_e32 v8, 15, v0
	v_rcp_iflag_f32_e32 v10, s6
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_sub_i32 s7, 0, s28
	v_lshlrev_b32_e32 v22, 3, v0
	v_xor_b32_e32 v7, 4, v3
	v_xor_b32_e32 v6, 8, v3
	v_xor_b32_e32 v27, 12, v3
	v_xor_b32_e32 v28, 16, v3
	v_xor_b32_e32 v29, 20, v3
	v_readfirstlane_b32 s6, v10
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	v_mad_u64_u32 v[9:10], null, s25, v9, v[1:2]
	v_mul_lo_u32 v1, s25, v4
	v_xor_b32_e32 v30, 24, v3
	s_delay_alu instid0(VALU_DEP_4)
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_xor_b32_e32 v31, 28, v3
	v_xor_b32_e32 v33, 0x408, v5
	v_xor_b32_e32 v34, 0x810, v5
	s_cvt_u32_f32 s6, s6
	v_xor_b32_e32 v35, 0xc18, v5
	v_xor_b32_e32 v36, 0x1040, v5
	v_xor_b32_e32 v37, 0x1448, v5
	v_xor_b32_e32 v38, 0x1850, v5
	v_xor_b32_e32 v39, 0x1c58, v5
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_lshl_add_u32 v20, v8, 3, v1
	v_cndmask_b32_e64 v1, 0, 1, s15
	s_mul_i32 s7, s7, s6
	v_mad_u64_u32 v[10:11], null, s24, v4, v[8:9]
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_max_i32 s36, s0, 1
	s_mul_hi_u32 s0, s6, s7
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_or_b32_e32 v13, 2, v12
	v_or_b32_e32 v14, 4, v12
	v_or_b32_e32 v15, 6, v12
	v_or_b32_e32 v16, 8, v12
	v_or_b32_e32 v17, 10, v12
	v_or_b32_e32 v18, 12, v12
	v_or_b32_e32 v19, 14, v12
	s_add_i32 s38, s6, s0
	v_cmp_ne_u32_e64 s0, 1, v1
	v_add_nc_u32_e32 v11, 0, v0
	v_add_nc_u32_e32 v21, 0, v8
	v_add_nc_u32_e32 v22, 0, v22
	v_add_nc_u32_e32 v23, v2, v8
	v_add_nc_u32_e32 v24, 0, v3
	v_add_nc_u32_e32 v25, 0, v7
	v_add_nc_u32_e32 v26, 0, v6
	v_add_nc_u32_e32 v27, 0, v27
	v_add_nc_u32_e32 v28, 0, v28
	v_add_nc_u32_e32 v29, 0, v29
	v_add_nc_u32_e32 v30, 0, v30
	v_add_nc_u32_e32 v31, 0, v31
	v_add_nc_u32_e32 v32, 0, v5
	v_add_nc_u32_e32 v33, 0, v33
	v_add_nc_u32_e32 v34, 0, v34
	v_add_nc_u32_e32 v35, 0, v35
	v_add_nc_u32_e32 v36, 0, v36
	v_add_nc_u32_e32 v37, 0, v37
	v_add_nc_u32_e32 v38, 0, v38
	v_add_nc_u32_e32 v39, 0, v39
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s29, s25, 1
	s_lshl_b32 s30, s25, 2
	s_mul_i32 s31, s25, 6
	s_lshl_b32 s33, s25, 3
	s_mul_i32 s34, s25, 10
	s_mul_i32 s35, s25, 12
	s_mul_i32 s3, s25, 14
	s_and_b32 s13, s13, 0xffff
	s_bfe_i32 s37, s14, 0x1001d
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_lshl_b32 s39, s25, 7
	s_lshl_b32 s24, s24, 7
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_or_b32_e32 v4, s40, v8
	.loc	1 277 18 is_stmt 1              ; generate_amdgcn.py:277:18
	s_lshl_b32 s6, s41, 7
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_mul_i32 s40, s40, s25
	.loc	1 298 26                        ; generate_amdgcn.py:298:26
	v_or_b32_e32 v5, s6, v12
	v_or_b32_e32 v6, s6, v13
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	v_lshlrev_b32_e32 v4, 1, v4
	.loc	1 298 26                        ; generate_amdgcn.py:298:26
	v_or_b32_e32 v7, s6, v14
	v_or_b32_e32 v44, s6, v15
	v_or_b32_e32 v45, s6, v16
	v_or_b32_e32 v46, s6, v17
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	buffer_load_u16 v4, v4, s[20:23], 0 offen
	.loc	1 298 26                        ; generate_amdgcn.py:298:26
	v_or_b32_e32 v47, s6, v18
	v_or_b32_e32 v48, s6, v19
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s27
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v5, 1, v5
	v_lshlrev_b32_e32 v6, 1, v6
	v_lshlrev_b32_e32 v7, 1, v7
	v_lshlrev_b32_e32 v44, 1, v44
	v_lshlrev_b32_e32 v45, 1, v45
	v_lshlrev_b32_e32 v46, 1, v46
	v_lshlrev_b32_e32 v47, 1, v47
	v_lshlrev_b32_e32 v48, 1, v48
	s_clause 0x7
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v44, v44, s[8:11], 0 offen
	buffer_load_u16 v45, v45, s[8:11], 0 offen
	buffer_load_u16 v46, v46, s[8:11], 0 offen
	buffer_load_u16 v47, v47, s[8:11], 0 offen
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v7, 16, v7
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v46, 16, v46
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v4, v7 :: v_dual_lshlrev_b32 v48, 16, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 299 13 is_stmt 0              ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v7, v7, v41 :: v_dual_mul_f32 v46, v4, v46
	.loc	1 298 18 is_stmt 1              ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v47, v4, v47 :: v_dual_lshlrev_b32 v44, 16, v44
	.loc	1 299 13 is_stmt 0              ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v2, v46, v2 :: v_dual_mul_f32 v45, v4, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v1, v47, v1 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v44, v4, v44 :: v_dual_mul_f32 v3, v45, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v6, v4, v6 :: v_dual_lshlrev_b32 v5, 16, v5
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v40, v44, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v6, v6, v42 :: v_dual_mul_f32 v5, v4, v5
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v4, v4, v48 :: v_dual_mul_f32 v5, v5, v43
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v0, v4, v0
	ds_store_b32 v24, v5
	ds_store_b32 v25, v6
	ds_store_b32 v26, v7
	ds_store_b32 v27, v40
	ds_store_b32 v28, v3
	ds_store_b32 v29, v2
	ds_store_b32 v30, v1
	ds_store_b32 v31, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v32
	ds_load_b32 v1, v33
	ds_load_b32 v2, v34
	ds_load_b32 v3, v35
	ds_load_b32 v4, v36
	ds_load_b32 v5, v37
	ds_load_b32 v6, v38
	ds_load_b32 v7, v39
	v_add3_u32 v40, s40, s6, v9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 334 13 is_stmt 1              ; generate_amdgcn.py:334:13
	v_lshlrev_b32_e32 v41, 2, v40
	v_add_lshl_u32 v42, v40, s29, 2
	v_add_lshl_u32 v44, v40, s31, 2
	v_add_lshl_u32 v43, v40, s30, 2
	v_add_lshl_u32 v45, v40, s33, 2
	v_add_lshl_u32 v46, v40, s34, 2
	v_add_lshl_u32 v47, v40, s35, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v41, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v1, v42, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v2, v43, s[12:15], 0 offen
	v_add_lshl_u32 v0, v40, s3, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v3, v44, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v4, v45, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v5, v46, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v6, v47, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v7, v0, s[12:15], 0 offen
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 271 20                        ; generate_amdgcn.py:271:20
	s_abs_i32 s6, s2
	s_ashr_i32 s40, s2, 31
	s_mul_hi_u32 s7, s6, s38
	s_xor_b32 s40, s40, s37
	s_mul_i32 s41, s7, s28
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	s_sub_i32 s6, s6, s41
	s_add_i32 s41, s7, 1
	s_sub_i32 s42, s6, s28
	s_cmp_ge_u32 s6, s28
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	s_cselect_b32 s7, s41, s7
	s_cselect_b32 s6, s42, s6
	s_add_i32 s41, s7, 1
	s_cmp_ge_u32 s6, s28
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	s_cselect_b32 s6, s41, s7
	v_mov_b32_e32 v1, 0
	s_xor_b32 s6, s6, s40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s40
	.loc	1 272 23                        ; generate_amdgcn.py:272:23
	s_lshl_b32 s40, s6, 2
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_mul_i32 s6, s6, s1
	.loc	1 273 35                        ; generate_amdgcn.py:273:35
	s_sub_i32 s7, s26, s40
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_sub_i32 s44, s2, s6
	.loc	1 273 24                        ; generate_amdgcn.py:273:24
	s_min_i32 s42, s7, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_abs_i32 s7, s42
	s_cvt_f32_u32 s41, s7
	s_sub_i32 s43, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s41
	v_readfirstlane_b32 s41, v0
	v_mov_b32_e32 v0, 0
	s_mul_f32 s41, s41, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s41, s41
	s_mul_i32 s43, s43, s41
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s41, s43
	s_abs_i32 s43, s44
	s_add_i32 s41, s41, s6
	s_xor_b32 s6, s44, s42
	s_mul_hi_u32 s41, s43, s41
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s45, s41, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s43, s43, s45
	s_add_i32 s45, s41, 1
	s_sub_i32 s46, s43, s7
	s_cmp_ge_u32 s43, s7
	s_cselect_b32 s41, s45, s41
	s_cselect_b32 s43, s46, s43
	s_add_i32 s45, s41, 1
	s_cmp_ge_u32 s43, s7
	s_cselect_b32 s7, s45, s41
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_and_b32 vcc_lo, exec_lo, s0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s41, s7, s6
	.loc	1 274 32                        ; generate_amdgcn.py:274:32
	s_mul_i32 s42, s41, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s42, s44, s42
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_add_i32 s42, s42, s40
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 276 18 is_stmt 1              ; generate_amdgcn.py:276:18
	s_lshl_b32 s40, s42, 4
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_add_u32 v1, s7, 7, v20
	v_mov_b32_e32 v0, 0
	s_lshl_b32 s6, s6, 7
	v_add_nc_u32_e32 v40, s40, v10
	s_mov_b32 s42, s36
	v_subrev_nc_u32_e32 v41, s6, v1
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v7, v0
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 287 26                        ; generate_amdgcn.py:287:26
	buffer_load_u8 v44, v40, s[16:19], 0 offen
	.loc	1 294 26                        ; generate_amdgcn.py:294:26
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_add_nc_u32_e32 v40, s24, v40
	.loc	1 294 26                        ; generate_amdgcn.py:294:26
	buffer_load_b64 v[42:43], v41, s[4:7], 0 offen
	.loc	1 287 26                        ; generate_amdgcn.py:287:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_add_nc_u32_e32 v41, s39, v41
	s_add_i32 s42, s42, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s42, 0
	.loc	1 287 26                        ; generate_amdgcn.py:287:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v11, v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 295 27                        ; generate_amdgcn.py:295:27
	ds_load_u8 v44, v21
	ds_load_u8 v45, v21 offset:16
	ds_load_u8 v46, v21 offset:32
	ds_load_u8 v47, v21 offset:48
	ds_load_u8 v48, v21 offset:112
	ds_load_u8 v49, v21 offset:96
	ds_load_u8 v50, v21 offset:80
	ds_load_u8 v51, v21 offset:64
	ds_load_u8 v52, v21 offset:176
	ds_load_u8 v53, v21 offset:240
	ds_load_u8 v54, v21 offset:224
	ds_load_u8 v55, v21 offset:208
	ds_load_u8 v56, v21 offset:192
	ds_load_u8 v57, v21 offset:160
	ds_load_u8 v58, v21 offset:144
	ds_load_u8 v59, v21 offset:128
	.loc	1 294 26                        ; generate_amdgcn.py:294:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v22, v[42:43]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 295 27                        ; generate_amdgcn.py:295:27
	ds_load_u8 v42, v23 offset:640
	ds_load_u8 v43, v23 offset:896
	ds_load_u8 v60, v23 offset:768
	ds_load_u8 v61, v23 offset:512
	ds_load_u8 v62, v23 offset:128
	ds_load_u8 v63, v23 offset:384
	ds_load_u8 v64, v23 offset:256
	ds_load_u8 v65, v23
	ds_load_u8 v66, v23 offset:1664
	ds_load_u8 v67, v23 offset:1920
	ds_load_u8 v68, v23 offset:1792
	ds_load_u8 v69, v23 offset:1536
	ds_load_u8 v70, v23 offset:1152
	ds_load_u8 v71, v23 offset:1280
	ds_load_u8 v72, v23 offset:1024
	ds_load_u8 v73, v23 offset:1408
	v_perm_b32 v44, v44, v45, 0xc0c0004
	v_perm_b32 v45, v46, v47, 0xc0c0004
	v_perm_b32 v48, v49, v48, 0xc0c0004
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_perm_b32 v47, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v53, v60, v43, 0xc0c0004
	v_perm_b32 v46, v56, v55, 0xc0c0004
	v_perm_b32 v51, v57, v52, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v52, v61, v42, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v54, v65, v62, 0xc0c0004
	v_perm_b32 v55, v64, v63, 0xc0c0004
	v_perm_b32 v49, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v56, v69, v66, 0xc0c0004
	v_perm_b32 v57, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v58, v72, v70, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v71, v73, 0xc0c0004
	v_lshl_or_b32 v43, v48, 16, v50
	v_lshl_or_b32 v42, v45, 16, v44
	v_lshl_or_b32 v45, v53, 16, v52
	v_lshl_or_b32 v44, v55, 16, v54
	v_lshl_or_b32 v47, v47, 16, v46
	v_lshl_or_b32 v46, v51, 16, v49
	v_lshl_or_b32 v49, v57, 16, v56
	v_lshl_or_b32 v48, v59, 16, v58
	v_wmma_i32_16x16x16_iu4 v[0:7], v[44:45], v[42:43], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[48:49], v[46:47], v[0:7] neg_lo:[1,1,0]
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 296 19 is_stmt 1              ; generate_amdgcn.py:296:19
	v_cvt_f32_i32_e32 v43, v0
	v_cvt_f32_i32_e32 v42, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v41, v2
	v_cvt_f32_i32_e32 v40, v3
	v_cvt_f32_i32_e32 v3, v4
	v_cvt_f32_i32_e32 v2, v5
	v_cvt_f32_i32_e32 v1, v6
	v_cvt_f32_i32_e32 v0, v7
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge6
	.loc	1 251 1                         ; generate_amdgcn.py:251:1
	s_endpgm
.Ltmp15:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 47
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
		.amdhsa_inst_pref_size 19
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk.num_vgpr, 74
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2428
; TotalNumSgprs: 49
; NumVgprs: 74
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
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
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	260                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	261                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	281                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk
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
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn128_bk32_gm4_w8_s1_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     74
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
