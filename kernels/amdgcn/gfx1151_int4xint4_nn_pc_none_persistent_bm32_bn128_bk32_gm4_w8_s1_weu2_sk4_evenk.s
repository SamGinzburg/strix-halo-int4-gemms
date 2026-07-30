	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 222 0                         ; generate_amdgcn.py:222:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:231:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 31
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:232:17 ]
	s_add_i32 s5, s25, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_lshr_b32 s6, s6, 27
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_lshr_b32 s7, s7, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_ashr_i32 s24, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_ashr_i32 s14, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 233 17 is_stmt 1              ; generate_amdgcn.py:233:17
	s_mul_i32 s26, s14, s24
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cmp_ge_i32 s2, s26
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph20
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 254 27 is_stmt 1              ; generate_amdgcn.py:254:27
	s_lshl_b32 s0, s3, 4
	.loc	1 239 14                        ; generate_amdgcn.py:239:14
	v_and_b32_e32 v2, 7, v0
	v_lshlrev_b32_e32 v7, 1, v0
	v_bfe_i32 v8, v0, 6, 1
	.loc	1 234 24                        ; generate_amdgcn.py:234:24
	s_lshl_b32 s1, s14, 2
	v_bfe_i32 v10, v0, 3, 1
	v_lshlrev_b32_e32 v9, 4, v2
	v_and_b32_e32 v7, 0x17e, v7
	v_and_b32_e32 v8, 0x88, v8
	v_lshlrev_b32_e32 v11, 2, v0
	v_bfe_i32 v12, v0, 0, 1
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_bfe_i32 v5, v0, 7, 1
	v_and_or_b32 v9, 0x88, v10, v9
	v_xor_b32_e32 v7, v8, v7
	v_and_b32_e32 v8, 0x3f8, v11
	v_and_b32_e32 v10, 0x440, v12
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s3, s15, 31
	v_and_b32_e32 v12, 1, v0
	s_add_i32 s3, s15, s3
	.loc	1 239 14                        ; generate_amdgcn.py:239:14
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_ashr_i32 s3, s3, 1
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_lshrrev_b32_e32 v20, 3, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:252:36 ]
	s_add_i32 s16, s3, 63
.Ltmp12:
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_and_b32_e32 v21, 15, v0
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:252:36 ]
	s_ashr_i32 s17, s16, 31
.Ltmp14:
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_and_b32_e32 v4, 0x70, v1
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:252:36 ]
	s_lshr_b32 s17, s17, 26
.Ltmp16:
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_and_b32_e32 v1, 0x7f, v0
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:252:36 ]
	s_add_i32 s16, s16, s17
.Ltmp18:
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_lshrrev_b32_e32 v6, 7, v0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:252:36 ]
	s_ashr_i32 s20, s16, 6
	s_cmp_gt_i32 s15, 1
	s_mov_b32 s16, s4
	s_cselect_b32 s15, -1, 0
	s_abs_i32 s27, s1
	s_mov_b32 s4, s6
	s_cvt_f32_u32 s6, s27
	v_lshlrev_b32_e32 v13, 3, v0
	v_and_b32_e32 v0, 14, v0
	v_xor_b32_e32 v8, v10, v8
	v_rcp_iflag_f32_e32 v16, s6
	v_lshlrev_b32_e32 v10, 6, v12
	v_and_b32_e32 v5, 0x440, v5
