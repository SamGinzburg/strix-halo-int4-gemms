	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_mov_b32_e32 v44, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 3, v0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
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
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_readfirstlane_b32 s6, v1
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v2, 16, v0
	v_lshrrev_b32_e32 v28, 1, v0
	s_mov_b32 s12, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
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
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v27, v3, 16, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v26, 32, v27
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s14, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s13, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s15, s4, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s15, s14
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s5
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14 is_stmt 1              ; generate_amdgcn.py:299:14
	s_lshl_b32 s22, s2, 6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s2, s4, 7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s16, 64
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s16, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s13, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s17, s1, 31
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s16, s0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s17, 27
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s28, s16, 6
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s0
.Ltmp22:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s14, 7
	s_mov_b32 s14, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v7, 0x60, v0
	v_lshlrev_b32_e32 v13, 5, v0
	v_dual_mov_b32 v43, 0 :: v_dual_lshlrev_b32 v4, 4, v0
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v5, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v9, 1, v7
	v_dual_mov_b32 v42, 0 :: v_dual_lshlrev_b32 v7, 4, v7
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v8, 2, v0
	v_bfe_i32 v11, v0, 3, 1
	v_lshlrev_b32_e32 v12, 2, v0
	v_bfe_i32 v0, v0, 2, 1
	v_and_or_b32 v7, 0x160, v13, v7
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s29, s1, 5
.Ltmp24:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v6, 4, v2
	v_dual_mov_b32 v40, 0 :: v_dual_and_b32 v11, 0x90, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_and_or_b32 v0, 0x90, v0, v7
	v_or_b32_e32 v7, s22, v27
	v_cndmask_b32_e64 v10, 0x90, 0, vcc_lo
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v8, s22, v8
	v_mov_b32_e32 v44, 0
	v_mul_lo_u32 v46, v7, s29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_lshl_or_b32 v7, s15, 7, v28
	s_mov_b32 s15, s12
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_and_b32_e32 v2, 16, v4
	v_and_b32_e32 v4, 0xf70, v4
	v_and_b32_e32 v3, 24, v5
	v_and_b32_e32 v5, 0x778, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_subrev_nc_u32_e32 v7, s0, v7
	v_or3_b32 v45, v6, v9, s2
	v_xor_b32_e32 v4, v11, v4
	v_xor_b32_e32 v6, 16, v0
	v_xor_b32_e32 v5, v10, v5
	v_or_b32_e32 v10, s22, v26
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v67, 0, v0
	v_mad_u64_u32 v[8:9], null, s13, v8, v[3:4]
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v47, v10, s29
	v_mad_u64_u32 v[9:10], null, s13, v7, v[2:3]
	s_mov_b32 s13, s12
	v_and_b32_e32 v12, 0x210, v12
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v63, 0, v5
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v64, 0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v1, v1, 5, v12
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v68, 0, v6
	v_or_b32_e32 v48, 2, v45
	v_or_b32_e32 v49, 4, v45
	v_xor_b32_e32 v11, 16, v1
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v65, 0, v1
	v_mov_b32_e32 v0, s12
	v_or_b32_e32 v50, 6, v45
	v_or_b32_e32 v51, 8, v45
	v_or_b32_e32 v52, 10, v45
	v_or_b32_e32 v53, 12, v45
	v_or_b32_e32 v54, 14, v45
	v_or_b32_e32 v55, 64, v45
	v_or_b32_e32 v56, 0x42, v45
	v_or_b32_e32 v57, 0x44, v45
	v_or_b32_e32 v58, 0x46, v45
	v_or_b32_e32 v59, 0x48, v45
	v_or_b32_e32 v60, 0x4a, v45
	v_or_b32_e32 v61, 0x4c, v45
	v_or_b32_e32 v62, 0x4e, v45
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v66, 0, v11
	v_dual_mov_b32 v1, s13 :: v_dual_mov_b32 v2, s14
	v_dual_mov_b32 v3, s15 :: v_dual_mov_b32 v4, s16
	v_dual_mov_b32 v5, s17 :: v_dual_mov_b32 v6, s18
	v_mov_b32_e32 v7, s19
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v11, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s3, s3, 6
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s26
	s_mov_b32 s7, s27
	s_mov_b32 s12, s8
	s_mov_b32 s13, s9
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v73, s3, v8
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v74, s3, v9
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s3, 5
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_add_i32 s1, s3, 32
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s29
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[77:78], v73, s[24:27], 0 offen
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	buffer_load_b128 v[69:72], v74, s[4:7], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b64 v[79:80], v73, s[24:27], 0 offen offset:32
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	buffer_load_b128 v[73:76], v74, s[4:7], 0 offen offset:32
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v81, v46, s0, 1
	v_add_lshl_u32 v82, v47, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s0, s23
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s1, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v83, v45, s16, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v99, v46, s1, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v84, v48, s16, 1
	v_add_lshl_u32 v85, v49, s16, 1
	v_add_lshl_u32 v86, v50, s16, 1
	v_add_lshl_u32 v87, v51, s16, 1
	v_add_lshl_u32 v88, v52, s16, 1
	v_add_lshl_u32 v89, v53, s16, 1
	v_add_lshl_u32 v90, v54, s16, 1
	v_add_lshl_u32 v91, v55, s16, 1
	v_add_lshl_u32 v92, v56, s16, 1
	v_add_lshl_u32 v93, v57, s16, 1
	v_add_lshl_u32 v94, v58, s16, 1
	v_add_lshl_u32 v95, v59, s16, 1
	v_add_lshl_u32 v96, v60, s16, 1
	v_add_lshl_u32 v97, v61, s16, 1
	v_add_lshl_u32 v98, v62, s16, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s29
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v100, v47, s1, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s1, s23
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v81, 0x80000000, v81, s0
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s1, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v101, v45, s16, 1
	v_add_lshl_u32 v102, v48, s16, 1
	v_add_lshl_u32 v103, v49, s16, 1
	v_add_lshl_u32 v104, v50, s16, 1
	v_add_lshl_u32 v105, v51, s16, 1
	v_add_lshl_u32 v106, v52, s16, 1
	v_add_lshl_u32 v107, v53, s16, 1
	v_add_lshl_u32 v108, v54, s16, 1
	v_add_lshl_u32 v109, v55, s16, 1
	v_add_lshl_u32 v110, v56, s16, 1
	v_add_lshl_u32 v111, v57, s16, 1
	v_add_lshl_u32 v112, v58, s16, 1
	v_add_lshl_u32 v113, v59, s16, 1
	v_add_lshl_u32 v114, v60, s16, 1
	v_add_lshl_u32 v115, v61, s16, 1
	v_add_lshl_u32 v116, v62, s16, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v82, 0x80000000, v82, s0
	v_cndmask_b32_e64 v99, 0x80000000, v99, s1
	v_cndmask_b32_e64 v100, 0x80000000, v100, s1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v84, 0x80000000, v84, s0
	v_cndmask_b32_e64 v83, 0x80000000, v83, s0
	v_cndmask_b32_e64 v85, 0x80000000, v85, s0
	v_cndmask_b32_e64 v86, 0x80000000, v86, s0
	v_cndmask_b32_e64 v87, 0x80000000, v87, s0
	v_cndmask_b32_e64 v88, 0x80000000, v88, s0
	v_cndmask_b32_e64 v89, 0x80000000, v89, s0
	v_cndmask_b32_e64 v90, 0x80000000, v90, s0
	v_cndmask_b32_e64 v91, 0x80000000, v91, s0
	v_cndmask_b32_e64 v92, 0x80000000, v92, s0
	v_cndmask_b32_e64 v93, 0x80000000, v93, s0
	v_cndmask_b32_e64 v94, 0x80000000, v94, s0
	v_cndmask_b32_e64 v95, 0x80000000, v95, s0
	v_cndmask_b32_e64 v96, 0x80000000, v96, s0
	v_cndmask_b32_e64 v97, 0x80000000, v97, s0
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	v_cndmask_b32_e64 v101, 0x80000000, v101, s1
	v_cndmask_b32_e64 v102, 0x80000000, v102, s1
	v_cndmask_b32_e64 v103, 0x80000000, v103, s1
	v_cndmask_b32_e64 v104, 0x80000000, v104, s1
	v_cndmask_b32_e64 v105, 0x80000000, v105, s1
	v_cndmask_b32_e64 v106, 0x80000000, v106, s1
	v_cndmask_b32_e64 v107, 0x80000000, v107, s1
	v_cndmask_b32_e64 v108, 0x80000000, v108, s1
	v_cndmask_b32_e64 v109, 0x80000000, v109, s1
	v_cndmask_b32_e64 v110, 0x80000000, v110, s1
	v_cndmask_b32_e64 v111, 0x80000000, v111, s1
	v_cndmask_b32_e64 v112, 0x80000000, v112, s1
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	v_cndmask_b32_e64 v114, 0x80000000, v114, s1
	v_cndmask_b32_e64 v115, 0x80000000, v115, s1
	v_cndmask_b32_e64 v116, 0x80000000, v116, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s28, s28, -1
	s_add_i32 s3, s3, 64
	s_cmp_lg_u32 s28, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(3)
	ds_store_b64 v63, v[77:78] offset:8192
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(2)
	ds_store_b128 v64, v[69:72]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b64 v63, v[79:80] offset:10240
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v64, v[73:76] offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x3
	buffer_load_u16 v173, v81, s[12:15], 0 offen
	buffer_load_u16 v174, v82, s[12:15], 0 offen
	buffer_load_u16 v175, v99, s[12:15], 0 offen
	buffer_load_u16 v176, v100, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x1f
	buffer_load_u16 v177, v84, s[8:11], 0 offen
	buffer_load_u16 v178, v83, s[8:11], 0 offen
	buffer_load_u16 v179, v102, s[8:11], 0 offen
	buffer_load_u16 v180, v101, s[8:11], 0 offen
	buffer_load_u16 v181, v86, s[8:11], 0 offen
	buffer_load_u16 v182, v85, s[8:11], 0 offen
	buffer_load_u16 v183, v104, s[8:11], 0 offen
	buffer_load_u16 v184, v103, s[8:11], 0 offen
	buffer_load_u16 v185, v88, s[8:11], 0 offen
	buffer_load_u16 v186, v87, s[8:11], 0 offen
	buffer_load_u16 v187, v106, s[8:11], 0 offen
	buffer_load_u16 v188, v105, s[8:11], 0 offen
	buffer_load_u16 v189, v90, s[8:11], 0 offen
	buffer_load_u16 v190, v89, s[8:11], 0 offen
	buffer_load_u16 v191, v108, s[8:11], 0 offen
	buffer_load_u16 v192, v107, s[8:11], 0 offen
	buffer_load_u16 v193, v92, s[8:11], 0 offen
	buffer_load_u16 v194, v91, s[8:11], 0 offen
	buffer_load_u16 v195, v110, s[8:11], 0 offen
	buffer_load_u16 v196, v109, s[8:11], 0 offen
	buffer_load_u16 v197, v94, s[8:11], 0 offen
	buffer_load_u16 v198, v93, s[8:11], 0 offen
	buffer_load_u16 v199, v112, s[8:11], 0 offen
	buffer_load_u16 v200, v111, s[8:11], 0 offen
	buffer_load_u16 v201, v96, s[8:11], 0 offen
	buffer_load_u16 v202, v95, s[8:11], 0 offen
	buffer_load_u16 v203, v114, s[8:11], 0 offen
	buffer_load_u16 v204, v113, s[8:11], 0 offen
	buffer_load_u16 v205, v98, s[8:11], 0 offen
	buffer_load_u16 v206, v97, s[8:11], 0 offen
	buffer_load_u16 v207, v116, s[8:11], 0 offen
	buffer_load_u16 v208, v115, s[8:11], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[85:88], v65 offset:8192
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[93:96], v67
	ds_load_b128 v[101:104], v67 offset:2048
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[105:108], v65 offset:9216
	ds_load_b128 v[117:120], v65 offset:10240
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[125:128], v67 offset:4096
	ds_load_b128 v[133:136], v67 offset:6144
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[137:140], v66 offset:8192
	ds_load_b128 v[141:144], v66 offset:9216
	ds_load_b128 v[145:148], v65 offset:11264
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[149:152], v68
	ds_load_b128 v[153:156], v68 offset:2048
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[157:160], v66 offset:10240
	ds_load_b128 v[161:164], v66 offset:11264
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[165:168], v68 offset:4096
	ds_load_b128 v[169:172], v68 offset:6144
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[93:96], v[85:88], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu8 v[77:84], v[101:104], v[85:88], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[93:96], v[105:108], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[101:104], v[105:108], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[125:128], v[117:120], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[133:136], v[117:120], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[125:128], v[145:148], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[133:136], v[145:148], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[149:152], v[137:140], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[165:168], v[157:160], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[153:156], v[137:140], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[149:152], v[141:144], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[153:156], v[141:144], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[165:168], v[161:164], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[169:172], v[161:164], v[125:132] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v102, v102
	v_wmma_i32_16x16x16_iu8 v[109:116], v[169:172], v[157:160], v[109:116] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v135, 16, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v102, v102, v135 :: v_dual_lshlrev_b32 v133, 16, v173
	v_dual_mul_f32 v69, v69, v133 :: v_dual_lshlrev_b32 v134, 16, v174
	s_waitcnt vmcnt(32)
	v_dual_mul_f32 v71, v71, v133 :: v_dual_lshlrev_b32 v136, 16, v176
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v73, v73, v133 :: v_dual_lshlrev_b32 v138, 16, v178
	s_waitcnt vmcnt(29)
	v_dual_mul_f32 v74, v74, v133 :: v_dual_lshlrev_b32 v139, 16, v179
	s_waitcnt vmcnt(28)
	v_dual_mul_f32 v75, v75, v133 :: v_dual_lshlrev_b32 v140, 16, v180
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v77, v77, v133 :: v_dual_lshlrev_b32 v142, 16, v182
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v76, v76, v133 :: v_dual_lshlrev_b32 v143, 16, v183
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v79, v79, v133 :: v_dual_lshlrev_b32 v144, 16, v184
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v81, v81, v133 :: v_dual_lshlrev_b32 v146, 16, v186
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v78, v78, v133 :: v_dual_lshlrev_b32 v147, 16, v187
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v83, v83, v133 :: v_dual_lshlrev_b32 v148, 16, v188
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v80, v80, v133 :: v_dual_lshlrev_b32 v151, 16, v191
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v82, v82, v133 :: v_dual_lshlrev_b32 v155, 16, v195
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v84, v84, v133 :: v_dual_lshlrev_b32 v159, 16, v199
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v86, v134, v86 :: v_dual_lshlrev_b32 v163, 16, v203
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v85, v134, v85 :: v_dual_lshlrev_b32 v164, 16, v204
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v118, v136, v118 :: v_dual_lshlrev_b32 v165, 16, v205
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v117, v136, v117 :: v_dual_lshlrev_b32 v166, 16, v206
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v88, v134, v88 :: v_dual_lshlrev_b32 v167, 16, v207
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v87, v134, v87 :: v_dual_lshlrev_b32 v168, 16, v208
	v_mul_f32_e32 v70, v70, v133
	v_mul_f32_e32 v72, v72, v133
	v_dual_mul_f32 v104, v104, v135 :: v_dual_lshlrev_b32 v137, 16, v177
	v_dual_mul_f32 v106, v106, v135 :: v_dual_lshlrev_b32 v141, 16, v181
	v_dual_mul_f32 v108, v108, v135 :: v_dual_lshlrev_b32 v145, 16, v185
	v_dual_mul_f32 v110, v110, v135 :: v_dual_lshlrev_b32 v149, 16, v189
	v_dual_mul_f32 v103, v103, v135 :: v_dual_lshlrev_b32 v150, 16, v190
	v_dual_mul_f32 v112, v112, v135 :: v_dual_lshlrev_b32 v153, 16, v193
	v_dual_mul_f32 v107, v107, v135 :: v_dual_lshlrev_b32 v154, 16, v194
	v_dual_mul_f32 v114, v114, v135 :: v_dual_lshlrev_b32 v157, 16, v197
	v_dual_mul_f32 v111, v111, v135 :: v_dual_lshlrev_b32 v158, 16, v198
	v_dual_mul_f32 v116, v116, v135 :: v_dual_lshlrev_b32 v161, 16, v201
	v_dual_mul_f32 v115, v115, v135 :: v_dual_lshlrev_b32 v162, 16, v202
	v_dual_mul_f32 v120, v136, v120 :: v_dual_mul_f32 v89, v134, v89
	v_dual_mul_f32 v119, v136, v119 :: v_dual_mul_f32 v90, v134, v90
	v_dual_mul_f32 v122, v136, v122 :: v_dual_mul_f32 v91, v134, v91
	v_dual_mul_f32 v121, v136, v121 :: v_dual_mul_f32 v92, v134, v92
	v_dual_mul_f32 v124, v136, v124 :: v_dual_mul_f32 v93, v134, v93
	v_dual_mul_f32 v123, v136, v123 :: v_dual_mul_f32 v94, v134, v94
	v_dual_mul_f32 v126, v136, v126 :: v_dual_mul_f32 v95, v134, v95
	v_dual_mul_f32 v125, v136, v125 :: v_dual_mul_f32 v96, v134, v96
	v_dual_mul_f32 v128, v136, v128 :: v_dual_mul_f32 v97, v134, v97
	v_dual_mul_f32 v127, v136, v127 :: v_dual_mul_f32 v98, v134, v98
	v_dual_mul_f32 v130, v136, v130 :: v_dual_mul_f32 v99, v134, v99
	v_dual_mul_f32 v129, v136, v129 :: v_dual_mul_f32 v100, v134, v100
	v_dual_mul_f32 v105, v105, v135 :: v_dual_lshlrev_b32 v152, 16, v192
	v_dual_mul_f32 v109, v109, v135 :: v_dual_lshlrev_b32 v156, 16, v196
	v_dual_mul_f32 v113, v113, v135 :: v_dual_lshlrev_b32 v160, 16, v200
	v_dual_mul_f32 v101, v101, v135 :: v_dual_mul_f32 v132, v136, v132
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v43, v69, v138
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v131, v136, v131 :: v_dual_fmac_f32 v44, v70, v137
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v25, v86, v137 :: v_dual_fmac_f32 v24, v85, v138
	v_dual_fmac_f32 v42, v71, v142 :: v_dual_fmac_f32 v41, v72, v141
	v_dual_fmac_f32 v22, v88, v141 :: v_dual_fmac_f32 v23, v87, v142
	v_dual_fmac_f32 v40, v73, v146 :: v_dual_fmac_f32 v39, v74, v145
	v_dual_fmac_f32 v21, v90, v145 :: v_dual_fmac_f32 v20, v89, v146
	v_dual_fmac_f32 v38, v75, v150 :: v_dual_fmac_f32 v37, v76, v149
	v_dual_fmac_f32 v19, v92, v149 :: v_dual_fmac_f32 v18, v91, v150
	v_dual_fmac_f32 v36, v77, v154 :: v_dual_fmac_f32 v35, v78, v153
	v_dual_fmac_f32 v17, v94, v153 :: v_dual_fmac_f32 v16, v93, v154
	v_dual_fmac_f32 v34, v79, v158 :: v_dual_fmac_f32 v33, v80, v157
	v_dual_fmac_f32 v15, v96, v157 :: v_dual_fmac_f32 v14, v95, v158
	v_dual_fmac_f32 v32, v81, v162 :: v_dual_fmac_f32 v31, v82, v161
	v_dual_fmac_f32 v12, v98, v161 :: v_dual_fmac_f32 v13, v97, v162
	v_dual_fmac_f32 v30, v83, v166 :: v_dual_fmac_f32 v29, v84, v165
	v_dual_fmac_f32 v10, v100, v165 :: v_dual_fmac_f32 v11, v99, v166
	v_dual_fmac_f32 v43, v101, v140 :: v_dual_fmac_f32 v44, v102, v139
	v_dual_fmac_f32 v42, v103, v144 :: v_dual_fmac_f32 v41, v104, v143
	v_dual_fmac_f32 v40, v105, v148 :: v_dual_fmac_f32 v39, v106, v147
	v_dual_fmac_f32 v38, v107, v152 :: v_dual_fmac_f32 v37, v108, v151
	v_dual_fmac_f32 v36, v109, v156 :: v_dual_fmac_f32 v35, v110, v155
	v_dual_fmac_f32 v34, v111, v160 :: v_dual_fmac_f32 v33, v112, v159
	v_dual_fmac_f32 v32, v113, v164 :: v_dual_fmac_f32 v31, v114, v163
	v_dual_fmac_f32 v30, v115, v168 :: v_dual_fmac_f32 v29, v116, v167
	v_dual_fmac_f32 v24, v117, v140 :: v_dual_fmac_f32 v25, v118, v139
	v_dual_fmac_f32 v23, v119, v144 :: v_dual_fmac_f32 v22, v120, v143
	v_dual_fmac_f32 v20, v121, v148 :: v_dual_fmac_f32 v21, v122, v147
	v_dual_fmac_f32 v18, v123, v152 :: v_dual_fmac_f32 v19, v124, v151
	v_dual_fmac_f32 v16, v125, v156 :: v_dual_fmac_f32 v17, v126, v155
	v_dual_fmac_f32 v14, v127, v160 :: v_dual_fmac_f32 v15, v128, v159
	v_dual_fmac_f32 v13, v129, v164 :: v_dual_fmac_f32 v12, v130, v163
	v_dual_fmac_f32 v11, v131, v168 :: v_dual_fmac_f32 v10, v132, v167
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v1, v43, 16, 1
	v_bfe_u32 v2, v44, 16, 1
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s0, s22, s23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v44, v44
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s2, s0, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v1, v43, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v43, v43
	v_add3_u32 v2, v44, v2, 0x7fff
	v_bfe_u32 v5, v39, 16, 1
	v_bfe_u32 v4, v40, 16, 1
	v_cmp_o_f32_e64 s3, v39, v39
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s0
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s1
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_and_b32_e32 v0, 56, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v2, v41, 16, 1
	v_cmp_o_f32_e64 s0, v42, v42
	v_cmp_o_f32_e64 s1, v41, v41
	v_add3_u32 v5, v39, v5, 0x7fff
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v28, s2, v0
	v_add3_u32 v43, s2, v0, 64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v0, v42, 16, 1
	v_add3_u32 v2, v41, v2, 0x7fff
	v_bfe_u32 v6, v38, 16, 1
	v_add3_u32 v4, v40, v4, 0x7fff
	v_cmp_o_f32_e64 s2, v40, v40
	v_add3_u32 v0, v42, v0, 0x7fff
	v_bfe_u32 v7, v35, 16, 1
	v_bfe_u32 v8, v32, 16, 1
	v_bfe_u32 v9, v31, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s2
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s0
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s3
	v_add3_u32 v5, v38, v6, 0x7fff
	v_bfe_u32 v6, v36, 16, 1
	v_bfe_u32 v4, v37, 16, 1
	v_cmp_o_f32_e64 s0, v38, v38
	v_cmp_o_f32_e64 s2, v36, v36
	v_add3_u32 v7, v35, v7, 0x7fff
	v_add3_u32 v6, v36, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v35, v35
	v_add3_u32 v4, v37, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v37, v37
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s0
	v_bfe_u32 v5, v34, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s2
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s3
	v_bfe_u32 v7, v33, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	v_add3_u32 v5, v34, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v34, v34
	v_cmp_o_f32_e64 s1, v33, v33
	v_add3_u32 v7, v33, v7, 0x7fff
	v_add3_u32 v8, v32, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v32, v32
	v_add3_u32 v9, v31, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v31, v31
	v_bfe_u32 v31, v30, 16, 1
	v_mov_b16_e32 v3.h, 0
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s2
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s3
	v_add3_u32 v8, v30, v31, 0x7fff
	v_cmp_o_f32_e64 s0, v30, v30
	v_bfe_u32 v9, v29, 16, 1
	v_mov_b16_e32 v3.l, v25.h
	v_mov_b16_e32 v30.l, v24.h
	v_mov_b16_e32 v30.h, v3.h
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s0
	v_add3_u32 v9, v29, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v29, v29
	v_and_b32_e32 v29, 1, v3
	v_mov_b16_e32 v31.l, v23.h
	v_mov_b16_e32 v31.h, v3.h
	v_mov_b16_e32 v3.l, v22.h
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v29, v25, v29, 0x7fff
	v_cmp_o_f32_e64 s1, v25, v25
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s0
	v_and_b32_e32 v9, 1, v31
	v_and_b32_e32 v25, 1, v3
	v_mov_b16_e32 v3.l, v21.h
	v_add3_u32 v30, v24, v30, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s1
	v_cmp_o_f32_e64 s0, v24, v24
	v_add3_u32 v9, v23, v9, 0x7fff
	v_add3_u32 v24, v22, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v22, v22
	v_cmp_o_f32_e64 s2, v23, v23
	v_mov_b16_e32 v22.l, v20.h
	v_mov_b16_e32 v22.h, v3.h
	v_and_b32_e32 v23, 1, v3
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s0
	v_cndmask_b16 v24.l, 0x7fff, v9.h, s2
	v_cmp_o_f32_e64 s0, v21, v21
	v_and_b32_e32 v9, 1, v22
	v_add3_u32 v22, v21, v23, 0x7fff
	v_mov_b16_e32 v3.l, v19.h
	v_mov_b16_e32 v21.l, v18.h
	v_mov_b16_e32 v21.h, v3.h
	v_add3_u32 v9, v20, v9, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s0
	v_cmp_o_f32_e64 s0, v20, v20
	v_and_b32_e32 v20, 1, v3
	v_mov_b16_e32 v23.l, v16.h
	v_mov_b16_e32 v23.h, v3.h
	v_mov_b16_e32 v3.l, v17.h
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s1
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v20, v19, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v19, v19
	v_cndmask_b16 v22.l, 0x7fff, v9.h, s0
	v_and_b32_e32 v9, 1, v23
	v_and_b32_e32 v19, 1, v3
	v_add3_u32 v21, v18, v21, 0x7fff
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s1
	v_cmp_o_f32_e64 s0, v18, v18
	v_add3_u32 v9, v16, v9, 0x7fff
	v_add3_u32 v18, v17, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v17, v17
	v_cmp_o_f32_e64 s2, v16, v16
	v_mov_b16_e32 v16.l, v14.h
	v_mov_b16_e32 v16.h, v3.h
	v_mov_b16_e32 v3.l, v15.h
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s1
	v_cndmask_b16 v17.l, 0x7fff, v9.h, s2
	v_mov_b16_e32 v18.l, v13.h
	v_and_b32_e32 v9, 1, v16
	v_and_b32_e32 v16, 1, v3
	v_mov_b16_e32 v18.h, v3.h
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s0
	v_mov_b16_e32 v3.l, v12.h
	v_cmp_o_f32_e64 s0, v15, v15
	v_add3_u32 v16, v15, v16, 0x7fff
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v9, v14, v9, 0x7fff
	v_and_b32_e32 v15, 1, v3
	v_cmp_o_f32_e64 s2, v13, v13
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s0
	v_cmp_o_f32_e64 s0, v14, v14
	v_add3_u32 v14, v13, v18, 0x7fff
	v_mov_b16_e32 v19.l, v11.h
	v_mov_b16_e32 v19.h, v3.h
	v_mov_b16_e32 v3.l, v10.h
	v_cmp_o_f32_e64 s1, v12, v12
	v_cndmask_b16 v9.l, 0x7fff, v14.h, s2
	v_cndmask_b32_e32 v14, v20, v24, vcc_lo
	v_add3_u32 v15, v12, v15, 0x7fff
	v_and_b32_e32 v18, 1, v19
	v_cndmask_b16 v16.l, 0x7fff, v9.h, s0
	v_cmp_o_f32_e64 s4, v11, v11
	v_cmp_o_f32_e64 s3, v10, v10
	v_cndmask_b16 v9.h, 0x7fff, v15.h, s1
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b32_e32 v15, v24, v20, vcc_lo
	v_add3_u32 v12, v11, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v11, v4, v0 :: v_dual_cndmask_b32 v18, v9, v17
	v_add3_u32 v3, v10, v3, 0x7fff
	v_cndmask_b32_e32 v10, v2, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v3.l, 0x7fff, v12.h, s4
	v_dual_cndmask_b32 v1, v1, v2 :: v_dual_cndmask_b32 v0, v0, v4
	v_cndmask_b32_e32 v12, v7, v6, vcc_lo
	v_cndmask_b32_e32 v2, v6, v7, vcc_lo
	v_mov_b32_e32 v4, 0x5410
	v_mov_b32_e32 v6, 0x7632
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s3
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v7, v8, v5 :: v_dual_cndmask_b32 v4, 0x1054, v4
	v_dual_cndmask_b32 v6, 0x3276, v6 :: v_dual_cndmask_b32 v5, v5, v8
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v27, s23, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v8, v29, v22, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v6, v6, 8, v6
	v_cndmask_b32_e32 v9, v17, v9, vcc_lo
	v_cndmask_b32_e32 v17, v3, v16, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v3, v16, v3 :: v_dual_and_b32 v4, 0x540054, v4
	v_and_b32_e32 v6, 0x760076, v6
	v_permlanex16_b32 v16, v0, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v26, s23, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v13, v22, v29, vcc_lo
	v_lshl_or_b32 v0, v4, 4, v4
	v_lshl_or_b32 v4, v6, 4, v6
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v21, 0x5040504, v0
	v_and_b32_e32 v22, 0x7060706, v4
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v10, v21
	v_perm_b32 v1, v1, v10, v22
	v_perm_b32 v2, v16, v11, v21
	v_perm_b32 v3, v16, v11, v22
	v_add_lshl_u32 v16, v28, v27, 1
	v_perm_b32 v4, v6, v12, v21
	v_perm_b32 v5, v6, v12, v22
	v_perm_b32 v6, v19, v7, v21
	v_perm_b32 v7, v19, v7, v22
	v_perm_b32 v10, v15, v14, v21
	v_perm_b32 v11, v15, v14, v22
	v_perm_b32 v14, v24, v17, v21
	v_perm_b32 v15, v24, v17, v22
	v_add_lshl_u32 v17, v43, v27, 1
	v_perm_b32 v8, v20, v13, v21
	v_perm_b32 v9, v20, v13, v22
	v_perm_b32 v12, v23, v18, v21
	v_perm_b32 v13, v23, v18, v22
	v_add_lshl_u32 v18, v28, v26, 1
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_add_lshl_u32 v19, v43, v26, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v17, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v18, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v19, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 30
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
		.amdhsa_inst_pref_size 44
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 209
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5608
; TotalNumSgprs: 32
; NumVgprs: 209
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 32
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     209
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
