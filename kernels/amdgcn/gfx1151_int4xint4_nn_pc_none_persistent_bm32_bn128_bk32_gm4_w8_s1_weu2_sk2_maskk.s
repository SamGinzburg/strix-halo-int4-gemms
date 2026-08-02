	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 251 0                         ; generate_amdgcn.py:251:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:260:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 31
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
	s_lshr_b32 s6, s6, 27
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
	s_ashr_i32 s24, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s14, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 262 17 is_stmt 1              ; generate_amdgcn.py:262:17
	s_mul_i32 s26, s14, s24
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cmp_ge_i32 s2, s26
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph21
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 263 24 is_stmt 1              ; generate_amdgcn.py:263:24
	s_lshl_b32 s1, s14, 2
	.loc	1 283 27                        ; generate_amdgcn.py:283:27
	s_lshl_b32 s3, s3, 4
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_and_b32_e32 v2, 7, v0
	v_lshlrev_b32_e32 v7, 1, v0
	v_bfe_i32 v8, v0, 6, 1
	v_bfe_i32 v9, v0, 3, 1
	v_lshlrev_b32_e32 v10, 2, v0
	v_lshlrev_b32_e32 v16, 1, v2
	v_lshlrev_b32_e32 v2, 4, v2
	v_and_b32_e32 v7, 0x17e, v7
	v_and_b32_e32 v8, 0x88, v8
	v_bfe_i32 v11, v0, 0, 1
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_bfe_i32 v5, v0, 7, 1
	v_and_or_b32 v2, 0x88, v9, v2
	v_xor_b32_e32 v7, v8, v7
	v_and_b32_e32 v8, 0x3f8, v10
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s15, 31
	v_and_b32_e32 v9, 0x440, v11
	s_add_i32 s0, s15, s0
	v_and_b32_e32 v11, 1, v0
	s_ashr_i32 s27, s0, 1
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_lshrrev_b32_e32 v3, 4, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:281:36 ]
	s_add_i32 s0, s27, 31
.Ltmp12:
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v4, 0x70, v1
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_ashr_i32 s16, s0, 31
.Ltmp14:
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v20, 3, v0
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_lshr_b32 s17, s16, 27
	s_mov_b32 s16, s4
	s_add_i32 s0, s0, s17
	s_mov_b32 s4, s6
	s_ashr_i32 s0, s0, 5
	s_cmp_gt_i32 s15, 1