.Ltmp20:
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_and_or_b32 v22, v3, 1, v4
	v_lshl_or_b32 v31, v0, 10, v8
	v_and_b32_e32 v8, 0x380, v13
	v_lshlrev_b32_e32 v0, 2, v0
	v_xor_b32_e32 v5, v5, v10
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	v_or_b32_e32 v3, s0, v3
	v_xor_b32_e32 v11, 8, v9
	v_readfirstlane_b32 s6, v16
	v_mad_u64_u32 v[16:17], null, s25, v6, v[1:2]
	v_or3_b32 v32, v8, v0, v5
	v_mul_lo_u32 v1, s25, v3
	s_delay_alu instid0(VALU_DEP_4)
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_add_nc_u32_e32 v4, 0, v4
	v_xor_b32_e32 v10, 8, v31
	v_xor_b32_e32 v12, 16, v31
	v_xor_b32_e32 v14, 24, v31
	v_xor_b32_e32 v0, 32, v31
	v_xor_b32_e32 v5, 40, v31
	v_xor_b32_e32 v8, 48, v31
	v_xor_b32_e32 v15, 56, v31
	v_xor_b32_e32 v18, 0x808, v32
	v_xor_b32_e32 v19, 0x1010, v32
	v_xor_b32_e32 v48, 0x1818, v32
	v_xor_b32_e32 v49, 0x2020, v32
	v_xor_b32_e32 v50, 0x2828, v32
	v_xor_b32_e32 v51, 0x3030, v32
	v_xor_b32_e32 v52, 0x3838, v32
	s_cvt_u32_f32 s6, s6
	v_cndmask_b32_e64 v3, 0, 1, s15
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_sub_i32 s7, 0, s27
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_or_b32_e32 v23, 16, v21
	s_mul_i32 s7, s7, s6
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_or_b32_e32 v24, 2, v22
	v_or_b32_e32 v25, 4, v22
	v_or_b32_e32 v26, 6, v22
	v_or_b32_e32 v27, 8, v22
	v_or_b32_e32 v28, 10, v22
	v_or_b32_e32 v29, 12, v22
	v_or_b32_e32 v30, 14, v22
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v33, v21, 3, v1
	v_lshl_or_b32 v17, v2, 1, s0
	v_cmp_ne_u32_e64 s0, 1, v3
	v_add_nc_u32_e32 v34, 0, v7
	v_add_nc_u32_e32 v35, 0, v9
	v_add_nc_u32_e32 v36, 0, v11
	v_add_nc_u32_e32 v37, 0, v13
	v_add_nc_u32_e32 v38, v4, v21
	v_add_nc_u32_e32 v39, 0, v10
	v_add_nc_u32_e32 v40, 0, v12
	v_add_nc_u32_e32 v41, 0, v14
	v_add_nc_u32_e32 v42, 0, v0
	v_add_nc_u32_e32 v43, 0, v5
	v_add_nc_u32_e32 v44, 0, v8
	v_add_nc_u32_e32 v45, 0, v15
	v_add_nc_u32_e32 v46, 0, v18
	v_add_nc_u32_e32 v47, 0, v19
	v_add_nc_u32_e32 v48, 0, v48
	v_add_nc_u32_e32 v49, 0, v49
	v_add_nc_u32_e32 v50, 0, v50
	v_add_nc_u32_e32 v51, 0, v51
	v_add_nc_u32_e32 v52, 0, v52
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mul_hi_u32 s7, s6, s7
	s_lshl_b32 s28, s25, 1
	s_lshl_b32 s29, s25, 2
	s_mul_i32 s30, s25, 6
	s_lshl_b32 s31, s25, 3
	s_mul_i32 s33, s25, 10
	s_mul_i32 s34, s25, 12
	s_mul_i32 s35, s25, 14
	s_lshl_b32 s36, s25, 4
	s_mul_i32 s37, s25, 18
	s_mul_i32 s38, s25, 20
	s_mul_i32 s39, s25, 22
	s_mul_i32 s40, s25, 24
	s_mul_i32 s41, s25, 26
	s_mul_i32 s42, s25, 28
	s_mul_i32 s43, s25, 30
	s_and_b32 s13, s13, 0xffff
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_max_i32 s44, s20, 1
	s_bfe_i32 s45, s14, 0x1001d
	s_add_i32 s46, s6, s7
	s_lshl_b32 s47, s25, 6
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
	.loc	1 248 18                        ; generate_amdgcn.py:248:18
	s_lshl_b32 s6, s49, 7
	.loc	1 268 26                        ; generate_amdgcn.py:268:26
	v_or_b32_e32 v8, s48, v21
	.loc	1 269 26                        ; generate_amdgcn.py:269:26
	v_or_b32_e32 v10, s6, v22
	v_or_b32_e32 v11, s6, v24
	v_or_b32_e32 v12, s6, v25
	v_or_b32_e32 v13, s6, v26
	v_or_b32_e32 v14, s6, v27
	v_or_b32_e32 v15, s6, v28
	v_or_b32_e32 v59, s6, v29
	v_or_b32_e32 v60, s6, v30
	.loc	1 269 18 is_stmt 0              ; generate_amdgcn.py:269:18
	v_lshlrev_b32_e32 v10, 1, v10
	v_lshlrev_b32_e32 v11, 1, v11
	v_lshlrev_b32_e32 v12, 1, v12
	v_lshlrev_b32_e32 v13, 1, v13
	v_lshlrev_b32_e32 v14, 1, v14
	v_lshlrev_b32_e32 v15, 1, v15
	v_lshlrev_b32_e32 v59, 1, v59
	v_lshlrev_b32_e32 v60, 1, v60
	s_clause 0x7
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v59, v59, s[8:11], 0 offen
	buffer_load_u16 v60, v60, s[8:11], 0 offen
	.loc	1 268 26 is_stmt 1              ; generate_amdgcn.py:268:26
	v_or_b32_e32 v9, s48, v23
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_mul_i32 s48, s48, s25
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_add_i32 s2, s2, 20
	v_add3_u32 v61, s48, s6, v16
	s_cmp_lt_i32 s2, s26
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v65, v61, s28, 2
	v_add_lshl_u32 v66, v61, s29, 2
	.loc	1 269 18                        ; generate_amdgcn.py:269:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v15, 16, v15
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v59, 16, v59
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 268 18                        ; generate_amdgcn.py:268:18
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 269 18                        ; generate_amdgcn.py:269:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v60, 16, v60
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 268 18                        ; generate_amdgcn.py:268:18
	v_lshlrev_b32_e32 v9, 1, v9
	s_clause 0x1
	buffer_load_u16 v8, v8, s[20:23], 0 offen
	buffer_load_u16 v9, v9, s[20:23], 0 offen
	.loc	1 270 13                        ; generate_amdgcn.py:270:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 268 18                        ; generate_amdgcn.py:268:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 270 20                        ; generate_amdgcn.py:270:20
	v_dual_mul_f32 v79, v9, v15 :: v_dual_lshlrev_b32 v8, 16, v8
	v_mul_f32_e32 v67, v8, v10
	v_mul_f32_e32 v69, v8, v12
	.loc	1 269 18                        ; generate_amdgcn.py:269:18
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 270 20                        ; generate_amdgcn.py:270:20
	v_mul_f32_e32 v71, v8, v14
	v_mul_f32_e32 v68, v8, v11
	v_mul_f32_e32 v72, v8, v15
	v_mul_f32_e32 v74, v8, v60
	v_mul_f32_e32 v70, v8, v13
	.loc	1 270 13 is_stmt 0              ; generate_amdgcn.py:270:13
	v_dual_mul_f32 v54, v71, v54 :: v_dual_mul_f32 v73, v8, v59
	v_mul_f32_e32 v8, v67, v58
	.loc	1 270 20                        ; generate_amdgcn.py:270:20
	v_mul_f32_e32 v76, v9, v12
	v_mul_f32_e32 v59, v9, v59
	v_mul_f32_e32 v75, v9, v10
	v_mul_f32_e32 v60, v9, v60
	v_dual_mul_f32 v11, v9, v11 :: v_dual_lshlrev_b32 v64, 2, v61
	.loc	1 270 13                        ; generate_amdgcn.py:270:13
	v_mul_f32_e32 v12, v69, v56
	.loc	1 270 20                        ; generate_amdgcn.py:270:20
	v_dual_mul_f32 v77, v9, v13 :: v_dual_add_nc_u32 v62, 0, v31
	.loc	1 270 13                        ; generate_amdgcn.py:270:13
	v_mul_f32_e32 v13, v76, v5
	.loc	1 270 20                        ; generate_amdgcn.py:270:20
	v_dual_mul_f32 v78, v9, v14 :: v_dual_add_nc_u32 v63, 0, v32
	.loc	1 270 13                        ; generate_amdgcn.py:270:13
	v_dual_mul_f32 v9, v75, v7 :: v_dual_mul_f32 v10, v68, v57
	v_dual_mul_f32 v11, v11, v6 :: v_dual_mul_f32 v14, v70, v55
	v_dual_mul_f32 v15, v77, v4 :: v_dual_mul_f32 v56, v72, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v55, v78, v3
	v_dual_mul_f32 v58, v73, v19 :: v_dual_mul_f32 v57, v79, v2
	v_dual_mul_f32 v18, v74, v18 :: v_dual_mul_f32 v59, v59, v1
	v_mul_f32_e32 v19, v60, v0
	ds_store_b64 v62, v[8:9]
	ds_store_b64 v39, v[10:11]
	ds_store_b64 v40, v[12:13]
	ds_store_b64 v41, v[14:15]
	ds_store_b64 v42, v[54:55]
	ds_store_b64 v43, v[56:57]
	ds_store_b64 v44, v[58:59]
	ds_store_b64 v45, v[18:19]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v63
	ds_load_b64 v[2:3], v46
	ds_load_b64 v[4:5], v47
	ds_load_b64 v[6:7], v48
	ds_load_b64 v[8:9], v49
	ds_load_b64 v[10:11], v50
	ds_load_b64 v[12:13], v51
	ds_load_b64 v[14:15], v52
	.loc	1 305 13 is_stmt 1              ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v18, v61, s30, 2
	v_add_lshl_u32 v19, v61, s31, 2
	v_add_lshl_u32 v53, v61, s33, 2
	v_add_lshl_u32 v54, v61, s34, 2
	v_add_lshl_u32 v55, v61, s35, 2
	v_add_lshl_u32 v56, v61, s36, 2
	v_add_lshl_u32 v57, v61, s37, 2
	v_add_lshl_u32 v58, v61, s38, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v64, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v65, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v4, v66, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v6, v18, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v8, v19, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v10, v53, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v12, v54, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v14, v55, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v56, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v57, s[12:15], 0 offen
	buffer_atomic_add_f32 v5, v58, s[12:15], 0 offen
	v_add_lshl_u32 v59, v61, s39, 2
	v_add_lshl_u32 v60, v61, s40, 2
	v_add_lshl_u32 v62, v61, s41, 2
	v_add_lshl_u32 v63, v61, s42, 2
	v_add_lshl_u32 v0, v61, s43, 2
	s_clause 0x4
	buffer_atomic_add_f32 v7, v59, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v60, s[12:15], 0 offen
	buffer_atomic_add_f32 v11, v62, s[12:15], 0 offen
	buffer_atomic_add_f32 v13, v63, s[12:15], 0 offen
	buffer_atomic_add_f32 v15, v0, s[12:15], 0 offen
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 242 20                        ; generate_amdgcn.py:242:20
	s_abs_i32 s6, s2
	s_ashr_i32 s48, s2, 31
	s_mul_hi_u32 s7, s6, s46
	s_xor_b32 s48, s48, s45
	s_mul_i32 s49, s7, s27
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	s_sub_i32 s6, s6, s49
	s_add_i32 s49, s7, 1
	s_sub_i32 s50, s6, s27
	s_cmp_ge_u32 s6, s27
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	s_cselect_b32 s7, s49, s7
	s_cselect_b32 s6, s50, s6
	s_add_i32 s49, s7, 1
	s_cmp_ge_u32 s6, s27
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	s_cselect_b32 s6, s49, s7
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	s_xor_b32 s6, s6, s48
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	s_sub_i32 s6, s6, s48
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	.loc	1 243 23                        ; generate_amdgcn.py:243:23
	s_lshl_b32 s48, s6, 2
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_mul_i32 s6, s6, s1
	.loc	1 244 35                        ; generate_amdgcn.py:244:35
	s_sub_i32 s7, s24, s48
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_sub_i32 s52, s2, s6
	.loc	1 244 24                        ; generate_amdgcn.py:244:24
	s_min_i32 s50, s7, 4
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	.loc	1 246 17                        ; generate_amdgcn.py:246:17
	s_abs_i32 s7, s50
	v_mov_b32_e32 v1, 0
	s_cvt_f32_u32 s49, s7
	s_sub_i32 s51, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s49
	v_readfirstlane_b32 s49, v0
	v_mov_b32_e32 v0, 0
	s_mul_f32 s49, s49, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s49, s49
	s_mul_i32 s51, s51, s49
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s49, s51
	s_abs_i32 s51, s52
	s_add_i32 s49, s49, s6
	s_xor_b32 s6, s52, s50
	s_mul_hi_u32 s49, s51, s49
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s53, s49, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s51, s51, s53
	s_add_i32 s53, s49, 1
	s_sub_i32 s54, s51, s7
	s_cmp_ge_u32 s51, s7
	s_cselect_b32 s49, s53, s49
	s_cselect_b32 s51, s54, s51
	s_add_i32 s53, s49, 1
	s_cmp_ge_u32 s51, s7
	s_cselect_b32 s7, s53, s49
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s0
	.loc	1 246 17                        ; generate_amdgcn.py:246:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s49, s7, s6
	.loc	1 245 32                        ; generate_amdgcn.py:245:32
	s_mul_i32 s50, s49, s50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s50, s52, s50
	.loc	1 245 17 is_stmt 0              ; generate_amdgcn.py:245:17
	s_add_i32 s50, s50, s48
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 247 18 is_stmt 1              ; generate_amdgcn.py:247:18
	s_lshl_b32 s48, s50, 5
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_add_u32 v1, s7, 7, v33
	v_mov_b32_e32 v0, 0
	v_add_nc_u32_e32 v2, s48, v20
	s_lshl_b32 s6, s6, 7
	s_mov_b32 s50, s44
	v_subrev_nc_u32_e32 v53, s6, v1
	v_mov_b32_e32 v1, v0
	v_mad_u64_u32 v[18:19], null, s3, v2, v[17:18]
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
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 265 26                        ; generate_amdgcn.py:265:26
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	.loc	1 260 26                        ; generate_amdgcn.py:260:26
	buffer_load_u16 v19, v18, s[16:19], 0 offen
	.loc	1 265 26                        ; generate_amdgcn.py:265:26
	buffer_load_b64 v[62:63], v53, s[4:7], 0 offen
	.loc	1 260 26                        ; generate_amdgcn.py:260:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v18, 64, v18
	v_add_nc_u32_e32 v53, s47, v53
	s_add_i32 s50, s50, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s50, 0
	.loc	1 260 26                        ; generate_amdgcn.py:260:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v34, v19
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[54:57], v35 offset1:32
	ds_load_2addr_b64 v[58:61], v36 offset1:32
	.loc	1 265 26                        ; generate_amdgcn.py:265:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[62:63]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 266 27                        ; generate_amdgcn.py:266:27
	ds_load_u8 v19, v38 offset:640
	ds_load_u8 v62, v38 offset:896
	ds_load_u8 v63, v38 offset:768
	ds_load_u8 v64, v38 offset:512
	ds_load_u8 v65, v38 offset:128
	ds_load_u8 v66, v38 offset:384
	ds_load_u8 v67, v38 offset:256
	ds_load_u8 v68, v38
	ds_load_u8 v69, v38 offset:1664
	ds_load_u8 v70, v38 offset:1920
	ds_load_u8 v71, v38 offset:1792
	ds_load_u8 v72, v38 offset:1536
	ds_load_u8 v73, v38 offset:1152
	ds_load_u8 v74, v38 offset:1280
	ds_load_u8 v75, v38 offset:1024
	ds_load_u8 v76, v38 offset:1408
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v19, v64, v19, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v64, v68, v65, 0xc0c0004
	v_perm_b32 v65, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v63, v62, 16, v19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v67, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v72, v69, 0xc0c0004
	v_lshl_or_b32 v62, v65, 16, v64
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v75, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v74, v76, 0xc0c0004
	v_lshl_or_b32 v65, v67, 16, v66
	v_wmma_i32_16x16x16_iu4 v[0:7], v[62:63], v[54:55], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[62:63], v[56:57], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v64, v69, 16, v68
	v_wmma_i32_16x16x16_iu4 v[0:7], v[64:65], v[58:59], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[64:65], v[60:61], v[8:15] neg_lo:[1,1,0]
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 267 19 is_stmt 1              ; generate_amdgcn.py:267:19
	v_cvt_f32_i32_e32 v58, v0
	v_cvt_f32_i32_e32 v57, v1
	v_cvt_f32_i32_e32 v56, v2
	v_cvt_f32_i32_e32 v55, v3
	v_cvt_f32_i32_e32 v54, v4
	v_cvt_f32_i32_e32 v53, v5
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
.LBB0_7:                                ; %._crit_edge21
	.loc	1 222 1                         ; generate_amdgcn.py:222:1
	s_endpgm
.Ltmp21:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
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
		.amdhsa_next_free_sgpr 55
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.num_vgpr, 80
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.numbered_sgpr, 55
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2608
; TotalNumSgprs: 57
; NumVgprs: 80
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 57
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
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	231                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	232                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	252                             ; DW_AT_call_line
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     57
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     80
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
