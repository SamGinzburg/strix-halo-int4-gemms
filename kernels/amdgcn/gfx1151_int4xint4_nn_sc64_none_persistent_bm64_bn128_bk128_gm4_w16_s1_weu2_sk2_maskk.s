	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 222 0                         ; generate_amdgcn.py:222:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:231:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:232:17 ]
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_lshr_b32 s6, s6, 26
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
	s_ashr_i32 s33, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_ashr_i32 s13, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 233 17 is_stmt 1              ; generate_amdgcn.py:233:17
	s_mul_i32 s34, s13, s33
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cmp_ge_i32 s2, s34
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph21
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[20:21], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 276 28 is_stmt 1              ; generate_amdgcn.py:276:28
	v_lshlrev_b32_e32 v12, 2, v0
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_and_b32_e32 v29, 0xe0, v0
	v_bfe_i32 v26, v0, 0, 1
	v_and_b32_e32 v31, 1, v0
	v_bfe_i32 v32, v0, 7, 1
	v_and_b32_e32 v27, 0x78, v12
	.loc	1 234 24                        ; generate_amdgcn.py:234:24
	s_lshl_b32 s40, s13, 2
	v_and_b32_e32 v26, 0x840, v26
	v_lshlrev_b32_e32 v31, 6, v31
	v_and_b32_e32 v32, 0x840, v32
	v_lshl_or_b32 v27, v29, 3, v27
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_lshrrev_b32_e32 v28, 3, v0
	v_and_b32_e32 v10, 15, v0
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_lshrrev_b32_e32 v11, 4, v0
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_lshrrev_b32_e32 v1, 7, v0
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_and_b32_e32 v9, 0x7f, v0
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_and_b32_e32 v2, 0x100, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:272:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s12, 63
.Ltmp12:
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_lshr_b32 s14, s12, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:272:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_add_i32 s12, s12, s14
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:272:26 ]
	s_lshr_b32 s1, s1, 26
.Ltmp16:
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_ashr_i32 s41, s12, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:272:26 ]
	s_add_i32 s1, s0, s1
.Ltmp18:
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_bfe_i32 v16, v0, 8, 1
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:272:26 ]
	s_ashr_i32 s42, s1, 6
	s_cmp_gt_i32 s0, 63
	v_lshlrev_b32_e32 v17, 1, v0
	s_cselect_b32 s0, -1, 0
	s_abs_i32 s43, s40
	v_lshrrev_b32_e32 v19, 2, v0
	s_cvt_f32_u32 s1, s43
	v_lshlrev_b32_e32 v23, 3, v0
	v_and_b32_e32 v24, 14, v0
	v_lshlrev_b32_e32 v0, 4, v0
	v_xor_b32_e32 v26, v27, v26
	v_xor_b32_e32 v27, v32, v31
	v_rcp_iflag_f32_e32 v32, s1
