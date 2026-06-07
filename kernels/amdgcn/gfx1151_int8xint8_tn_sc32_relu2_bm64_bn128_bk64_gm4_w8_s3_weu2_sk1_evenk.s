	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b64 s[20:21], s[0:1], 0x20
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v37, 15, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v36, 3, v0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v10, v36, 16, v37
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_mov_b32_e32 v2, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v1
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v35, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v11, 1, v0
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s4, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v9, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v9
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v9, 32, v10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_xor_b32 s2, s4, s7
	s_mul_hi_u32 s9, s5, s9
	s_ashr_i32 s2, s2, 31
	s_mul_i32 s10, s9, s8
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s9, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s9, s10, s9
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s5, s10, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s15, s13, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s14, s5, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s14, s2
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s5, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s28, s5, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s4, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s4, s4, s6
	.loc	1 299 14 is_stmt 1              ; generate_amdgcn.py:299:14
	s_lshl_b32 s29, s4, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s15, 64
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v1, v0, 4, 1
	v_dual_mov_b32 v47, 0 :: v_dual_and_b32 v2, 48, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s33, s3, 6
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s15, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s13, 31
	v_or3_b32 v14, v1, v2, s28
.Ltmp16:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_or_b32_e32 v1, s33, v36
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s13, s1, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s15, s15, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s13, 27
	v_or_b32_e32 v6, v2, v37
	v_or_b32_e32 v7, s29, v10