.Ltmp16:
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_and_b32_e32 v21, 15, v0
	s_cselect_b32 s15, -1, 0
	s_abs_i32 s28, s1
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v1, 0x7f, v0
	s_cvt_f32_u32 s6, s28
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v6, 7, v0
	v_lshlrev_b32_e32 v12, 3, v0
	v_and_b32_e32 v0, 14, v0
	v_rcp_iflag_f32_e32 v17, s6
	v_xor_b32_e32 v8, v9, v8
	v_lshlrev_b32_e32 v9, 6, v11
	v_and_b32_e32 v5, 0x440, v5
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_or_b32 v22, v3, 1, v4
	v_sub_nc_u32_e32 v32, s27, v3
	v_lshl_or_b32 v33, v0, 10, v8
	v_and_b32_e32 v8, 0x380, v12
	v_lshlrev_b32_e32 v0, 2, v0
	v_xor_b32_e32 v5, v5, v9
	v_readfirstlane_b32 s6, v17
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	v_or_b32_e32 v3, s3, v3
	v_mad_u64_u32 v[17:18], null, s25, v6, v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or3_b32 v34, v8, v0, v5
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v1, s25, v3
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_cvt_u32_f32 s6, s6
	s_sub_i32 s7, 0, s28
	v_xor_b32_e32 v10, 8, v2
	v_add_nc_u32_e32 v4, 0, v4
	v_xor_b32_e32 v9, 8, v33
	v_xor_b32_e32 v11, 16, v33
	v_xor_b32_e32 v13, 24, v33
	v_xor_b32_e32 v0, 32, v33
	v_xor_b32_e32 v5, 40, v33
	v_xor_b32_e32 v8, 48, v33
	v_xor_b32_e32 v14, 56, v33
	v_xor_b32_e32 v15, 0x808, v34
	v_xor_b32_e32 v19, 0x1010, v34
	v_xor_b32_e32 v50, 0x1818, v34
	v_xor_b32_e32 v51, 0x2020, v34
	v_xor_b32_e32 v52, 0x2828, v34
	v_xor_b32_e32 v53, 0x3030, v34
	v_xor_b32_e32 v54, 0x3838, v34
	v_cndmask_b32_e64 v3, 0, 1, s15
	s_mul_i32 s7, s7, s6
	s_max_i32 s45, s0, 1
	s_mul_hi_u32 s0, s6, s7
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_or_b32_e32 v23, 16, v21
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_or_b32_e32 v24, 2, v22
	v_or_b32_e32 v25, 4, v22
	v_or_b32_e32 v26, 6, v22
	v_or_b32_e32 v27, 8, v22
	v_or_b32_e32 v28, 10, v22
	v_or_b32_e32 v29, 12, v22
	v_or_b32_e32 v30, 14, v22
	v_sub_nc_u32_e32 v31, s27, v16
	s_add_i32 s47, s6, s0
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_lshl_add_u32 v35, v21, 3, v1
	v_cmp_ne_u32_e64 s0, 1, v3
	v_add_nc_u32_e32 v36, 0, v7
	v_add_nc_u32_e32 v37, 0, v2
	v_add_nc_u32_e32 v38, 0, v10
	v_add_nc_u32_e32 v39, 0, v12
	v_add_nc_u32_e32 v40, v4, v21
	v_add_nc_u32_e32 v41, 0, v9
	v_add_nc_u32_e32 v42, 0, v11
	v_add_nc_u32_e32 v43, 0, v13
	v_add_nc_u32_e32 v44, 0, v0
	v_add_nc_u32_e32 v45, 0, v5
	v_add_nc_u32_e32 v46, 0, v8
	v_add_nc_u32_e32 v47, 0, v14
	v_add_nc_u32_e32 v48, 0, v15
	v_add_nc_u32_e32 v49, 0, v19
	v_add_nc_u32_e32 v50, 0, v50
	v_add_nc_u32_e32 v51, 0, v51
	v_add_nc_u32_e32 v52, 0, v52
	v_add_nc_u32_e32 v53, 0, v53
	v_add_nc_u32_e32 v54, 0, v54
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
	s_mul_i32 s36, s25, 14
	s_lshl_b32 s37, s25, 4
	s_mul_i32 s38, s25, 18
	s_mul_i32 s39, s25, 20
	s_mul_i32 s40, s25, 22
	s_mul_i32 s41, s25, 24
	s_mul_i32 s42, s25, 26
	s_mul_i32 s43, s25, 28
	s_mul_i32 s44, s25, 30
	s_and_b32 s13, s13, 0xffff
	s_bfe_i32 s46, s14, 0x1001d
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_lshl_b32 s48, s25, 5
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
	.loc	1 277 18                        ; generate_amdgcn.py:277:18
	s_lshl_b32 s6, s50, 7
	.loc	1 297 26                        ; generate_amdgcn.py:297:26
	v_or_b32_e32 v8, s49, v21
	.loc	1 298 26                        ; generate_amdgcn.py:298:26
	v_or_b32_e32 v10, s6, v22
	v_or_b32_e32 v11, s6, v24
	v_or_b32_e32 v12, s6, v25
	v_or_b32_e32 v13, s6, v26
	v_or_b32_e32 v14, s6, v27
	v_or_b32_e32 v15, s6, v28
	v_or_b32_e32 v61, s6, v29
	v_or_b32_e32 v62, s6, v30
	.loc	1 298 18 is_stmt 0              ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v10, 1, v10
	v_lshlrev_b32_e32 v11, 1, v11
	v_lshlrev_b32_e32 v12, 1, v12
	v_lshlrev_b32_e32 v13, 1, v13
	v_lshlrev_b32_e32 v14, 1, v14
	v_lshlrev_b32_e32 v15, 1, v15
	v_lshlrev_b32_e32 v61, 1, v61
	v_lshlrev_b32_e32 v62, 1, v62
	s_clause 0x7
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v61, v61, s[8:11], 0 offen
	buffer_load_u16 v62, v62, s[8:11], 0 offen
	.loc	1 297 26 is_stmt 1              ; generate_amdgcn.py:297:26
	v_or_b32_e32 v9, s49, v23
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_mul_i32 s49, s49, s25
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_add_i32 s2, s2, 20
	v_add3_u32 v63, s49, s6, v17
	s_cmp_lt_i32 s2, s26
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v67, v63, s29, 2
	v_add_lshl_u32 v68, v63, s30, 2
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v14, 16, v14
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v61, 16, v61
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	v_lshlrev_b32_e32 v8, 1, v8
	v_lshlrev_b32_e32 v9, 1, v9
	s_clause 0x1
	buffer_load_u16 v8, v8, s[20:23], 0 offen
	buffer_load_u16 v9, v9, s[20:23], 0 offen
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v15, 16, v15
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v62, 16, v62
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v81, v9, v15 :: v_dual_lshlrev_b32 v8, 16, v8
	v_dual_mul_f32 v70, v8, v11 :: v_dual_mul_f32 v77, v9, v10
	v_dual_mul_f32 v69, v8, v10 :: v_dual_lshlrev_b32 v12, 16, v12
	v_mul_f32_e32 v76, v8, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 299 13 is_stmt 0              ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v10, v70, v59 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_mul_f32_e32 v62, v9, v62
	v_mul_f32_e32 v78, v9, v12
	.loc	1 334 13 is_stmt 1              ; generate_amdgcn.py:334:13
	v_lshlrev_b32_e32 v66, 2, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v72, v8, v13 :: v_dual_add_nc_u32 v65, 0, v34
	v_mul_f32_e32 v79, v9, v13
	.loc	1 299 13 is_stmt 0              ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v13, v78, v5
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v73, v8, v14 :: v_dual_add_nc_u32 v64, 0, v33
	v_mul_f32_e32 v80, v9, v14
	v_dual_mul_f32 v11, v9, v11 :: v_dual_mul_f32 v14, v72, v57
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v18, v76, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v56, v73, v56 :: v_dual_mul_f32 v75, v8, v61
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_mul_f32_e32 v61, v9, v61
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v9, v77, v7
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_mul_f32_e32 v71, v8, v12
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v11, v11, v6
	v_mul_f32_e32 v57, v80, v3
	v_mul_f32_e32 v59, v81, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v61, v61, v1 :: v_dual_mul_f32 v12, v71, v58
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_mul_f32_e32 v74, v8, v15
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v8, v69, v60
	v_mul_f32_e32 v15, v79, v4
	v_dual_mul_f32 v60, v75, v19 :: v_dual_mul_f32 v19, v62, v0
	v_mul_f32_e32 v58, v74, v55
	ds_store_b64 v64, v[8:9]
	ds_store_b64 v41, v[10:11]
	ds_store_b64 v42, v[12:13]
	ds_store_b64 v43, v[14:15]
	ds_store_b64 v44, v[56:57]
	ds_store_b64 v45, v[58:59]
	ds_store_b64 v46, v[60:61]
	ds_store_b64 v47, v[18:19]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v65
	ds_load_b64 v[2:3], v48
	ds_load_b64 v[4:5], v49
	ds_load_b64 v[6:7], v50
	ds_load_b64 v[8:9], v51
	ds_load_b64 v[10:11], v52
	ds_load_b64 v[12:13], v53
	ds_load_b64 v[14:15], v54
	.loc	1 334 13 is_stmt 1              ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v18, v63, s31, 2
	v_add_lshl_u32 v19, v63, s33, 2
	v_add_lshl_u32 v55, v63, s34, 2
	v_add_lshl_u32 v56, v63, s35, 2
	v_add_lshl_u32 v57, v63, s36, 2
	v_add_lshl_u32 v58, v63, s37, 2
	v_add_lshl_u32 v59, v63, s38, 2
	v_add_lshl_u32 v60, v63, s39, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v66, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v67, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v4, v68, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v6, v18, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v8, v19, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v10, v55, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v12, v56, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v14, v57, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v58, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v59, s[12:15], 0 offen
	buffer_atomic_add_f32 v5, v60, s[12:15], 0 offen
	v_add_lshl_u32 v61, v63, s40, 2
	v_add_lshl_u32 v62, v63, s41, 2
	v_add_lshl_u32 v64, v63, s42, 2
	v_add_lshl_u32 v65, v63, s43, 2
	v_add_lshl_u32 v0, v63, s44, 2
	s_clause 0x4
	buffer_atomic_add_f32 v7, v61, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v62, s[12:15], 0 offen
	buffer_atomic_add_f32 v11, v64, s[12:15], 0 offen
	buffer_atomic_add_f32 v13, v65, s[12:15], 0 offen
	buffer_atomic_add_f32 v15, v0, s[12:15], 0 offen
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 271 20                        ; generate_amdgcn.py:271:20
	s_abs_i32 s6, s2
	s_ashr_i32 s49, s2, 31
	s_mul_hi_u32 s7, s6, s47
	s_xor_b32 s49, s49, s46
	s_mul_i32 s50, s7, s28
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	s_sub_i32 s6, s6, s50
	s_add_i32 s50, s7, 1
	s_sub_i32 s51, s6, s28
	s_cmp_ge_u32 s6, s28
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	s_cselect_b32 s7, s50, s7
	s_cselect_b32 s6, s51, s6
	s_add_i32 s50, s7, 1
	s_cmp_ge_u32 s6, s28
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	s_cselect_b32 s6, s50, s7
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	s_xor_b32 s6, s6, s49
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	s_sub_i32 s6, s6, s49
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	.loc	1 272 23                        ; generate_amdgcn.py:272:23
	s_lshl_b32 s49, s6, 2
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_mul_i32 s6, s6, s1
	.loc	1 273 35                        ; generate_amdgcn.py:273:35
	s_sub_i32 s7, s24, s49
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_sub_i32 s53, s2, s6
	.loc	1 273 24                        ; generate_amdgcn.py:273:24
	s_min_i32 s51, s7, 4
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_abs_i32 s7, s51
	v_mov_b32_e32 v1, 0
	s_cvt_f32_u32 s50, s7
	s_sub_i32 s52, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s50
	v_readfirstlane_b32 s50, v0
	v_mov_b32_e32 v0, 0
	s_mul_f32 s50, s50, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s50, s50
	s_mul_i32 s52, s52, s50
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s50, s52
	s_abs_i32 s52, s53
	s_add_i32 s50, s50, s6
	s_xor_b32 s6, s53, s51
	s_mul_hi_u32 s50, s52, s50
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s54, s50, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s52, s52, s54
	s_add_i32 s54, s50, 1
	s_sub_i32 s55, s52, s7
	s_cmp_ge_u32 s52, s7
	s_cselect_b32 s50, s54, s50
	s_cselect_b32 s52, s55, s52
	s_add_i32 s54, s50, 1
	s_cmp_ge_u32 s52, s7
	s_cselect_b32 s7, s54, s50
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_and_b32 vcc_lo, exec_lo, s0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s50, s7, s6
	.loc	1 274 32                        ; generate_amdgcn.py:274:32
	s_mul_i32 s51, s50, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s51, s53, s51
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_add_i32 s51, s51, s49
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 276 18 is_stmt 1              ; generate_amdgcn.py:276:18
	s_lshl_b32 s49, s51, 5
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_add_u32 v1, s7, 7, v35
	v_mov_b32_e32 v0, 0
	v_add_nc_u32_e32 v2, s49, v20
	s_lshl_b32 s6, s6, 7
	s_mov_b32 s51, s3
	v_subrev_nc_u32_e32 v55, s6, v1
	v_mov_b32_e32 v1, v0
	v_mad_u64_u32 v[18:19], null, s27, v2, v[16:17]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v8, v0
	v_mov_b32_e32 v9, v0
	v_mov_b32_e32 v10, v0
	v_mov_b32_e32 v11, v0
	v_mov_b32_e32 v12, v0
	v_mov_b32_e32 v13, v0
	v_mov_b32_e32 v14, v0
	v_mov_b32_e32 v15, v0
	s_mov_b32 s52, s45
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 285 27                        ; generate_amdgcn.py:285:27
	v_cmp_lt_i32_e32 vcc_lo, s51, v32
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	v_add_nc_u32_e32 v19, s51, v18
	.loc	1 294 26                        ; generate_amdgcn.py:294:26
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_add_i32 s52, s52, -1
	.loc	1 294 26                        ; generate_amdgcn.py:294:26
	v_cndmask_b32_e32 v56, 0x80000000, v55, vcc_lo
	.loc	1 284 27                        ; generate_amdgcn.py:284:27
	v_cmp_lt_i32_e32 vcc_lo, s51, v31
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_add_nc_u32_e32 v55, s48, v55
	s_add_i32 s51, s51, 32
	s_cmp_lg_u32 s52, 0
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 294 26                        ; generate_amdgcn.py:294:26
	buffer_load_b64 v[64:65], v56, s[4:7], 0 offen
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	buffer_load_u16 v19, v19, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b16 v36, v19
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[56:59], v37 offset1:32
	ds_load_2addr_b64 v[60:63], v38 offset1:32
	.loc	1 294 26                        ; generate_amdgcn.py:294:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v39, v[64:65]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 295 27                        ; generate_amdgcn.py:295:27
	ds_load_u8 v19, v40 offset:640
	ds_load_u8 v64, v40 offset:896
	ds_load_u8 v65, v40 offset:768
	ds_load_u8 v66, v40 offset:512
	ds_load_u8 v67, v40 offset:128
	ds_load_u8 v68, v40 offset:384
	ds_load_u8 v69, v40 offset:256
	ds_load_u8 v70, v40
	ds_load_u8 v71, v40 offset:1664
	ds_load_u8 v72, v40 offset:1920
	ds_load_u8 v73, v40 offset:1792
	ds_load_u8 v74, v40 offset:1536
	ds_load_u8 v75, v40 offset:1152
	ds_load_u8 v76, v40 offset:1280
	ds_load_u8 v77, v40 offset:1024
	ds_load_u8 v78, v40 offset:1408
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v19, v66, v19, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v66, v70, v67, 0xc0c0004
	v_perm_b32 v67, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v65, v64, 16, v19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v69, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v74, v71, 0xc0c0004
	v_lshl_or_b32 v64, v67, 16, v66
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v70, v77, v75, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v76, v78, 0xc0c0004
	v_lshl_or_b32 v67, v69, 16, v68
	v_wmma_i32_16x16x16_iu4 v[0:7], v[64:65], v[56:57], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[64:65], v[58:59], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v66, v71, 16, v70
	v_wmma_i32_16x16x16_iu4 v[0:7], v[66:67], v[60:61], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[66:67], v[62:63], v[8:15] neg_lo:[1,1,0]
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 296 19 is_stmt 1              ; generate_amdgcn.py:296:19
	v_cvt_f32_i32_e32 v60, v0
	v_cvt_f32_i32_e32 v59, v1
	v_cvt_f32_i32_e32 v58, v2
	v_cvt_f32_i32_e32 v57, v3
	v_cvt_f32_i32_e32 v56, v4
	v_cvt_f32_i32_e32 v55, v5
	v_cvt_f32_i32_e32 v19, v6
	v_cvt_f32_i32_e32 v18, v7
	v_cvt_f32_i32_e32 v7, v8
	v_cvt_f32_i32_e32 v6, v9
	v_cvt_f32_i32_e32 v5, v10
	v_cvt_f32_i32_e32 v4, v11
	v_cvt_f32_i32_e32 v3, v12
	v_cvt_f32_i32_e32 v2, v13
	v_cvt_f32_i32_e32 v1, v14
	v_cvt_f32_i32_e32 v0, v15
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge22
	.loc	1 251 1                         ; generate_amdgcn.py:251:1
	s_endpgm
.Ltmp17:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk
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
		.amdhsa_next_free_sgpr 56
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
		.amdhsa_inst_pref_size 21
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.num_vgpr, 82
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2644
; TotalNumSgprs: 58
; NumVgprs: 82
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 58
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     82
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