.Ltmp20:
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_lshrrev_b32_e32 v18, 4, v2
	v_lshlrev_b32_e32 v30, 11, v24
	v_lshrrev_b32_e32 v2, 1, v2
	v_and_b32_e32 v0, 0x700, v0
	v_lshlrev_b32_e32 v24, 2, v24
	v_or_b32_e32 v15, 4, v1
	v_or_b32_e32 v3, 12, v1
	v_or3_b32 v30, v30, v2, v26
	v_and_b32_e32 v2, 0x1008, v16
	v_or3_b32 v0, v0, v24, v27
	v_readfirstlane_b32 s1, v32
	v_or_b32_e32 v4, 20, v1
	v_or_b32_e32 v5, 28, v1
	v_and_b32_e32 v17, 0x218, v17
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_lshl_b32 s3, s3, 5
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_or_b32_e32 v14, 60, v1
	v_or_b32_e32 v8, 52, v1
	v_or_b32_e32 v7, 44, v1
	v_or_b32_e32 v6, 36, v1
	v_xor_b32_e32 v31, v0, v2
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	v_mad_u64_u32 v[0:1], null, s35, v1, v[9:10]
	v_mad_u64_u32 v[1:2], null, s35, v15, v[9:10]
	v_or_b32_e32 v32, s3, v11
	v_mad_u64_u32 v[2:3], null, s35, v3, v[9:10]
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_mad_u64_u32 v[3:4], null, s35, v4, v[9:10]
	v_and_b32_e32 v19, 24, v19
	v_lshl_or_b32 v17, v10, 5, v17
	v_mad_u64_u32 v[4:5], null, s35, v5, v[9:10]
	v_mad_u64_u32 v[5:6], null, s35, v6, v[9:10]
	v_mad_u64_u32 v[6:7], null, s35, v7, v[9:10]
	s_cvt_u32_f32 s1, s1
	v_mul_lo_u32 v11, s35, v32
	v_mad_u64_u32 v[7:8], null, s35, v8, v[9:10]
	s_mov_b32 s24, s4
	v_mad_u64_u32 v[8:9], null, s35, v14, v[9:10]
	s_sub_i32 s4, 0, s43
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_lshrrev_b32_e32 v13, 1, v29
	v_xor_b32_e32 v19, v12, v19
	v_xor_b32_e32 v20, 8, v17
	v_xor_b32_e32 v21, 16, v17
	v_xor_b32_e32 v22, 24, v17
	v_add_nc_u32_e32 v25, 0, v10
	v_xor_b32_e32 v16, 8, v30
	v_xor_b32_e32 v24, 16, v30
	v_xor_b32_e32 v26, 24, v30
	v_xor_b32_e32 v27, 32, v30
	v_xor_b32_e32 v48, 40, v30
	v_xor_b32_e32 v49, 48, v30
	v_xor_b32_e32 v50, 56, v30
	v_xor_b32_e32 v51, 0x2010, v31
	v_xor_b32_e32 v52, 0x4020, v31
	v_xor_b32_e32 v53, 0x6030, v31
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_or_b32_e32 v33, v18, v10
	v_cndmask_b32_e64 v14, 0, 1, s0
	v_and_or_b32 v9, v12, 28, s3
	s_mul_i32 s4, s4, s1
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	v_and_b32_e32 v34, 2, v28
	s_mul_hi_u32 s4, s1, s4
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_or_b32_e32 v35, 32, v33
	s_add_i32 s49, s1, s4
	v_lshl_add_u32 v36, v10, 3, v11
	v_cmp_ne_u32_e64 s0, 1, v14
	v_add_nc_u32_e32 v37, 0, v19
	v_add_nc_u32_e32 v38, 0, v17
	v_add_nc_u32_e32 v39, 0, v20
	v_add_nc_u32_e32 v40, 0, v21
	v_add_nc_u32_e32 v41, 0, v22
	v_add_nc_u32_e32 v42, 0, v23
	v_add_nc_u32_e32 v43, v25, v13
	v_add_nc_u32_e32 v44, 0, v16
	v_add_nc_u32_e32 v45, 0, v24
	v_add_nc_u32_e32 v46, 0, v26
	v_add_nc_u32_e32 v47, 0, v27
	v_add_nc_u32_e32 v48, 0, v48
	v_add_nc_u32_e32 v49, 0, v49
	v_add_nc_u32_e32 v50, 0, v50
	v_add_nc_u32_e32 v51, 0, v51
	v_add_nc_u32_e32 v52, 0, v52
	v_add_nc_u32_e32 v53, 0, v53
	v_cmp_gt_i32_e64 s1, 32, v9
	v_cmp_gt_i32_e64 s3, 32, v32
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s25, s5, 0xffff
	s_and_b32 s29, s7, 0xffff
	s_mov_b32 s28, s6
	s_mov_b32 s12, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_lshl_b32 s5, s35, 3
	s_lshl_b32 s6, s35, 4
	s_mul_i32 s7, s35, 24
	s_lshl_b32 s44, s35, 5
	s_mul_i32 s45, s35, 40
	s_mul_i32 s46, s35, 48
	s_mul_i32 s47, s35, 56
	s_and_b32 s21, s21, 0xffff
	s_bfe_i32 s48, s13, 0x1001d
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_lshl_b32 s50, s35, 1
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_lshl_b32 s51, s42, 1
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_add_nc_u32_e32 v26, 0, v30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 248 18                        ; generate_amdgcn.py:248:18
	s_lshl_b32 s4, s53, 7
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_mul_i32 s10, s52, s35
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	ds_store_b64 v26, v[24:25]
	ds_store_b64 v44, v[22:23]
	ds_store_b64 v45, v[20:21]
	ds_store_b64 v46, v[18:19]
	ds_store_b64 v47, v[16:17]
	ds_store_b64 v48, v[14:15]
	v_add_nc_u32_e32 v14, 0, v31
	ds_store_b64 v49, v[12:13]
	ds_store_b64 v50, v[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s10, s10, s4
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	ds_load_2addr_b64 v[10:13], v14 offset1:16
	ds_load_2addr_b64 v[14:17], v51 offset1:16
	ds_load_2addr_b64 v[18:21], v52 offset1:16
	ds_load_2addr_b64 v[22:25], v53 offset1:16
	v_add_nc_u32_e32 v26, s10, v0
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v54, s10, v1, 2
	v_add_lshl_u32 v56, s10, v3, 2
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_lshlrev_b32_e32 v27, 2, v26
	v_add_lshl_u32 v55, v26, s5, 2
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cmp_lt_i32 s2, s34
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v10, v27, s[20:23], 0 offen
	v_add_lshl_u32 v10, s10, v2, 2
	v_add_lshl_u32 v27, v26, s6, 2
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v14, v54, s[20:23], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v18, v55, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x2
	buffer_atomic_add_f32 v22, v10, s[20:23], 0 offen
	buffer_atomic_add_f32 v12, v27, s[20:23], 0 offen
	buffer_atomic_add_f32 v16, v56, s[20:23], 0 offen
	v_add_lshl_u32 v10, v26, s7, 2
	v_add_lshl_u32 v12, s10, v4, 2
	v_add_lshl_u32 v14, v26, s44, 2
	v_add_lshl_u32 v16, s10, v5, 2
	v_add_lshl_u32 v18, v26, s45, 2
	s_clause 0x4
	buffer_atomic_add_f32 v20, v10, s[20:23], 0 offen
	buffer_atomic_add_f32 v24, v12, s[20:23], 0 offen
	buffer_atomic_add_f32 v11, v14, s[20:23], 0 offen
	buffer_atomic_add_f32 v15, v16, s[20:23], 0 offen
	buffer_atomic_add_f32 v19, v18, s[20:23], 0 offen
	v_add_lshl_u32 v10, s10, v6, 2
	v_add_lshl_u32 v11, v26, s46, 2
	v_add_lshl_u32 v12, s10, v7, 2
	v_add_lshl_u32 v14, v26, s47, 2
	v_add_lshl_u32 v15, s10, v8, 2
	s_clause 0x4
	buffer_atomic_add_f32 v23, v10, s[20:23], 0 offen
	buffer_atomic_add_f32 v13, v11, s[20:23], 0 offen
	buffer_atomic_add_f32 v17, v12, s[20:23], 0 offen
	buffer_atomic_add_f32 v21, v14, s[20:23], 0 offen
	buffer_atomic_add_f32 v25, v15, s[20:23], 0 offen
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 242 20                        ; generate_amdgcn.py:242:20
	s_abs_i32 s4, s2
	s_ashr_i32 s11, s2, 31
	s_mul_hi_u32 s10, s4, s49
	s_xor_b32 s11, s11, s48
	s_mul_i32 s13, s10, s43
	v_mov_b32_e32 v11, 0
	s_sub_i32 s4, s4, s13
	s_add_i32 s13, s10, 1
	s_sub_i32 s14, s4, s43
	s_cmp_ge_u32 s4, s43
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	s_cselect_b32 s10, s13, s10
	s_cselect_b32 s4, s14, s4
	s_add_i32 s13, s10, 1
	s_cmp_ge_u32 s4, s43
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	s_cselect_b32 s4, s13, s10
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	s_xor_b32 s4, s4, s11
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	s_sub_i32 s4, s4, s11
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	.loc	1 243 23                        ; generate_amdgcn.py:243:23
	s_lshl_b32 s11, s4, 2
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_mul_i32 s4, s4, s40
	.loc	1 244 35                        ; generate_amdgcn.py:244:35
	s_sub_i32 s10, s33, s11
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_sub_i32 s16, s2, s4
	.loc	1 244 24                        ; generate_amdgcn.py:244:24
	s_min_i32 s13, s10, 4
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	.loc	1 246 17                        ; generate_amdgcn.py:246:17
	s_abs_i32 s10, s13
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	s_cvt_f32_u32 s14, s10
	s_sub_i32 s15, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v10, s14
	v_readfirstlane_b32 s14, v10
	v_mov_b32_e32 v10, 0
	s_mul_f32 s14, s14, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s14, s14
	s_mul_i32 s15, s15, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s14, s15
	s_abs_i32 s15, s16
	s_add_i32 s14, s14, s4
	s_xor_b32 s4, s16, s13
	s_mul_hi_u32 s14, s15, s14
	s_ashr_i32 s4, s4, 31
	s_mul_i32 s17, s14, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s15, s15, s17
	s_add_i32 s17, s14, 1
	s_sub_i32 s18, s15, s10
	s_cmp_ge_u32 s15, s10
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s15, s18, s15
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s15, s10
	s_cselect_b32 s10, s17, s14
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_and_b32 vcc_lo, exec_lo, s0
	.loc	1 246 17                        ; generate_amdgcn.py:246:17
	s_xor_b32 s10, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s53, s10, s4
	.loc	1 245 32                        ; generate_amdgcn.py:245:32
	s_mul_i32 s13, s53, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s13, s16, s13
	.loc	1 245 17 is_stmt 0              ; generate_amdgcn.py:245:17
	s_add_i32 s13, s13, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 247 18 is_stmt 1              ; generate_amdgcn.py:247:18
	s_lshl_b32 s52, s13, 6
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v10, s10, 8, v29
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v11, s52, v35
	s_lshl_b32 s11, s4, 8
	v_add_nc_u32_e32 v12, s52, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v54, s11, v10
	v_dual_mov_b32 v23, v24 :: v_dual_add_nc_u32 v10, s52, v28
	v_mul_lo_u32 v55, s51, v11
	v_lshl_add_u32 v11, s10, 7, v36
	v_mov_b32_e32 v25, v24
	v_mul_lo_u32 v56, s51, v12
	v_mad_u64_u32 v[26:27], null, s41, v10, v[9:10]
	s_lshl_b32 s4, s4, 7
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, v24
	v_subrev_nc_u32_e32 v27, s4, v11
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, v24
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, v24
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, v24
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, v24
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, v24
	v_mov_b32_e32 v10, 0
	s_mov_b32 s54, 0
	s_mov_b32 s55, s42
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 284 26                        ; generate_amdgcn.py:284:26
	v_add_nc_u32_e32 v57, s54, v9
	.loc	1 285 31                        ; generate_amdgcn.py:285:31
	v_add_nc_u32_e32 v58, s54, v32
	.loc	1 296 30                        ; generate_amdgcn.py:296:30
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 298 22                        ; generate_amdgcn.py:298:22
	s_mov_b32 s10, s26
	.loc	1 285 31                        ; generate_amdgcn.py:285:31
	v_cmp_gt_i32_e32 vcc_lo, s41, v57
	.loc	1 291 30                        ; generate_amdgcn.py:291:30
	v_add_nc_u32_e32 v57, s54, v26
	.loc	1 285 31                        ; generate_amdgcn.py:285:31
	v_cmp_gt_i32_e64 s4, s41, v58
	.loc	1 298 22                        ; generate_amdgcn.py:298:22
	s_mov_b32 s11, s27
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	s_mov_b32 s38, s26
	.loc	1 285 30                        ; generate_amdgcn.py:285:30
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	s_mov_b32 s39, s27
	.loc	1 291 30                        ; generate_amdgcn.py:291:30
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	.loc	1 285 30                        ; generate_amdgcn.py:285:30
	s_and_b32 s4, s4, s3
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_add_i32 s55, s55, -1
	s_add_i32 s54, s54, 32
	s_cmp_lg_u32 s55, 0
	.loc	1 291 30                        ; generate_amdgcn.py:291:30
	buffer_load_b32 v59, v57, s[24:27], 0 offen
	.loc	1 296 30                        ; generate_amdgcn.py:296:30
	v_cndmask_b32_e64 v57, 0x80000000, v27, s4
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_add_nc_u32_e32 v27, s44, v27
	.loc	1 296 30                        ; generate_amdgcn.py:296:30
	buffer_load_b64 v[57:58], v57, s[28:31], 0 offen
	.loc	1 291 30                        ; generate_amdgcn.py:291:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v37, v59
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[73:76], v38 offset1:2
	ds_load_2addr_stride64_b64 v[77:80], v39 offset1:2
	ds_load_2addr_stride64_b64 v[81:84], v40 offset1:2
	ds_load_2addr_stride64_b64 v[85:88], v41 offset1:2
	.loc	1 296 30                        ; generate_amdgcn.py:296:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v42, v[57:58]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	ds_load_u8 v57, v43 offset:640
	ds_load_u8 v58, v43 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v43 offset:896
	ds_load_u8 v59, v43 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v58, 16, v57
	ds_load_u8 v57, v43 offset:128
	ds_load_u8 v58, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v43 offset:384
	ds_load_u8 v59, v43 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v58, 16, v57
	v_dual_mov_b32 v64, s19 :: v_dual_mov_b32 v61, s16
	v_dual_mov_b32 v63, s18 :: v_dual_mov_b32 v62, s17
	v_dual_mov_b32 v60, s15 :: v_dual_mov_b32 v59, s14
	v_dual_mov_b32 v58, s13 :: v_dual_mov_b32 v57, s12
	v_wmma_i32_16x16x16_iu4 v[65:72], v[89:90], v[73:74], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v73, v43 offset:1664
	ds_load_u8 v74, v43 offset:1536
	v_wmma_i32_16x16x16_iu4 v[57:64], v[89:90], v[75:76], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v43 offset:1920
	ds_load_u8 v91, v43 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v91, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v43 offset:1152
	ds_load_u8 v91, v43 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v91, v73, 0xc0c0004
	ds_load_u8 v91, v43 offset:1408
	ds_load_u8 v92, v43 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v91, 16, v73
	v_wmma_i32_16x16x16_iu4 v[65:72], v[73:74], v[77:78], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[79:80], v[57:64] neg_lo:[1,1,0]
	.loc	1 298 22                        ; generate_amdgcn.py:298:22
	s_clause 0x1
	buffer_load_u16 v73, v56, s[8:11], 0 offen
	buffer_load_u16 v74, v55, s[8:11], 0 offen
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	ds_load_u8 v77, v43 offset:2688
	ds_load_u8 v78, v43 offset:2560
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_add_nc_u32_e32 v55, 2, v55
	v_add_nc_u32_e32 v56, 2, v56
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v43 offset:2944
	ds_load_u8 v91, v43 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v91, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v43 offset:2176
	ds_load_u8 v91, v43 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v91, v77, 0xc0c0004
	ds_load_u8 v91, v43 offset:2432
	ds_load_u8 v92, v43 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v91, 16, v77
	v_wmma_i32_16x16x16_iu4 v[65:72], v[77:78], v[81:82], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v81, v43 offset:3712
	ds_load_u8 v82, v43 offset:3584
	v_wmma_i32_16x16x16_iu4 v[57:64], v[77:78], v[83:84], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v43 offset:3968
	ds_load_u8 v91, v43 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v91, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v43 offset:3200
	ds_load_u8 v91, v43 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v91, v81, 0xc0c0004
	ds_load_u8 v91, v43 offset:3456
	ds_load_u8 v92, v43 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v91, 16, v81
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[87:88], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[81:82], v[85:86], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 300 24                        ; generate_amdgcn.py:300:24
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 298 22                        ; generate_amdgcn.py:298:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v74, 16, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 300 24                        ; generate_amdgcn.py:300:24
	v_dual_mul_f32 v58, v58, v74 :: v_dual_lshlrev_b32 v73, 16, v73
	v_dual_mul_f32 v68, v68, v73 :: v_dual_add_nc_u32 v75, v34, v54
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	s_clause 0x7
	buffer_load_u16 v76, v75, s[36:39], 0 offen
	buffer_load_u16 v77, v75, s[36:39], 0 offen offset:4
	buffer_load_u16 v78, v75, s[36:39], 0 offen offset:8
	buffer_load_u16 v79, v75, s[36:39], 0 offen offset:12
	buffer_load_u16 v80, v75, s[36:39], 0 offen offset:16
	buffer_load_u16 v81, v75, s[36:39], 0 offen offset:20
	buffer_load_u16 v82, v75, s[36:39], 0 offen offset:24
	buffer_load_u16 v75, v75, s[36:39], 0 offen offset:28
	.loc	1 300 24                        ; generate_amdgcn.py:300:24
	v_mul_f32_e32 v65, v65, v73
	v_mul_f32_e32 v66, v66, v73
	v_mul_f32_e32 v67, v67, v73
	v_mul_f32_e32 v69, v69, v73
	v_mul_f32_e32 v70, v70, v73
	v_dual_mul_f32 v71, v71, v73 :: v_dual_mul_f32 v64, v64, v74
	v_dual_mul_f32 v72, v72, v73 :: v_dual_mul_f32 v57, v57, v74
	v_mul_f32_e32 v60, v60, v74
	v_mul_f32_e32 v62, v62, v74
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_add_nc_u32_e32 v54, s50, v54
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v76, 16, v76
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v77, 16, v77
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v78, 16, v78
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v79, 16, v79
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v80, 16, v80
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v81, 16, v81
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v82, 16, v82
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v75, 16, v75
	.loc	1 300 24                        ; generate_amdgcn.py:300:24
	v_dual_mul_f32 v59, v59, v74 :: v_dual_fmac_f32 v24, v65, v76
	v_dual_mul_f32 v61, v61, v74 :: v_dual_fmac_f32 v22, v66, v77
	v_dual_mul_f32 v63, v63, v74 :: v_dual_fmac_f32 v18, v68, v79
	.loc	1 300 17 is_stmt 0              ; generate_amdgcn.py:300:17
	v_dual_fmac_f32 v20, v67, v78 :: v_dual_fmac_f32 v25, v57, v76
	v_dual_fmac_f32 v16, v69, v80 :: v_dual_fmac_f32 v23, v58, v77
	v_dual_fmac_f32 v14, v70, v81 :: v_dual_fmac_f32 v21, v59, v78
	v_dual_fmac_f32 v12, v71, v82 :: v_dual_fmac_f32 v19, v60, v79
	v_dual_fmac_f32 v10, v72, v75 :: v_dual_fmac_f32 v17, v61, v80
	v_fmac_f32_e32 v15, v62, v81
	v_fmac_f32_e32 v13, v63, v82
	v_fmac_f32_e32 v11, v64, v75
	.loc	1 278 13 is_stmt 1              ; generate_amdgcn.py:278:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge22
	.loc	1 222 1                         ; generate_amdgcn.py:222:1
	s_endpgm
.Ltmp21:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk
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
		.amdhsa_next_free_vgpr 93
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
		.amdhsa_inst_pref_size 24
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.num_vgpr, 93
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3060
; TotalNumSgprs: 58
; NumVgprs: 93
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 93
; Occupancy: 16
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
	.byte	1                               ; Abbrev [1] 0xb:0x5d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x37 DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x59:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	272                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk
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
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     93
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