.Ltmp21:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_or_b32_e32 v2, 32, v1
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s0
.Ltmp23:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s30, s15, 6
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s31, s1, 5
.Ltmp25:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s14, 7
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v3, 7, v0
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v15, 0, v6
	v_mul_lo_u32 v16, v7, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_mul_lo_u32 v6, s23, v2
	v_mul_lo_u32 v7, s23, v1
	v_lshlrev_b32_e32 v4, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v5, 4, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_mul_lo_u32 v2, s22, v2
	v_mul_lo_u32 v1, s22, v1
	v_or_b32_e32 v8, s29, v9
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v3, 3, v3
	v_add_nc_u32_e32 v12, 0, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v6, v6, s0, v5
	v_add3_u32 v5, v7, s0, v5
	v_mul_lo_u32 v17, v8, s31
	s_lshl_b32 s0, s2, 7
	v_add3_u32 v45, v2, s29, v3
	v_subrev_nc_u32_e32 v43, s0, v6
	v_subrev_nc_u32_e32 v44, s0, v5
	v_add3_u32 v49, v1, s29, v3
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v61, v12, v4
	v_mov_b32_e32 v1, s12
	v_dual_mov_b32 v8, s19 :: v_dual_add_nc_u32 v13, 0, v10
	v_or_b32_e32 v18, 2, v14
	v_or_b32_e32 v19, 4, v14
	v_or_b32_e32 v20, 6, v14
	v_or_b32_e32 v21, 8, v14
	v_or_b32_e32 v22, 10, v14
	v_or_b32_e32 v23, 12, v14
	v_or_b32_e32 v24, 14, v14
	v_or_b32_e32 v25, 64, v14
	v_or_b32_e32 v26, 0x42, v14
	v_or_b32_e32 v27, 0x44, v14
	v_or_b32_e32 v28, 0x46, v14
	v_or_b32_e32 v29, 0x48, v14
	v_or_b32_e32 v31, 0x4a, v14
	v_or_b32_e32 v33, 0x4c, v14
	v_or_b32_e32 v36, 0x4e, v14
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_mov_b32_e32 v64, 0
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v30, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s34, s23, 6
	s_lshl_b32 s22, s22, 6
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s0, s6
	s_mov_b32 s1, s7
	s_mov_b32 s2, s26
	s_mov_b32 s3, s27
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s6, s26
	s_mov_b32 s7, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b64 v[74:75], v49, s[24:27], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[70:73], v44, s[0:3], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s13, s33, 5
	s_add_i32 s12, s33, 32
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s13, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v44, s34, v44
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s12, s12, 5
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(1)
	ds_store_b64 v12, v[74:75] offset:8192
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v61, v[70:73]
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b64 v[74:75], v45, s[24:27], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[70:73], v43, s[0:3], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s12, s31
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(1)
	ds_store_b64 v12, v[74:75] offset:10240
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v61, v[70:73] offset:4096
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v78, v13 offset:10048
	ds_load_u8 v79, v13 offset:9984
	ds_load_u8 v70, v13 offset:9024
	ds_load_u8 v71, v13 offset:8960
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v43, s34, v43
	v_add_nc_u32_e32 v45, s22, v45
	v_add_nc_u32_e32 v49, s22, v49
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v13 offset:10176
	ds_load_u8 v80, v13 offset:10112
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v13 offset:9152
	ds_load_u8 v72, v13 offset:9088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v93, v79, 16, v78
	ds_load_u8 v78, v13 offset:9792
	ds_load_u8 v79, v13 offset:9728
	v_lshl_or_b32 v89, v71, 16, v70
	ds_load_u8 v70, v13 offset:8768
	ds_load_u8 v71, v13 offset:8704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v13 offset:9920
	ds_load_u8 v80, v13 offset:9856
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v13 offset:8896
	ds_load_u8 v72, v13 offset:8832
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v92, v79, 16, v78
	ds_load_u8 v78, v13 offset:9536
	ds_load_u8 v79, v13 offset:9472
	v_lshl_or_b32 v88, v71, 16, v70
	ds_load_u8 v70, v13 offset:8512
	ds_load_u8 v71, v13 offset:8448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v13 offset:9664
	ds_load_u8 v80, v13 offset:9600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v13 offset:8640
	ds_load_u8 v72, v13 offset:8576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v91, v79, 16, v78
	ds_load_u8 v78, v13 offset:9280
	ds_load_u8 v79, v13 offset:9216
	v_lshl_or_b32 v87, v71, 16, v70
	ds_load_u8 v70, v13 offset:8256
	ds_load_u8 v71, v13 offset:8192
	ds_load_u8 v110, v13 offset:8224
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v13 offset:9408
	ds_load_u8 v80, v13 offset:9344
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v13 offset:8384
	ds_load_u8 v72, v13 offset:8320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v90, v79, 16, v78
	ds_load_u8 v78, v15 offset:3712
	ds_load_u8 v79, v15 offset:3584
	v_lshl_or_b32 v86, v71, 16, v70
	ds_load_u8 v70, v15 offset:1664
	ds_load_u8 v71, v15 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:3968
	ds_load_u8 v80, v15 offset:3840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v15 offset:1920
	ds_load_u8 v72, v15 offset:1792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v101, v79, 16, v78
	ds_load_u8 v78, v15 offset:3200
	ds_load_u8 v79, v15 offset:3072
	v_lshl_or_b32 v97, v71, 16, v70
	ds_load_u8 v70, v15 offset:1152
	ds_load_u8 v71, v15 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:3456
	ds_load_u8 v80, v15 offset:3328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v15 offset:1408
	ds_load_u8 v72, v15 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v100, v79, 16, v78
	ds_load_u8 v78, v15 offset:2688
	ds_load_u8 v79, v15 offset:2560
	v_lshl_or_b32 v96, v71, 16, v70
	ds_load_u8 v70, v15 offset:640
	ds_load_u8 v71, v15 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:2944
	ds_load_u8 v80, v15 offset:2816
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v15 offset:896
	ds_load_u8 v72, v15 offset:768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v99, v79, 16, v78
	ds_load_u8 v78, v15 offset:2176
	ds_load_u8 v79, v15 offset:2048
	v_lshl_or_b32 v95, v71, 16, v70
	ds_load_u8 v70, v15 offset:128
	ds_load_u8 v71, v15
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:2432
	ds_load_u8 v80, v15 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v15 offset:384
	ds_load_u8 v72, v15 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v98, v79, 16, v78
	ds_load_u8 v78, v15 offset:1728
	ds_load_u8 v79, v15 offset:1600
	v_lshl_or_b32 v94, v71, 16, v70
	v_wmma_i32_16x16x16_iu8 v[70:77], v[94:97], v[86:89], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[98:101], v[90:93], v[70:77] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v76, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:1984
	ds_load_u8 v80, v15 offset:1856
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v77, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v79, 16, v78
	ds_load_u8 v78, v15 offset:1216
	ds_load_u8 v79, v15 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:1472
	ds_load_u8 v80, v15 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v79, 16, v78
	ds_load_u8 v78, v15 offset:704
	ds_load_u8 v79, v15 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:960
	ds_load_u8 v80, v15 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v79, 16, v78
	ds_load_u8 v78, v15 offset:192
	ds_load_u8 v79, v15 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:448
	ds_load_u8 v80, v15 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v102, v79, 16, v78
	v_wmma_i32_16x16x16_iu8 v[78:85], v[102:105], v[86:89], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v86, v15 offset:3776
	ds_load_u8 v87, v15 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v15 offset:4032
	ds_load_u8 v88, v15 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v87, 16, v86
	ds_load_u8 v86, v15 offset:3264
	ds_load_u8 v87, v15 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v15 offset:3520
	ds_load_u8 v88, v15 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v87, 16, v86
	ds_load_u8 v86, v15 offset:2752
	ds_load_u8 v87, v15 offset:2624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v15 offset:3008
	ds_load_u8 v88, v15 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v87, 16, v86
	ds_load_u8 v86, v15 offset:2240
	ds_load_u8 v87, v15 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v15 offset:2496
	ds_load_u8 v88, v15 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v106, v87, 16, v86
	ds_load_u8 v86, v13 offset:9056
	ds_load_u8 v87, v13 offset:8992
	v_wmma_i32_16x16x16_iu8 v[78:85], v[106:109], v[90:93], v[78:85] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v82, v82
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v13 offset:9184
	ds_load_u8 v88, v13 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v87, 16, v86
	ds_load_u8 v86, v13 offset:8800
	ds_load_u8 v87, v13 offset:8736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v13 offset:8928
	ds_load_u8 v88, v13 offset:8864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v87, 16, v86
	ds_load_u8 v86, v13 offset:8544
	ds_load_u8 v87, v13 offset:8480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v13 offset:8672
	ds_load_u8 v88, v13 offset:8608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v87, 16, v86
	ds_load_u8 v86, v13 offset:8288
	ds_load_u8 v87, v13 offset:8416
	ds_load_u8 v88, v13 offset:8352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v86, v110, v86, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v87, 16, v86
	v_wmma_i32_16x16x16_iu8 v[86:93], v[94:97], v[110:113], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v94, v13 offset:10080
	ds_load_u8 v95, v13 offset:10016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v13 offset:10208
	ds_load_u8 v96, v13 offset:10144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v95, 16, v94
	ds_load_u8 v94, v13 offset:9824
	ds_load_u8 v95, v13 offset:9760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v13 offset:9952
	ds_load_u8 v96, v13 offset:9888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v95, 16, v94
	ds_load_u8 v94, v13 offset:9568
	ds_load_u8 v95, v13 offset:9504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v13 offset:9696
	ds_load_u8 v96, v13 offset:9632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v95, 16, v94
	ds_load_u8 v94, v13 offset:9312
	ds_load_u8 v95, v13 offset:9248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v13 offset:9440
	ds_load_u8 v96, v13 offset:9376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v114, v95, 16, v94
	v_wmma_i32_16x16x16_iu8 v[86:93], v[98:101], v[114:117], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[102:105], v[110:113], v[1:8] neg_lo:[1,1,0]
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v102, v16, s13, 1
	v_add_lshl_u32 v103, v17, s13, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s13, s13, s23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[94:101], v[106:109], v[114:117], v[94:101] neg_lo:[1,1,0]
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v104, v14, s13, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_cndmask_b32 v103, 0x80000000, v103
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v105, v18, s13, 1
	v_add_lshl_u32 v106, v19, s13, 1
	v_add_lshl_u32 v107, v20, s13, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v102, v102, s[4:7], 0 offen
	buffer_load_u16 v103, v103, s[4:7], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v108, v21, s13, 1
	v_add_lshl_u32 v112, v25, s13, 1
	v_add_lshl_u32 v113, v26, s13, 1
	v_dual_cndmask_b32 v104, 0x80000000, v104 :: v_dual_cndmask_b32 v105, 0x80000000, v105
	v_dual_cndmask_b32 v106, 0x80000000, v106 :: v_dual_cndmask_b32 v107, 0x80000000, v107
	v_add_lshl_u32 v109, v22, s13, 1
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	v_dual_cndmask_b32 v112, 0x80000000, v112 :: v_dual_cndmask_b32 v113, 0x80000000, v113
	s_clause 0x3
	buffer_load_u16 v104, v104, s[8:11], 0 offen
	buffer_load_u16 v105, v105, s[8:11], 0 offen
	buffer_load_u16 v106, v106, s[8:11], 0 offen
	buffer_load_u16 v107, v107, s[8:11], 0 offen
	v_cndmask_b32_e32 v109, 0x80000000, v109, vcc_lo
	s_clause 0x2
	buffer_load_u16 v108, v108, s[8:11], 0 offen
	buffer_load_u16 v112, v112, s[8:11], 0 offen
	buffer_load_u16 v113, v113, s[8:11], 0 offen
	v_add_lshl_u32 v114, v27, s13, 1
	v_add_lshl_u32 v115, v28, s13, 1
	v_add_lshl_u32 v110, v23, s13, 1
	v_add_lshl_u32 v111, v24, s13, 1
	v_add_lshl_u32 v116, v29, s13, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v114, 0x80000000, v114 :: v_dual_cndmask_b32 v115, 0x80000000, v115
	v_add_lshl_u32 v117, v31, s13, 1
	v_add_lshl_u32 v118, v33, s13, 1
	v_dual_cndmask_b32 v110, 0x80000000, v110 :: v_dual_cndmask_b32 v111, 0x80000000, v111
	s_clause 0x1
	buffer_load_u16 v114, v114, s[8:11], 0 offen
	buffer_load_u16 v115, v115, s[8:11], 0 offen
	v_dual_cndmask_b32 v116, 0x80000000, v116 :: v_dual_cndmask_b32 v117, 0x80000000, v117
	v_add_lshl_u32 v119, v36, s13, 1
	v_cndmask_b32_e32 v118, 0x80000000, v118, vcc_lo
	s_clause 0x4
	buffer_load_u16 v109, v109, s[8:11], 0 offen
	buffer_load_u16 v110, v110, s[8:11], 0 offen
	buffer_load_u16 v111, v111, s[8:11], 0 offen
	buffer_load_u16 v116, v116, s[8:11], 0 offen
	buffer_load_u16 v117, v117, s[8:11], 0 offen
	v_cndmask_b32_e32 v119, 0x80000000, v119, vcc_lo
	buffer_load_u16 v118, v118, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v119, v119, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v98, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s30, s30, -1
	s_add_i32 s33, s33, 64
	s_cmp_lg_u32 s30, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v102, 16, v102
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v103, 16, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v73, v73, v102
	v_mul_f32_e32 v78, v78, v102
	v_dual_mul_f32 v79, v79, v102 :: v_dual_mul_f32 v86, v86, v103
	v_mul_f32_e32 v72, v72, v102
	v_mul_f32_e32 v75, v75, v102
	v_mul_f32_e32 v80, v80, v102
	v_dual_mul_f32 v81, v81, v102 :: v_dual_mul_f32 v88, v88, v103
	v_mul_f32_e32 v91, v91, v103
	v_dual_mul_f32 v83, v83, v102 :: v_dual_mul_f32 v90, v90, v103
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v107, 16, v107
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v108, 16, v108
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v112, 16, v112
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v113, 16, v113
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v101, v101, v103
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v67, v73, v107
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v93, v93, v103 :: v_dual_fmac_f32 v62, v78, v112
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v60, v79, v113
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	ds_load_u8 v78, v13 offset:12096
	ds_load_u8 v79, v13 offset:12032
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v76, v76, v102
	v_dual_mul_f32 v87, v87, v103 :: v_dual_lshlrev_b32 v106, 16, v106
	v_dual_mul_f32 v85, v85, v102 :: v_dual_mul_f32 v92, v92, v103
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v114, 16, v114
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v115, 16, v115
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v89, v89, v103
	v_dual_mul_f32 v95, v95, v103 :: v_dual_fmac_f32 v68, v72, v106
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v59, v80, v114 :: v_dual_fmac_f32 v58, v81, v115
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v110, 16, v110
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v48, v90, v108 :: v_dual_lshlrev_b32 v111, 16, v111
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v74, v74, v102 :: v_dual_lshlrev_b32 v109, 16, v109
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v41, v93, v111 :: v_dual_lshlrev_b32 v118, 16, v118
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v13 offset:12224
	ds_load_u8 v80, v13 offset:12160
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v42, v92, v110 :: v_dual_fmac_f32 v39, v95, v113
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v97, v97, v103 :: v_dual_fmac_f32 v66, v74, v108
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v46, v91, v109
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v71, v71, v102 :: v_dual_lshlrev_b32 v104, 16, v104
	v_dual_mul_f32 v70, v70, v102 :: v_dual_lshlrev_b32 v105, 16, v105
	v_mul_f32_e32 v94, v94, v103
	v_mul_f32_e32 v96, v96, v103
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v84, v84, v102 :: v_dual_lshlrev_b32 v119, 16, v119
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v47, v70, v104
	v_fmac_f32_e32 v69, v71, v105
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	ds_load_u8 v70, v13 offset:11072
	ds_load_u8 v71, v13 offset:11008
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v51, v88, v106 :: v_dual_fmac_f32 v50, v89, v107
	v_fmac_f32_e32 v30, v101, v119
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v77, v77, v102 :: v_dual_lshlrev_b32 v116, 16, v116
	v_dual_mul_f32 v82, v82, v102 :: v_dual_lshlrev_b32 v117, 16, v117
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v93, v79, 16, v78
	ds_load_u8 v78, v13 offset:11840
	ds_load_u8 v79, v13 offset:11776
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v100, v100, v103
	v_dual_mul_f32 v99, v99, v103 :: v_dual_fmac_f32 v64, v76, v110
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v57, v82, v116
	v_dual_fmac_f32 v53, v86, v104 :: v_dual_fmac_f32 v52, v87, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v100, v118
	v_fmac_f32_e32 v34, v99, v117
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v98, v98, v103 :: v_dual_fmac_f32 v65, v75, v109
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v13 offset:11200
	ds_load_u8 v72, v13 offset:11136
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v38, v96, v114 :: v_dual_fmac_f32 v35, v98, v116
	v_dual_fmac_f32 v37, v97, v115 :: v_dual_fmac_f32 v40, v94, v112
	v_dual_fmac_f32 v63, v77, v111 :: v_dual_fmac_f32 v56, v83, v117
	v_dual_fmac_f32 v55, v84, v118 :: v_dual_fmac_f32 v54, v85, v119
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v13 offset:11968
	ds_load_u8 v80, v13 offset:11904
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v71, 16, v70
	ds_load_u8 v70, v13 offset:10816
	ds_load_u8 v71, v13 offset:10752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v92, v79, 16, v78
	ds_load_u8 v78, v13 offset:11584
	ds_load_u8 v79, v13 offset:11520
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v13 offset:10944
	ds_load_u8 v72, v13 offset:10880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v13 offset:11712
	ds_load_u8 v80, v13 offset:11648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v88, v71, 16, v70
	ds_load_u8 v70, v13 offset:10560
	ds_load_u8 v71, v13 offset:10496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v91, v79, 16, v78
	ds_load_u8 v78, v13 offset:11328
	ds_load_u8 v79, v13 offset:11264
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v13 offset:10688
	ds_load_u8 v72, v13 offset:10624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v13 offset:11456
	ds_load_u8 v80, v13 offset:11392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v87, v71, 16, v70
	ds_load_u8 v70, v13 offset:10304
	ds_load_u8 v71, v13 offset:10240
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v90, v79, 16, v78
	ds_load_u8 v78, v15 offset:7808
	ds_load_u8 v79, v15 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v13 offset:10432
	ds_load_u8 v72, v13 offset:10368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:8064
	ds_load_u8 v80, v15 offset:7936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v86, v71, 16, v70
	ds_load_u8 v70, v15 offset:5760
	ds_load_u8 v71, v15 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v101, v79, 16, v78
	ds_load_u8 v78, v15 offset:7296
	ds_load_u8 v79, v15 offset:7168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v15 offset:6016
	ds_load_u8 v72, v15 offset:5888
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:7552
	ds_load_u8 v80, v15 offset:7424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v71, 16, v70
	ds_load_u8 v70, v15 offset:5248
	ds_load_u8 v71, v15 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v100, v79, 16, v78
	ds_load_u8 v78, v15 offset:6784
	ds_load_u8 v79, v15 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v15 offset:5504
	ds_load_u8 v72, v15 offset:5376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:7040
	ds_load_u8 v80, v15 offset:6912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v96, v71, 16, v70
	ds_load_u8 v70, v15 offset:4736
	ds_load_u8 v71, v15 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v99, v79, 16, v78
	ds_load_u8 v78, v15 offset:6272
	ds_load_u8 v79, v15 offset:6144
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v15 offset:4992
	ds_load_u8 v72, v15 offset:4864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:6528
	ds_load_u8 v80, v15 offset:6400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v71, 16, v70
	ds_load_u8 v70, v15 offset:4224
	ds_load_u8 v71, v15 offset:4096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v98, v79, 16, v78
	ds_load_u8 v78, v15 offset:5824
	ds_load_u8 v79, v15 offset:5696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v15 offset:4480
	ds_load_u8 v72, v15 offset:4352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:6080
	ds_load_u8 v80, v15 offset:5952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v94, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[70:77], v[94:97], v[86:89], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v105, v79, 16, v78
	ds_load_u8 v78, v15 offset:5312
	ds_load_u8 v79, v15 offset:5184
	v_wmma_i32_16x16x16_iu8 v[70:77], v[98:101], v[90:93], v[70:77] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:5568
	ds_load_u8 v80, v15 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v79, 16, v78
	ds_load_u8 v78, v15 offset:4800
	ds_load_u8 v79, v15 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:5056
	ds_load_u8 v80, v15 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v79, 16, v78
	ds_load_u8 v78, v15 offset:4288
	ds_load_u8 v79, v15 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v15 offset:4544
	ds_load_u8 v80, v15 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v102, v79, 16, v78
	v_wmma_i32_16x16x16_iu8 v[78:85], v[102:105], v[86:89], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v86, v15 offset:7872
	ds_load_u8 v87, v15 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v15 offset:8128
	ds_load_u8 v88, v15 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v87, 16, v86
	ds_load_u8 v86, v15 offset:7360
	ds_load_u8 v87, v15 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v15 offset:7616
	ds_load_u8 v88, v15 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v87, 16, v86
	ds_load_u8 v86, v15 offset:6848
	ds_load_u8 v87, v15 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v15 offset:7104
	ds_load_u8 v88, v15 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v87, 16, v86
	ds_load_u8 v86, v15 offset:6336
	ds_load_u8 v87, v15 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v15 offset:6592
	ds_load_u8 v88, v15 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v106, v87, 16, v86
	ds_load_u8 v86, v13 offset:11104
	ds_load_u8 v87, v13 offset:11040
	v_wmma_i32_16x16x16_iu8 v[78:85], v[106:109], v[90:93], v[78:85] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v13 offset:11232
	ds_load_u8 v88, v13 offset:11168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v87, 16, v86
	ds_load_u8 v86, v13 offset:10848
	ds_load_u8 v87, v13 offset:10784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v13 offset:10976
	ds_load_u8 v88, v13 offset:10912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v87, 16, v86
	ds_load_u8 v86, v13 offset:10592
	ds_load_u8 v87, v13 offset:10528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v13 offset:10720
	ds_load_u8 v88, v13 offset:10656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v87, 16, v86
	ds_load_u8 v86, v13 offset:10336
	ds_load_u8 v87, v13 offset:10272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v13 offset:10464
	ds_load_u8 v88, v13 offset:10400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v87, 16, v86
	v_wmma_i32_16x16x16_iu8 v[86:93], v[94:97], v[110:113], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v94, v13 offset:12128
	ds_load_u8 v95, v13 offset:12064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v13 offset:12256
	ds_load_u8 v96, v13 offset:12192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v95, 16, v94
	ds_load_u8 v94, v13 offset:11872
	ds_load_u8 v95, v13 offset:11808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v13 offset:12000
	ds_load_u8 v96, v13 offset:11936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v95, 16, v94
	ds_load_u8 v94, v13 offset:11616
	ds_load_u8 v95, v13 offset:11552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v13 offset:11744
	ds_load_u8 v96, v13 offset:11680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v95, 16, v94
	ds_load_u8 v94, v13 offset:11360
	ds_load_u8 v95, v13 offset:11296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v13 offset:11488
	ds_load_u8 v96, v13 offset:11424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v114, v95, 16, v94
	v_wmma_i32_16x16x16_iu8 v[86:93], v[98:101], v[114:117], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[102:105], v[110:113], v[1:8] neg_lo:[1,1,0]
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v102, v16, s12, 1
	v_add_lshl_u32 v103, v17, s12, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s12, s12, s23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[94:101], v[106:109], v[114:117], v[94:101] neg_lo:[1,1,0]
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v107, v20, s12, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_cndmask_b32 v103, 0x80000000, v103
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v104, v14, s12, 1
	v_add_lshl_u32 v105, v18, s12, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v102, v102, s[4:7], 0 offen
	buffer_load_u16 v103, v103, s[4:7], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v106, v19, s12, 1
	v_add_lshl_u32 v108, v21, s12, 1
	v_add_lshl_u32 v109, v22, s12, 1
	v_add_lshl_u32 v110, v23, s12, 1
	v_add_lshl_u32 v111, v24, s12, 1
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	v_add_lshl_u32 v113, v26, s12, 1
	v_dual_cndmask_b32 v104, 0x80000000, v104 :: v_dual_cndmask_b32 v109, 0x80000000, v109
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v111, 0x80000000, v111, vcc_lo
	v_add_lshl_u32 v115, v28, s12, 1
	v_cndmask_b32_e32 v106, 0x80000000, v106, vcc_lo
	v_add_lshl_u32 v117, v31, s12, 1
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	v_add_lshl_u32 v119, v36, s12, 1
	v_cndmask_b32_e32 v110, 0x80000000, v110, vcc_lo
	s_clause 0x3
	buffer_load_u16 v105, v105, s[8:11], 0 offen
	buffer_load_u16 v107, v107, s[8:11], 0 offen
	buffer_load_u16 v109, v109, s[8:11], 0 offen
	buffer_load_u16 v111, v111, s[8:11], 0 offen
	v_cndmask_b32_e32 v113, 0x80000000, v113, vcc_lo
	buffer_load_u16 v104, v104, s[8:11], 0 offen
	v_cndmask_b32_e32 v115, 0x80000000, v115, vcc_lo
	buffer_load_u16 v106, v106, s[8:11], 0 offen
	v_cndmask_b32_e32 v117, 0x80000000, v117, vcc_lo
	buffer_load_u16 v108, v108, s[8:11], 0 offen
	v_cndmask_b32_e32 v119, 0x80000000, v119, vcc_lo
	buffer_load_u16 v110, v110, s[8:11], 0 offen
	v_add_lshl_u32 v112, v25, s12, 1
	v_add_lshl_u32 v114, v27, s12, 1
	v_add_lshl_u32 v116, v29, s12, 1
	v_add_lshl_u32 v118, v33, s12, 1
	s_clause 0x3
	buffer_load_u16 v113, v113, s[8:11], 0 offen
	buffer_load_u16 v115, v115, s[8:11], 0 offen
	buffer_load_u16 v117, v117, s[8:11], 0 offen
	buffer_load_u16 v119, v119, s[8:11], 0 offen
	v_cndmask_b32_e32 v112, 0x80000000, v112, vcc_lo
	v_cndmask_b32_e32 v114, 0x80000000, v114, vcc_lo
	v_cndmask_b32_e32 v116, 0x80000000, v116, vcc_lo
	v_cndmask_b32_e32 v118, 0x80000000, v118, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v102, 16, v102
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(12)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v70, v70, v102 :: v_dual_lshlrev_b32 v103, 16, v103
	v_mul_f32_e32 v71, v71, v102
	v_mul_f32_e32 v72, v72, v102
	v_mul_f32_e32 v73, v73, v102
	v_mul_f32_e32 v74, v74, v102
	v_mul_f32_e32 v75, v75, v102
	v_mul_f32_e32 v77, v77, v102
	v_dual_mul_f32 v78, v78, v102 :: v_dual_mul_f32 v95, v95, v103
	v_dual_mul_f32 v79, v79, v102 :: v_dual_mul_f32 v86, v86, v103
	v_dual_mul_f32 v80, v80, v102 :: v_dual_mul_f32 v97, v97, v103
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v105, 16, v105
	buffer_load_u16 v112, v112, s[8:11], 0 offen
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v107, 16, v107
	buffer_load_u16 v114, v114, s[8:11], 0 offen
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v109, 16, v109
	buffer_load_u16 v116, v116, s[8:11], 0 offen
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v111, 16, v111
	buffer_load_u16 v118, v118, s[8:11], 0 offen
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v104, 16, v104
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v87, v87, v103 :: v_dual_lshlrev_b32 v106, 16, v106
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v108, 16, v108
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v89, v89, v103 :: v_dual_lshlrev_b32 v110, 16, v110
	v_dual_mul_f32 v81, v81, v102 :: v_dual_mul_f32 v88, v88, v103
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v113, 16, v113
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v115, 16, v115
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v82, v82, v102 :: v_dual_lshlrev_b32 v117, 16, v117
	v_mul_f32_e32 v99, v99, v103
	v_dual_mul_f32 v83, v83, v102 :: v_dual_mul_f32 v90, v90, v103
	v_dual_mul_f32 v84, v84, v102 :: v_dual_mul_f32 v101, v101, v103
	v_dual_mul_f32 v85, v85, v102 :: v_dual_mul_f32 v92, v92, v103
	v_mul_f32_e32 v91, v91, v103
	v_dual_mul_f32 v94, v94, v103 :: v_dual_fmac_f32 v69, v71, v105
	v_dual_mul_f32 v96, v96, v103 :: v_dual_fmac_f32 v47, v70, v104
	v_dual_mul_f32 v98, v98, v103 :: v_dual_fmac_f32 v65, v75, v109
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v68, v72, v106 :: v_dual_fmac_f32 v67, v73, v107
	v_dual_fmac_f32 v66, v74, v108 :: v_dual_fmac_f32 v63, v77, v111
	v_dual_fmac_f32 v58, v81, v115 :: v_dual_fmac_f32 v51, v88, v106
	v_dual_fmac_f32 v52, v87, v105 :: v_dual_fmac_f32 v37, v97, v115
	v_fmac_f32_e32 v48, v90, v108
	v_fmac_f32_e32 v46, v91, v109
	v_fmac_f32_e32 v42, v92, v110
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v34, v99, v117 :: v_dual_lshlrev_b32 v119, 16, v119
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v76, v76, v102 :: v_dual_mul_f32 v93, v93, v103
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v56, v83, v117 :: v_dual_fmac_f32 v53, v86, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v54, v85, v119 :: v_dual_fmac_f32 v39, v95, v113
	v_dual_fmac_f32 v64, v76, v110 :: v_dual_fmac_f32 v41, v93, v111
	v_fmac_f32_e32 v30, v101, v119
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v112, 16, v112
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v114, 16, v114
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v116, 16, v116
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v100, v100, v103
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v118, 16, v118
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v62, v78, v112 :: v_dual_fmac_f32 v59, v80, v114
	v_dual_fmac_f32 v60, v79, v113 :: v_dual_fmac_f32 v57, v82, v116
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v55, v84, v118 :: v_dual_fmac_f32 v50, v89, v107
	v_fmac_f32_e32 v35, v98, v116
	v_fmac_f32_e32 v40, v94, v112
	v_fmac_f32_e32 v38, v96, v114
	v_fmac_f32_e32 v32, v100, v118
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v18, v55, v55 :: v_dual_max_f32 v19, v54, v54
	v_dual_max_f32 v20, v53, v53 :: v_dual_max_f32 v3, v68, v68
	v_max_f32_e32 v4, v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v21, v51, v51
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v22, v50, v50
	v_max_f32_e32 v23, v48, v48
	v_max_f32_e32 v36, 0, v20
	v_max_f32_e32 v20, v52, v52
	v_max_f32_e32 v44, 0, v21
	v_dual_max_f32 v21, v41, v41 :: v_dual_max_f32 v24, v46, v46
	v_dual_max_f32 v1, v47, v47 :: v_dual_max_f32 v2, v69, v69
	v_dual_max_f32 v5, v66, v66 :: v_dual_max_f32 v6, v65, v65
	v_max_f32_e32 v7, v64, v64
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_max_f32_e32 v43, 0, v20
	v_dual_max_f32 v45, 0, v22 :: v_dual_max_f32 v46, 0, v23
	v_dual_max_f32 v47, 0, v24 :: v_dual_max_f32 v20, v42, v42
	v_dual_max_f32 v23, v39, v39 :: v_dual_max_f32 v22, v40, v40
	v_dual_max_f32 v24, v38, v38 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v5, 0, v5
	v_max_f32_e32 v8, v63, v63
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v12, v62, v62 :: v_dual_max_f32 v13, v60, v60
	v_dual_max_f32 v14, v59, v59 :: v_dual_max_f32 v15, v58, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v8, 0, v8
	v_dual_max_f32 v16, v57, v57 :: v_dual_max_f32 v17, v56, v56
	v_max_f32_e32 v39, 0, v21
	v_dual_max_f32 v41, 0, v23 :: v_dual_max_f32 v40, 0, v22
	v_max_f32_e32 v23, v32, v32
	v_dual_max_f32 v21, v35, v35 :: v_dual_max_f32 v42, 0, v24
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v35, v1, v1 :: v_dual_max_f32 v22, v34, v34
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v38, 0, v20
	v_dual_max_f32 v24, v30, v30 :: v_dual_mul_f32 v31, v4, v4
	v_max_f32_e32 v20, v37, v37
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v48, 0, v21 :: v_dual_mul_f32 v29, v7, v7
	v_dual_max_f32 v50, 0, v23 :: v_dual_mul_f32 v33, v5, v5
	v_max_f32_e32 v51, 0, v24
	v_max_f32_e32 v37, 0, v20
	v_max_f32_e32 v49, 0, v22
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v34, v2, v2 :: v_dual_mul_f32 v27, v12, v12
	v_dual_mul_f32 v32, v3, v3 :: v_dual_mul_f32 v25, v14, v14
	v_dual_mul_f32 v30, v6, v6 :: v_dual_mul_f32 v23, v16, v16
	v_dual_mul_f32 v28, v8, v8 :: v_dual_mul_f32 v21, v18, v18
	v_mul_f32_e32 v26, v13, v13
	v_mul_f32_e32 v24, v15, v15
	v_dual_mul_f32 v22, v17, v17 :: v_dual_mul_f32 v15, v46, v46
	v_dual_mul_f32 v20, v19, v19 :: v_dual_mul_f32 v13, v38, v38
	v_dual_mul_f32 v19, v36, v36 :: v_dual_mul_f32 v18, v43, v43
	v_mul_f32_e32 v7, v41, v41
	v_dual_mul_f32 v17, v44, v44 :: v_dual_mul_f32 v16, v45, v45
	v_mul_f32_e32 v1, v51, v51
	v_dual_mul_f32 v14, v47, v47 :: v_dual_mul_f32 v5, v37, v37
	v_dual_mul_f32 v12, v39, v39 :: v_dual_mul_f32 v3, v49, v49
	v_mul_f32_e32 v8, v40, v40
	v_mul_f32_e32 v6, v42, v42
	v_mul_f32_e32 v4, v48, v48
	v_mul_f32_e32 v2, v50, v50
.LBB0_4:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.h, 0
	v_mov_b16_e32 v36.l, v34.h
	v_and_b32_e32 v0, 16, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v37, s23, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v35.h
	v_mov_b16_e32 v10.h, v36.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v38, s23, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v9, 1, v36
	v_mov_b16_e32 v40.l, v32.h
	v_mov_b16_e32 v40.h, v36.h
	v_mov_b16_e32 v36.l, v31.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s0, s29, s23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v9, v34, v9, 0x7fff
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v34, 1, v40
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s0, s0, s28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	v_add3_u32 v10, v35, v10, 0x7fff
	v_mov_b16_e32 v35.l, v33.h
	v_mov_b16_e32 v35.h, v36.h
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v9.l, v10.h
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_and_b32_e32 v11, 56, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v32, v34, 0x7fff
	v_and_b32_e32 v32, 1, v35
	v_mov_b16_e32 v34.l, v29.h
	v_mov_b16_e32 v34.h, v36.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v39, s0, v11
	v_add3_u32 v41, s0, v11, 64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v36
	v_mov_b16_e32 v36.l, v30.h
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v11, v31, v11, 0x7fff
	v_and_b32_e32 v31, 1, v36
	v_mov_b16_e32 v36.l, v28.h
	v_mov_b16_e32 v11.l, v10.h
	v_add3_u32 v10, v33, v32, 0x7fff
	v_and_b32_e32 v32, 1, v34
	v_add3_u32 v30, v30, v31, 0x7fff
	v_and_b32_e32 v31, 1, v36
	v_mov_b16_e32 v36.l, v26.h
	v_mov_b16_e32 v33.l, v27.h
	v_mov_b16_e32 v33.h, v36.h
	v_mov_b16_e32 v30.l, v10.h
	v_add3_u32 v10, v29, v32, 0x7fff
	v_add3_u32 v28, v28, v31, 0x7fff
	v_and_b32_e32 v29, 1, v36
	v_mov_b16_e32 v36.l, v24.h
	v_mov_b16_e32 v32.l, v25.h
	v_mov_b16_e32 v32.h, v36.h
	v_mov_b16_e32 v28.l, v10.h
	v_and_b32_e32 v31, 1, v33
	v_add3_u32 v26, v26, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v29, 1, v32
	v_add3_u32 v10, v27, v31, 0x7fff
	v_and_b32_e32 v27, 1, v36
	v_mov_b16_e32 v36.l, v22.h
	v_mov_b16_e32 v31.l, v23.h
	v_mov_b16_e32 v31.h, v36.h
	v_mov_b16_e32 v26.l, v10.h
	v_add3_u32 v10, v25, v29, 0x7fff
	v_add3_u32 v24, v24, v27, 0x7fff
	v_and_b32_e32 v25, 1, v36
	v_and_b32_e32 v27, 1, v31
	v_mov_b16_e32 v36.l, v20.h
	v_mov_b16_e32 v29.l, v21.h
	v_mov_b16_e32 v29.h, v36.h
	v_mov_b16_e32 v24.l, v10.h
	v_add3_u32 v10, v23, v27, 0x7fff
	v_add3_u32 v22, v22, v25, 0x7fff
	v_and_b32_e32 v23, 1, v36
	v_and_b32_e32 v25, 1, v29
	v_mov_b16_e32 v36.l, v18.h
	v_mov_b16_e32 v27.l, v19.h
	v_mov_b16_e32 v27.h, v36.h
	v_mov_b16_e32 v22.l, v10.h
	v_add3_u32 v10, v21, v25, 0x7fff
	v_add3_u32 v20, v20, v23, 0x7fff
	v_and_b32_e32 v21, 1, v36
	v_and_b32_e32 v23, 1, v27
	v_mov_b16_e32 v25.l, v17.h
	v_mov_b16_e32 v25.h, v36.h
	v_mov_b16_e32 v36.l, v16.h
	v_mov_b16_e32 v20.l, v10.h
	v_add3_u32 v10, v19, v23, 0x7fff
	v_add3_u32 v18, v18, v21, 0x7fff
	v_and_b32_e32 v21, 1, v25
	v_mov_b16_e32 v23.l, v15.h
	v_mov_b16_e32 v23.h, v36.h
	v_and_b32_e32 v19, 1, v36
	v_mov_b16_e32 v36.l, v14.h
	v_mov_b16_e32 v18.l, v10.h
	v_add3_u32 v10, v17, v21, 0x7fff
	v_and_b32_e32 v17, 1, v23
	v_mov_b16_e32 v21.l, v13.h
	v_mov_b16_e32 v21.h, v36.h
	v_add3_u32 v16, v16, v19, 0x7fff
	v_and_b32_e32 v19, 1, v36
	v_mov_b16_e32 v16.l, v10.h
	v_add3_u32 v10, v15, v17, 0x7fff
	v_mov_b16_e32 v36.l, v12.h
	v_and_b32_e32 v15, 1, v21
	v_mov_b16_e32 v17.l, v8.h
	v_mov_b16_e32 v17.h, v36.h
	v_add3_u32 v14, v14, v19, 0x7fff
	v_mov_b16_e32 v14.l, v10.h
	v_and_b32_e32 v10, 1, v36
	v_add3_u32 v13, v13, v15, 0x7fff
	v_and_b32_e32 v15, 1, v17
	v_mov_b16_e32 v17.l, v6.h
	v_mov_b16_e32 v13.l, v2.h
	v_mov_b16_e32 v36.l, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v8, v8, v15, 0x7fff
	v_and_b32_e32 v15, 1, v17
	v_cndmask_b32_e32 v17, v14, v18, vcc_lo
	v_add3_u32 v10, v12, v10, 0x7fff
	v_mov_b16_e32 v10.l, v13.h
	v_mov_b16_e32 v13.h, v36.h
	v_add3_u32 v6, v6, v15, 0x7fff
	v_cndmask_b32_e32 v14, v18, v14, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v18, v10, v16 :: v_dual_and_b32 v13, 1, v13
	v_cndmask_b32_e32 v10, v16, v10, vcc_lo
	v_add3_u32 v2, v2, v13, 0x7fff
	v_dual_mov_b32 v13, 0x7632 :: v_dual_and_b32 v12, 1, v36
	v_mov_b16_e32 v36.l, v5.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v13, 0x3276, v13, vcc_lo
	v_add3_u32 v7, v7, v12, 0x7fff
	v_mov_b16_e32 v7.l, v8.h
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v8, 1, v36
	v_mov_b16_e32 v36.l, v3.h
	v_mov_b16_e32 v12.l, v4.h
	v_mov_b16_e32 v12.h, v36.h
	v_lshl_or_b32 v13, v13, 8, v13
	v_add3_u32 v5, v5, v8, 0x7fff
	v_mov_b16_e32 v5.l, v6.h
	v_and_b32_e32 v8, 1, v36
	v_mov_b16_e32 v36.l, v1.h
	v_and_b32_e32 v12, 1, v12
	v_cndmask_b32_e32 v15, v24, v20, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v6, 1, v36
	v_add3_u32 v4, v4, v12, 0x7fff
	v_mov_b32_e32 v12, 0x5410
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v0, v1, v6, 0x7fff
	v_mov_b16_e32 v0.l, v2.h
	v_cndmask_b32_e32 v12, 0x1054, v12, vcc_lo
	v_dual_cndmask_b32 v6, v11, v28 :: v_dual_cndmask_b32 v1, v30, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v2, v9, v30 :: v_dual_cndmask_b32 v19, v0, v5
	v_add3_u32 v3, v3, v8, 0x7fff
	v_mov_b16_e32 v3.l, v4.h
	v_lshl_or_b32 v12, v12, 8, v12
	v_dual_cndmask_b32 v9, v26, v22 :: v_dual_cndmask_b32 v0, v5, v0
	v_permlanex16_b32 v5, v6, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v16, v3, v7, vcc_lo
	v_cndmask_b32_e32 v3, v7, v3, vcc_lo
	v_and_b32_e32 v7, 0x540054, v12
	v_and_b32_e32 v12, 0x760076, v13
	v_cndmask_b32_e32 v4, v28, v11, vcc_lo
	v_dual_cndmask_b32 v8, v22, v26 :: v_dual_cndmask_b32 v11, v20, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v6, v7, 4, v7
	v_lshl_or_b32 v7, v12, 4, v12
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 0x5040504, v6
	v_and_b32_e32 v15, 0x7060706, v7
	v_permlanex16_b32 v21, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v14
	v_perm_b32 v1, v2, v1, v15
	v_perm_b32 v2, v5, v4, v14
	v_perm_b32 v3, v5, v4, v15
	v_perm_b32 v4, v9, v8, v14
	v_perm_b32 v5, v9, v8, v15
	v_perm_b32 v6, v12, v11, v14
	v_perm_b32 v7, v12, v11, v15
	v_perm_b32 v8, v13, v17, v14
	v_perm_b32 v9, v13, v17, v15
	v_perm_b32 v12, v21, v16, v14
	v_perm_b32 v13, v21, v16, v15
	v_add_lshl_u32 v16, v39, v37, 1
	v_add_lshl_u32 v17, v41, v37, 1
	v_perm_b32 v10, v20, v18, v14
	v_perm_b32 v11, v20, v18, v15
	v_add_lshl_u32 v18, v39, v38, 1
	v_perm_b32 v14, v22, v19, v14
	v_perm_b32 v15, v22, v19, v15
	v_add_lshl_u32 v19, v41, v38, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v17, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v18, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v19, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 35
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
		.amdhsa_inst_pref_size 63
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 120
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10004
; TotalNumSgprs: 37
; NumVgprs: 120
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 37
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	310                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     120
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
