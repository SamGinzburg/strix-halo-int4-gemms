	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s27, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v4, 4, v0
	s_mov_b32 s51, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v77, 48, v4
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s14, s13, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s13, s13, s12
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s14
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s13
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s15, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s16, s15
	s_abs_i32 s13, s2
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 2, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s6, s17, 0x4f7ffffe
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[78:79], null, s27, v1, v[77:78]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s31, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s17, s6
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s30, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s17
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v143, s27, 6, v78
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s12, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s12
	s_mul_hi_u32 s12, s13, s17
	s_xor_b32 s17, s2, s15
	s_mul_i32 s18, s12, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s13, s13, s18
	s_add_i32 s18, s12, 1
	s_sub_i32 s19, s13, s16
	s_cmp_ge_u32 s13, s16
	s_cselect_b32 s12, s18, s12
	s_cselect_b32 s13, s19, s13
	s_add_i32 s18, s12, 1
	s_cmp_ge_u32 s13, s16
	s_cselect_b32 s12, s18, s12
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s26, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s12, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s13, s27, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s26, v77
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s15, s3, s15
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s12, s13, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s15
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s12, s12, 26
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s14
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s22, s3, 7
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s12, s13, s12
.Ltmp19:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[79:80], null, s33, s27, v[78:79]
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v1
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s48, s22, s23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s13, 63
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s47, s22, s27
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_mul_i32 s48, s48, s27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s3, s47, s26
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 356 39 is_stmt 1              ; generate_amdgcn.py:356:39
	s_add_i32 s14, s48, s26
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s26, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v1, s3, v78
	v_add_nc_u32_e32 v2, s3, v143
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s26, 64
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v3, s14, v78
	v_add_nc_u32_e32 v5, s14, v143
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s34, v77
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v7, 64, v1
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_add_nc_u32 v8, 64, v2
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v12, s34, v79
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v10, 64, v5
	v_add_nc_u32_e32 v9, 64, v3
	.loc	1 356 31 is_stmt 0              ; generate_amdgcn.py:356:31
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 343 23 is_stmt 1              ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[24:27], v1, s[28:31], 0 offen
	buffer_load_b128 v[28:31], v2, s[28:31], 0 offen
	buffer_load_b128 v[32:35], v3, s[28:31], 0 offen
	buffer_load_b128 v[36:39], v5, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[20:23], v6, s[4:7], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s13, 0xbf
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_dual_cndmask_b32 v1, 0x80000000, v12 :: v_dual_cndmask_b32 v2, 0x80000000, v7
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v3, 0x80000000, v8 :: v_dual_cndmask_b32 v6, 0x80000000, v10
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e32 v5, 0x80000000, v9, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[40:43], v1, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[44:47], v2, s[28:31], 0 offen
	buffer_load_b128 v[48:51], v3, s[28:31], 0 offen
	buffer_load_b128 v[52:55], v5, s[28:31], 0 offen
	buffer_load_b128 v[56:59], v6, s[28:31], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v7, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 15, v0
	v_lshrrev_b32_e32 v5, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v8, 1, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v7, 48, v7
	v_lshlrev_b32_e32 v1, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v189, v5, 16, v2
	v_lshlrev_b32_e32 v2, 6, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v5, v6, 1, v8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v144, v4, v7
	v_lshlrev_b32_e32 v3, 5, v3
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v61, 32, v189
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 2, v5
	v_or_b32_e32 v9, 4, v5
	v_or_b32_e32 v10, 6, v5
	v_or_b32_e32 v11, 8, v5
	v_or_b32_e32 v12, 10, v5
	v_or_b32_e32 v13, 12, v5
	v_or_b32_e32 v14, 14, v5
	v_or_b32_e32 v15, 64, v5
	v_or_b32_e32 v16, 0x42, v5
	v_or_b32_e32 v17, 0x44, v5
	v_or_b32_e32 v18, 0x46, v5
	v_or_b32_e32 v19, 0x48, v5
	v_or_b32_e32 v4, 0x4a, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v60, 0, v144
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 0x4c, v5
	v_or_b32_e32 v7, 0x4e, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v60, v[20:23] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v60, v[24:27]
	ds_store_b128 v60, v[28:31] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_store_b128 v60, v[32:35] offset:16384
	ds_store_b128 v60, v[36:39] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v60, v[40:43] offset:36864
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v60, v[44:47] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v60, v[48:51] offset:12288
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v60, v[52:55] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v60, v[56:59] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v20, 48, v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_or_b32 v145, 0x430, v1, v2
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or3_b32 v218, v3, v20, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v148, 16, v145
	v_xor_b32_e32 v170, 32, v145
	v_xor_b32_e32 v171, 48, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v219, 16, v218
	v_xor_b32_e32 v221, 32, v218
	v_xor_b32_e32 v225, 48, v218
	v_or_b32_e32 v220, 0x1000, v218
	v_or_b32_e32 v222, 0x1000, v219
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v224, 0x1000, v221
	v_or_b32_e32 v226, 0x1000, v225
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr145
                                        ; implicit-def: $vgpr148
                                        ; implicit-def: $vgpr170
                                        ; implicit-def: $vgpr171
                                        ; implicit-def: $vgpr218
                                        ; implicit-def: $vgpr220
                                        ; implicit-def: $vgpr219
                                        ; implicit-def: $vgpr222
                                        ; implicit-def: $vgpr221
                                        ; implicit-def: $vgpr224
                                        ; implicit-def: $vgpr225
                                        ; implicit-def: $vgpr226
.LBB0_3:                                ; %Flow610
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v20, s33, v189
	v_or_b32_e32 v21, s33, v61
	s_ashr_i32 s1, s12, 6
	v_or_b32_e32 v169, s22, v5
	v_or_b32_e32 v166, s22, v8
	v_mul_lo_u32 v173, v20, s1
	v_mul_lo_u32 v172, v21, s1
	v_or_b32_e32 v167, s22, v9
	v_or_b32_e32 v168, s22, v10
	v_or_b32_e32 v153, s22, v11
	v_or_b32_e32 v154, s22, v12
	v_or_b32_e32 v155, s22, v13
	v_or_b32_e32 v156, s22, v14
	v_or_b32_e32 v127, s22, v15
	v_or_b32_e32 v128, s22, v16
	v_or_b32_e32 v129, s22, v17
	v_or_b32_e32 v130, s22, v18
	v_or_b32_e32 v131, s22, v19
	v_or_b32_e32 v132, s22, v4
	v_or_b32_e32 v133, s22, v6
	v_or_b32_e32 v134, s22, v7
	v_add_nc_u32_e32 v165, s23, v5
	v_add_nc_u32_e32 v161, s23, v8
	v_add_nc_u32_e32 v162, s23, v9
	v_add_nc_u32_e32 v163, s23, v10
	v_add_nc_u32_e32 v157, s23, v11
	v_add_nc_u32_e32 v164, s23, v12
	v_add_nc_u32_e32 v158, s23, v13
	v_add_nc_u32_e32 v159, s23, v14
	v_add_nc_u32_e32 v135, s23, v15
	v_add_nc_u32_e32 v136, s23, v16
	v_add_nc_u32_e32 v137, s23, v17
	v_add_nc_u32_e32 v138, s23, v18
	v_add_nc_u32_e32 v139, s23, v19
	v_add_nc_u32_e32 v140, s23, v4
	v_add_nc_u32_e32 v141, s23, v6
	v_add_nc_u32_e32 v142, s23, v7
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_lshl_b32 s35, s23, 1
	scratch_store_b32 off, v61, off offset:136 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s12, 0
	v_and_or_b32 v145, 0x430, v1, v2
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v4, 48, v1
	v_mov_b32_e32 v174, 0
	v_xor_b32_e32 v148, 16, v145
	v_xor_b32_e32 v170, 32, v145
	v_xor_b32_e32 v171, 48, v145
	v_or3_b32 v218, v3, v4, v2
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v3, s14
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v219, 16, v218
	v_xor_b32_e32 v221, 32, v218
	v_xor_b32_e32 v225, 48, v218
	v_or_b32_e32 v220, 0x1000, v218
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v7, s18
	v_or_b32_e32 v222, 0x1000, v219
	v_or_b32_e32 v224, 0x1000, v221
	v_or_b32_e32 v226, 0x1000, v225
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v83, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v82, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s11, s1, 3
	s_add_i32 s10, s34, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s53, 0, 0x8000
	s_add_i32 s46, 0, 0x9000
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s52, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_add_i32 s11, s11, -3
	s_mov_b32 s49, 1
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s51, s12
	s_mov_b32 s50, s12
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s54, s50, 6
	s_mov_b32 s0, s26
	s_mov_b32 s26, s34
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s10, s54
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v17, s51, v218
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v9, s34, v77
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v18, s52, v218
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v56, s19 :: v_dual_add_nc_u32 v147, s51, v219
	v_mov_b32_e32 v55, s18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v52, s15 :: v_dual_add_nc_u32 v9, s34, v79
	v_dual_mov_b32 v53, s16 :: v_dual_mov_b32 v50, s13
	v_dual_mov_b32 v51, s14 :: v_dual_add_nc_u32 v146, s53, v148
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v49, s12 :: v_dual_mov_b32 v54, s17
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[73:76], v9, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, s53, v145
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[149:152], v9
	ds_load_b128 v[9:12], v9 offset:2048
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[13:16], v17 offset:4096
	ds_load_b128 v[192:195], v17
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[25:28], v18
	ds_load_b128 v[196:199], v18 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[13:16], v[149:152], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[13:16], v[9:12], v[49:56] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[25:28], v[149:152], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[25:28], v[9:12], v[49:56] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[65:72], v[192:195], v[9:12], v[49:56] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[196:199], v[9:12], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[196:199], v[149:152], v[49:56] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[49:56], v[192:195], v[149:152], v[1:8] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[149:152], v146
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[192:195], v147
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[196:199], v146 offset:2048
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v146, s52, v219
	ds_load_b128 v[200:203], v146 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[192:195], v[149:152], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[192:195], v[196:199], v[65:72] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[192:195], v147 offset:4096
	v_add_nc_u32_e32 v147, s51, v221
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[200:203], v[149:152], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[200:203], v[196:199], v[25:32] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[192:195], v[149:152], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[192:195], v[196:199], v[33:40] neg_lo:[1,1,0]
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[192:195], v146
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v146, s53, v170
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[192:195], v[149:152], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[192:195], v[196:199], v[57:64] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[149:152], v146
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[192:195], v147
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[196:199], v146 offset:2048
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v146, s52, v221
	ds_load_b128 v[200:203], v146 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[192:195], v[149:152], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[192:195], v[196:199], v[65:72] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[192:195], v147 offset:4096
	v_add_nc_u32_e32 v147, s51, v225
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s51, s0, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s51, s51, 26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[200:203], v[149:152], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[200:203], v[196:199], v[25:32] neg_lo:[1,1,0]
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s0, s51
	s_ashr_i32 s51, s0, 6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s54, s51, s35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[192:195], v[149:152], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[192:195], v[196:199], v[33:40] neg_lo:[1,1,0]
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[192:195], v146
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v146, s53, v171
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s53, s34, s48
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[192:195], v[149:152], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[192:195], v[196:199], v[57:64] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[149:152], v146
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[192:195], v147
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[196:199], v146 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[192:195], v[149:152], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[192:195], v[196:199], v[65:72] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[192:195], v147 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v52, v52
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v146, s52, v225
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s52, s34, s47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s51, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[200:203], v146 offset:4096
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s55, s54, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s49, s49, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v204, v165, s55, 1
	v_add_lshl_u32 v205, v161, s55, 1
	v_add_lshl_u32 v206, v162, s55, 1
	v_add_lshl_u32 v210, v163, s55, 1
	v_add_lshl_u32 v211, v157, s55, 1
	v_add_lshl_u32 v212, v164, s55, 1
	v_add_lshl_u32 v213, v158, s55, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[192:195], v[149:152], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[192:195], v[196:199], v[33:40] neg_lo:[1,1,0]
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[192:195], v146
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v214, v159, s55, 1
	v_add_lshl_u32 v215, v135, s55, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v147, v17
	v_cvt_f32_i32_e32 v146, v18
	v_cvt_f32_i32_e32 v160, v24
	v_cvt_f32_i32_e32 v187, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[200:203], v[149:152], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[200:203], v[196:199], v[25:32] neg_lo:[1,1,0]
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v18, v153, s54, 1
	v_add_lshl_u32 v23, v127, s54, 1
	v_add_lshl_u32 v24, v128, s54, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v190, v10
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v10, s52, v143
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v191, v9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v9, s52, v78
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v200, v131, s54, 1
	v_add_lshl_u32 v201, v132, s54, 1
	v_add_lshl_u32 v202, v133, s54, 1
	v_add_lshl_u32 v203, v134, s54, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[192:195], v[149:152], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[192:195], v[196:199], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v195, v13
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v13, 0x80000000, v10, vcc_lo
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v10, s53, v78
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v152, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v192, v12
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v169, s54, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v193, v11
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e32 v17, 0x80000000, v10, vcc_lo
	.loc	1 356 39 is_stmt 0              ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v10, s53, v143
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v194, v14
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v11, v172, s51, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v14, v166, s54, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v197, v15
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e32 v21, 0x80000000, v10, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v10, v173, s51, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v15, v167, s54, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v196, v16
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v16, v168, s54, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v149, v20
	v_cvt_f32_i32_e32 v150, v19
	v_cvt_f32_i32_e32 v151, v22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v19, v154, s54, 1
	v_add_lshl_u32 v20, v155, s54, 1
	v_add_lshl_u32 v22, v156, s54, 1
	v_add_lshl_u32 v198, v129, s54, 1
	v_add_lshl_u32 v199, v130, s54, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v216, v136, s55, 1
	v_add_lshl_u32 v217, v137, s55, 1
	v_add_lshl_u32 v223, v138, s55, 1
	v_add_lshl_u32 v227, v139, s55, 1
	v_add_lshl_u32 v228, v140, s55, 1
	v_add_lshl_u32 v229, v141, s55, 1
	v_add_lshl_u32 v230, v142, s55, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	v_cndmask_b32_e64 v198, 0x80000000, v198, s0
	v_cndmask_b32_e64 v199, 0x80000000, v199, s0
	v_cndmask_b32_e64 v200, 0x80000000, v200, s0
	v_cndmask_b32_e64 v201, 0x80000000, v201, s0
	v_cndmask_b32_e64 v202, 0x80000000, v202, s0
	v_cndmask_b32_e64 v203, 0x80000000, v203, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v204, 0x80000000, v204, s0
	v_cndmask_b32_e64 v205, 0x80000000, v205, s0
	v_cndmask_b32_e64 v206, 0x80000000, v206, s0
	v_cndmask_b32_e64 v210, 0x80000000, v210, s0
	v_cndmask_b32_e64 v211, 0x80000000, v211, s0
	v_cndmask_b32_e64 v212, 0x80000000, v212, s0
	v_cndmask_b32_e64 v213, 0x80000000, v213, s0
	v_cndmask_b32_e64 v214, 0x80000000, v214, s0
	v_cndmask_b32_e64 v215, 0x80000000, v215, s0
	v_cndmask_b32_e64 v216, 0x80000000, v216, s0
	v_cndmask_b32_e64 v217, 0x80000000, v217, s0
	v_cndmask_b32_e64 v223, 0x80000000, v223, s0
	v_cndmask_b32_e64 v227, 0x80000000, v227, s0
	v_cndmask_b32_e64 v228, 0x80000000, v228, s0
	v_cndmask_b32_e64 v229, 0x80000000, v229, s0
	v_cndmask_b32_e64 v230, 0x80000000, v230, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v231, v10, s[36:39], 0 offen
	buffer_load_u16 v232, v11, s[36:39], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x1f
	buffer_load_u16 v233, v12, s[40:43], 0 offen
	buffer_load_u16 v234, v14, s[40:43], 0 offen
	buffer_load_u16 v235, v15, s[40:43], 0 offen
	buffer_load_u16 v236, v16, s[40:43], 0 offen
	buffer_load_u16 v237, v18, s[40:43], 0 offen
	buffer_load_u16 v238, v19, s[40:43], 0 offen
	buffer_load_u16 v239, v20, s[40:43], 0 offen
	buffer_load_u16 v240, v22, s[40:43], 0 offen
	buffer_load_u16 v241, v23, s[40:43], 0 offen
	buffer_load_u16 v242, v24, s[40:43], 0 offen
	buffer_load_u16 v198, v198, s[40:43], 0 offen
	buffer_load_u16 v199, v199, s[40:43], 0 offen
	buffer_load_u16 v200, v200, s[40:43], 0 offen
	buffer_load_u16 v201, v201, s[40:43], 0 offen
	buffer_load_u16 v202, v202, s[40:43], 0 offen
	buffer_load_u16 v203, v203, s[40:43], 0 offen
	buffer_load_u16 v204, v204, s[40:43], 0 offen
	buffer_load_u16 v205, v205, s[40:43], 0 offen
	buffer_load_u16 v206, v206, s[40:43], 0 offen
	buffer_load_u16 v210, v210, s[40:43], 0 offen
	buffer_load_u16 v211, v211, s[40:43], 0 offen
	buffer_load_u16 v212, v212, s[40:43], 0 offen
	buffer_load_u16 v213, v213, s[40:43], 0 offen
	buffer_load_u16 v214, v214, s[40:43], 0 offen
	buffer_load_u16 v215, v215, s[40:43], 0 offen
	buffer_load_u16 v216, v216, s[40:43], 0 offen
	buffer_load_u16 v217, v217, s[40:43], 0 offen
	buffer_load_u16 v223, v223, s[40:43], 0 offen
	buffer_load_u16 v227, v227, s[40:43], 0 offen
	buffer_load_u16 v228, v228, s[40:43], 0 offen
	buffer_load_u16 v229, v229, s[40:43], 0 offen
	buffer_load_u16 v230, v230, s[40:43], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	buffer_load_b128 v[17:20], v17, s[28:31], 0 offen
	buffer_load_b128 v[21:24], v21, s[28:31], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s49, 2
	s_mov_b32 s51, s45
	s_cselect_b32 s49, s49, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s52, s49, 12
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s52, 0
	s_barrier
	v_add_nc_u32_e32 v243, s0, v144
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s45, s0, s52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(38)
	ds_store_b128 v243, v[73:76] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v73, s45, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s54, s50, 1
	s_mov_b32 s53, s46
	s_mov_b32 s52, s44
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s46, s0, 0x8000
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_add_i32 s44, s45, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s50, s11
	s_mov_b32 s50, s54
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v73, v[9:12]
	s_waitcnt vmcnt(2)
	ds_store_b128 v73, v[13:16] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v73, v[17:20] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v73, v[21:24] offset:20480
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v9, 16, v231
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v10, 16, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v11, v9, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v184, v11, v49 :: v_dual_lshlrev_b32 v11, 16, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v9, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v185, v12, v50 :: v_dual_lshlrev_b32 v12, 16, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v13, v9, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v176, v13, v51 :: v_dual_lshlrev_b32 v13, 16, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v14, v9, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v177, v14, v52 :: v_dual_lshlrev_b32 v14, 16, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v9, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v120, v15, v53 :: v_dual_lshlrev_b32 v15, 16, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v9, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v121, v16, v54 :: v_dual_lshlrev_b32 v16, 16, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v9, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v112, v17, v55 :: v_dual_lshlrev_b32 v17, 16, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v18, v9, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v113, v18, v56 :: v_dual_lshlrev_b32 v18, 16, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v19, v9, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v104, v19, v147 :: v_dual_lshlrev_b32 v19, 16, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v9, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v105, v20, v146
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v20, 16, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v21, v9, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v96, v21, v150 :: v_dual_lshlrev_b32 v21, 16, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v9, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v97, v22, v149 :: v_dual_lshlrev_b32 v22, 16, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v9, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v88, v23, v152 :: v_dual_lshlrev_b32 v23, 16, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v24, v9, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v89, v24, v151 :: v_dual_lshlrev_b32 v24, 16, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v49, v9, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v80, v49, v187
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v49, 16, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v50, v9, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v81, v50, v160
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v50, 16, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v188, v10, v65
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v207, v10, v66
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v180, v10, v67
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v181, v10, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v122, v10, v69
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v123, v10, v70
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v114, v10, v71
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v115, v10, v72
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v106, v10, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v107, v10, v34
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v98, v10, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v99, v10, v36
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v90, v10, v37
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v91, v10, v38
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v82, v10, v39
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v83, v10, v40
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v10, 16, v204
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v11, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v174, v11, v41
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v11, 16, v205
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v12, v9, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v186, v12, v42
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v12, 16, v206
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v13, v9, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v178, v13, v43 :: v_dual_lshlrev_b32 v13, 16, v210
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v14, v9, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v179, v14, v44 :: v_dual_lshlrev_b32 v14, 16, v211
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v15, v9, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v124, v15, v45 :: v_dual_lshlrev_b32 v15, 16, v212
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v9, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v125, v16, v46 :: v_dual_lshlrev_b32 v16, 16, v213
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v17, v9, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v116, v17, v47 :: v_dual_lshlrev_b32 v17, 16, v214
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v18, v9, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v117, v18, v48 :: v_dual_lshlrev_b32 v18, 16, v215
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v19, v9, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v108, v19, v191 :: v_dual_lshlrev_b32 v19, 16, v216
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v20, v9, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v109, v20, v190 :: v_dual_lshlrev_b32 v20, 16, v217
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v21, v9, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v100, v21, v193 :: v_dual_lshlrev_b32 v21, 16, v223
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v9, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v101, v22, v192 :: v_dual_lshlrev_b32 v22, 16, v227
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v23, v9, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v92, v23, v195 :: v_dual_lshlrev_b32 v23, 16, v228
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v24, v9, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v93, v24, v194 :: v_dual_lshlrev_b32 v24, 16, v229
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v33, v9, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v84, v33, v197 :: v_dual_lshlrev_b32 v33, 16, v230
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v9, v9, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v85, v9, v196
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v9, v50, v10
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v208, v9, v57 :: v_dual_mul_f32 v9, v50, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v209, v9, v58
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v9, v50, v12
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v182, v9, v59 :: v_dual_mul_f32 v9, v50, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v183, v9, v60
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v9, v50, v14
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v126, v9, v61 :: v_dual_mul_f32 v9, v50, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v175, v9, v62
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v9, v50, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v118, v9, v63 :: v_dual_mul_f32 v9, v50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v119, v9, v64
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v9, v50, v18
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v110, v9, v25 :: v_dual_mul_f32 v9, v50, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v111, v9, v26
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v9, v50, v20
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v102, v9, v27 :: v_dual_mul_f32 v9, v50, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v103, v9, v28
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v9, v50, v22
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v94, v9, v29 :: v_dual_mul_f32 v9, v50, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v9, v30
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v9, v50, v24
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v86, v9, v31 :: v_dual_mul_f32 v9, v50, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v87, v9, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_add_i32 s53, 0, 0x8000
	s_add_i32 s46, 0, 0x9000
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v184, 0
	v_mov_b32_e32 v186, 0
	v_mov_b32_e32 v174, 0
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s52, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_7:                                ; %._crit_edge
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v5, s53, v148
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v6, s53, v170
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v1, s53, v145
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v7, s53, v171
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v5
	ds_load_b128 v[9:12], v5 offset:2048
	ds_load_b128 v[25:28], v6
	ds_load_b128 v[17:20], v6 offset:2048
	ds_load_b128 v[13:16], v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[5:8], v7 offset:2048
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[1:4], v1 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v34, 0, 1, s2
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v56, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v34
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v37, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v36, s51, v220
	v_add_nc_u32_e32 v37, s51, v218
	v_add_nc_u32_e32 v40, s51, v222
	ds_load_b128 v[71:74], v36
	ds_load_b128 v[75:78], v37
	v_add_nc_u32_e32 v36, s51, v219
	v_add_nc_u32_e32 v38, s51, v224
	ds_load_b128 v[196:199], v40
	ds_load_b128 v[200:203], v36
	v_add_nc_u32_e32 v39, s51, v221
	v_add_nc_u32_e32 v35, s51, v225
	ds_load_b128 v[149:152], v38
	ds_load_b128 v[192:195], v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v43, s19 :: v_dual_add_nc_u32 v34, s51, v226
	v_dual_mov_b32 v42, s18 :: v_dual_mov_b32 v41, s17
	v_dual_mov_b32 v40, s16 :: v_dual_mov_b32 v39, s15
	v_dual_mov_b32 v38, s14 :: v_dual_mov_b32 v37, s13
	v_mov_b32_e32 v36, s12
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[210:213], v35
	ds_load_b128 v[214:217], v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[75:78], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[71:74], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[75:78], v[1:4], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[71:74], v[1:4], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[200:203], v[21:24], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[196:199], v[21:24], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[200:203], v[9:12], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[196:199], v[9:12], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[192:195], v[25:28], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[149:152], v[25:28], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[192:195], v[17:20], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[149:152], v[17:20], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[210:213], v[13:16], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[214:217], v[13:16], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[210:213], v[5:8], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[214:217], v[5:8], v[36:43] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v78, v49
	v_cvt_f32_i32_e32 v79, v50
	v_cvt_f32_i32_e32 v73, v51
	v_cvt_f32_i32_e32 v74, v52
	v_cvt_f32_i32_e32 v71, v53
	v_cvt_f32_i32_e32 v72, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v50, v57
	v_cvt_f32_i32_e32 v51, v58
	v_cvt_f32_i32_e32 v46, v59
	v_cvt_f32_i32_e32 v49, v60
	v_cvt_f32_i32_e32 v44, v61
	v_cvt_f32_i32_e32 v45, v62
	v_cvt_f32_i32_e32 v34, v63
	v_cvt_f32_i32_e32 v35, v64
	v_cvt_f32_i32_e32 v223, v65
	v_cvt_f32_i32_e32 v54, v66
	v_cvt_f32_i32_e32 v61, v67
	v_cvt_f32_i32_e32 v62, v68
	v_cvt_f32_i32_e32 v59, v69
	v_cvt_f32_i32_e32 v60, v70
	v_cvt_f32_i32_e32 v57, v36
	v_cvt_f32_i32_e32 v58, v37
	v_cvt_f32_i32_e32 v52, v38
	v_cvt_f32_i32_e32 v53, v39
	v_cvt_f32_i32_e32 v38, v40
	v_cvt_f32_i32_e32 v39, v41
	v_cvt_f32_i32_e32 v36, v42
	v_cvt_f32_i32_e32 v37, v43
	v_cvt_f32_i32_e32 v197, v47
	v_cvt_f32_i32_e32 v198, v48
.LBB0_9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x15                           ; 88-byte Folded Spill
	scratch_store_b32 off, v62, off offset:244
	scratch_store_b32 off, v61, off offset:240
	scratch_store_b32 off, v74, off offset:232
	scratch_store_b32 off, v73, off offset:228
	scratch_store_b32 off, v60, off offset:200
	scratch_store_b32 off, v59, off offset:196
	scratch_store_b32 off, v72, off offset:176
	scratch_store_b32 off, v71, off offset:172
	scratch_store_b32 off, v58, off offset:144
	scratch_store_b32 off, v57, off offset:140
	scratch_store_b32 off, v56, off offset:124
	scratch_store_b32 off, v55, off offset:120
	scratch_store_b32 off, v53, off offset:108
	scratch_store_b32 off, v52, off offset:104
	scratch_store_b32 off, v51, off offset:92
	scratch_store_b32 off, v50, off offset:88
	scratch_store_b32 off, v39, off offset:40
	scratch_store_b32 off, v38, off offset:36
	scratch_store_b32 off, v49, off offset:28
	scratch_store_b32 off, v37, off offset:12
	scratch_store_b32 off, v36, off offset:8
	scratch_store_b32 off, v44, off
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v49, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v37, s52, v220
	v_add_nc_u32_e32 v38, s52, v218
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v66, s19 :: v_dual_add_nc_u32 v33, s52, v226
	v_dual_mov_b32 v60, s13 :: v_dual_add_nc_u32 v41, s52, v222
	v_dual_mov_b32 v64, s17 :: v_dual_mov_b32 v63, s16
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[47:50], v37
	ds_load_b128 v[149:152], v38
	v_add_nc_u32_e32 v37, s52, v219
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v62, s15 :: v_dual_add_nc_u32 v39, s52, v224
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[210:213], v41
	ds_load_b128 v[214:217], v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v61, s14 :: v_dual_add_nc_u32 v40, s52, v221
	v_dual_mov_b32 v65, s18 :: v_dual_add_nc_u32 v36, s52, v225
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[199:202], v39
	ds_load_b128 v[203:206], v40
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v59, s12
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[227:230], v36
	ds_load_b128 v[231:234], v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[47:50], v[29:32], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[149:152], v[29:32], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[240:247], v[149:152], v[1:4], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[47:50], v[1:4], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[214:217], v[21:24], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[210:213], v[21:24], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[240:247], v[214:217], v[9:12], v[240:247] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[210:213], v[9:12], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[203:206], v[25:28], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[199:202], v[25:28], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[240:247], v[203:206], v[17:20], v[240:247] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[199:202], v[17:20], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[227:230], v[13:16], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[231:234], v[13:16], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[240:247], v[227:230], v[5:8], v[240:247] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[231:234], v[5:8], v[59:66] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v36, v39
	v_cvt_f32_i32_e32 v67, v40
	v_cvt_f32_i32_e32 v195, v41
	v_cvt_f32_i32_e32 v187, v42
	v_cvt_f32_i32_e32 v76, v43
	v_cvt_f32_i32_e32 v204, v44
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v57, v70
	v_cvt_f32_i32_e32 v58, v71
	v_cvt_f32_i32_e32 v50, v72
	v_cvt_f32_i32_e32 v51, v73
	v_cvt_f32_i32_e32 v43, v74
	v_cvt_f32_i32_e32 v44, v75
	v_cvt_f32_i32_e32 v55, v240
	v_cvt_f32_i32_e32 v52, v241
	v_cvt_f32_i32_e32 v42, v242
	v_cvt_f32_i32_e32 v41, v243
	v_cvt_f32_i32_e32 v40, v244
	v_cvt_f32_i32_e32 v39, v245
	v_cvt_f32_i32_e32 v205, v246
	v_cvt_f32_i32_e32 v206, v247
	v_cvt_f32_i32_e32 v70, v59
	v_cvt_f32_i32_e32 v71, v60
	v_cvt_f32_i32_e32 v59, v61
	v_cvt_f32_i32_e32 v60, v62
	v_cvt_f32_i32_e32 v53, v63
	v_cvt_f32_i32_e32 v56, v64
	v_cvt_f32_i32_e32 v47, v65
	v_cvt_f32_i32_e32 v49, v66
	v_cvt_f32_i32_e32 v33, v37
	v_cvt_f32_i32_e32 v48, v38
.LBB0_11:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s26, s0
	s_clause 0x12                           ; 76-byte Folded Spill
	scratch_store_b32 off, v76, off offset:216
	scratch_store_b32 off, v71, off offset:188
	scratch_store_b32 off, v70, off offset:180
	scratch_store_b32 off, v69, off offset:164
	scratch_store_b32 off, v68, off offset:160
	scratch_store_b32 off, v60, off offset:132
	scratch_store_b32 off, v59, off offset:128
	scratch_store_b32 off, v58, off offset:116
	scratch_store_b32 off, v57, off offset:112
	scratch_store_b32 off, v56, off offset:72
	scratch_store_b32 off, v53, off offset:64
	scratch_store_b32 off, v51, off offset:60
	scratch_store_b32 off, v50, off offset:56
	scratch_store_b32 off, v49, off offset:44
	scratch_store_b32 off, v47, off offset:32
	scratch_store_b32 off, v46, off offset:24
	scratch_store_b32 off, v44, off offset:20
	scratch_store_b32 off, v43, off offset:16
	scratch_store_b32 off, v45, off offset:4
	s_ashr_i32 s0, s0, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v173, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_mov_b32 v44, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v37, 0, 1, s3
	v_mov_b32_e32 v69, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v53, v1, s[8:11], 0 offen
	v_add_lshl_u32 v1, v172, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s35
	v_mov_b32_e32 v43, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v248, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_mov_b32_e32 v233, 0
	v_mov_b32_e32 v201, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v237, 0
	buffer_load_u16 v194, v1, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v1, v169, s0, 1
	v_mov_b32_e32 v191, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v38, 0
	v_mov_b32_e32 v49, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_mov_b32_e32 v247, 0
	v_mov_b32_e32 v249, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v211, 0
	buffer_load_u16 v151, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v166, s0, 1
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v232, 0
	v_mov_b32_e32 v231, 0
	v_mov_b32_e32 v235, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_mov_b32_e32 v193, 0
	s_mov_b32 s12, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v46, 0
	buffer_load_u16 v60, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v167, s0, 1
	v_mov_b32_e32 v202, 0
	v_mov_b32_e32 v192, 0
	v_mov_b32_e32 v50, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v210, 0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_mov_b32_e32 v230, 0
	v_mov_b32_e32 v200, 0
	buffer_load_u16 v152, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v168, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v160, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v153, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v244, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v154, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v243, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v155, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:248 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v156, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:236 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v127, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:204 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v128, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:192 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v129, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:152 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v130, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:148 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v131, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:84 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v132, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:80 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v133, s0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v134, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	.loc	1 370 31 is_stmt 0              ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v1, s0, v165, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v73, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v161, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v199, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v162, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v71, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v163, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v196, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v157, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v70, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v164, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v72, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v158, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:252 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v159, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:256 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v135, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:220 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v136, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:224 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v137, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v138, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:184 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v139, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v140, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:100 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v141, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:68 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v142, 1
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v37
	v_mov_b32_e32 v37, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:76 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s46, v145
	ds_load_b128 v[17:20], v1
	ds_load_b128 v[13:16], v1 offset:2048
	v_add_nc_u32_e32 v1, s46, v148
	ds_load_b128 v[21:24], v1
	ds_load_b128 v[9:12], v1 offset:2048
	v_add_nc_u32_e32 v1, s46, v170
	ds_load_b128 v[25:28], v1
	ds_load_b128 v[5:8], v1 offset:2048
	v_add_nc_u32_e32 v1, s46, v171
	ds_load_b128 v[29:32], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v1 offset:2048
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	s_cbranch_vccnz .LBB0_13
; %bb.12:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v217, s19 :: v_dual_add_nc_u32 v38, s45, v220
	v_dual_mov_b32 v214, s16 :: v_dual_add_nc_u32 v43, s45, v218
	v_dual_mov_b32 v215, s17 :: v_dual_add_nc_u32 v44, s45, v224
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[61:64], v38
	ds_load_b128 v[200:203], v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v212, s14 :: v_dual_add_nc_u32 v45, s45, v221
	v_dual_mov_b32 v213, s15 :: v_dual_add_nc_u32 v46, s45, v222
	v_dual_mov_b32 v211, s13 :: v_dual_add_nc_u32 v38, s45, v219
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[245:248], v44
	ds_load_b128 v[249:252], v45
	ds_load_b128 v[74:77], v46
	ds_load_b128 v[190:193], v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v210, s12 :: v_dual_add_nc_u32 v43, s45, v225
	v_dual_mov_b32 v216, s18 :: v_dual_add_nc_u32 v37, s45, v226
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[43:46], v43
	ds_load_b128 v[56:59], v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[61:64], v[17:20], v[210:217] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[227:234], v[200:203], v[17:20], v[210:217] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[200:203], v[13:16], v[210:217] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[61:64], v[13:16], v[210:217] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[74:77], v[21:24], v[235:242] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[227:234], v[190:193], v[21:24], v[227:234] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[190:193], v[9:12], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[74:77], v[9:12], v[210:217] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[235:242], v[245:248], v[25:28], v[235:242] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[227:234], v[249:252], v[25:28], v[227:234] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[249:252], v[5:8], v[143:150] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[210:217], v[245:248], v[5:8], v[210:217] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[56:59], v[29:32], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[43:46], v[29:32], v[227:234] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[43:46], v[1:4], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[56:59], v[1:4], v[210:217] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v56, v235
	v_cvt_f32_i32_e32 v37, v229
	v_cvt_f32_i32_e32 v38, v230
	v_cvt_f32_i32_e32 v248, v231
	v_cvt_f32_i32_e32 v245, v232
	v_cvt_f32_i32_e32 v232, v233
	v_cvt_f32_i32_e32 v233, v234
	v_cvt_f32_i32_e32 v46, v236
	v_cvt_f32_i32_e32 v45, v237
	v_cvt_f32_i32_e32 v237, v238
	v_cvt_f32_i32_e32 v201, v239
	v_cvt_f32_i32_e32 v202, v240
	v_cvt_f32_i32_e32 v191, v241
	v_cvt_f32_i32_e32 v192, v242
	v_cvt_f32_i32_e32 v47, v143
	v_cvt_f32_i32_e32 v49, v144
	v_cvt_f32_i32_e32 v50, v145
	v_cvt_f32_i32_e32 v51, v146
	v_cvt_f32_i32_e32 v247, v147
	v_cvt_f32_i32_e32 v249, v148
	v_cvt_f32_i32_e32 v170, v149
	v_cvt_f32_i32_e32 v171, v150
	v_cvt_f32_i32_e32 v210, v210
	v_cvt_f32_i32_e32 v211, v211
	v_cvt_f32_i32_e32 v231, v212
	v_cvt_f32_i32_e32 v235, v213
	v_cvt_f32_i32_e32 v229, v214
	v_cvt_f32_i32_e32 v230, v215
	v_cvt_f32_i32_e32 v200, v216
	v_cvt_f32_i32_e32 v193, v217
	v_cvt_f32_i32_e32 v43, v227
	v_cvt_f32_i32_e32 v44, v228
.LBB0_13:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v56, off offset:212
	scratch_store_b32 off, v46, off offset:208
	scratch_store_b32 off, v45, off offset:156
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v227, 0
	v_mov_b32_e32 v240, 0
	v_mov_b32_e32 v148, 0
	v_mov_b32_e32 v212, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_15
; %bb.14:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	v_dual_mov_b32 v46, v191 :: v_dual_add_nc_u32 v45, s44, v226
	v_mov_b32_e32 v65, v192
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	ds_load_b128 v[56:59], v45
	v_dual_mov_b32 v66, v193 :: v_dual_add_nc_u32 v45, s44, v225
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	v_mov_b32_e32 v68, v200
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[61:64], v45
	v_add_nc_u32_e32 v45, s44, v224
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_mov_b32_e32 v69, v201
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[190:193], v45
	v_add_nc_u32_e32 v45, s44, v221
	v_dual_mov_b32 v221, v202 :: v_dual_mov_b32 v234, v231
	v_dual_mov_b32 v255, v237 :: v_dual_mov_b32 v150, s19
	ds_load_b128 v[224:227], v45
	v_add_nc_u32_e32 v45, s44, v222
	v_mov_b32_e32 v222, v230
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v148, s17 :: v_dual_mov_b32 v147, s16
	v_mov_b32_e32 v146, s15
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[250:253], v45
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v144, s13 :: v_dual_add_nc_u32 v45, s44, v219
	v_mov_b32_e32 v149, s18
	v_mov_b32_e32 v143, s12
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[200:203], v45
	v_add_nc_u32_e32 v45, s44, v220
	v_dual_mov_b32 v220, v229 :: v_dual_mov_b32 v145, s14
	ds_load_b128 v[74:77], v45
	v_add_nc_u32_e32 v45, s44, v218
	ds_load_b128 v[228:231], v45
	v_mov_b32_e32 v45, v235
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[74:77], v[17:20], v[143:150] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[250:253], v[21:24], v[235:242] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[212:219], v[228:231], v[17:20], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[235:242], v[190:193], v[25:28], v[235:242] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[212:219], v[200:203], v[21:24], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[228:231], v[13:16], v[143:150] neg_lo:[1,1,0]
	v_mov_b32_e32 v231, v234
	v_wmma_i32_16x16x16_iu8 v[235:242], v[56:59], v[29:32], v[235:242] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[212:219], v[224:227], v[25:28], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[200:203], v[9:12], v[17:24] neg_lo:[1,1,0]
	v_mov_b32_e32 v202, v221
	v_mov_b32_e32 v200, v68
	v_wmma_i32_16x16x16_iu8 v[143:150], v[74:77], v[13:16], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[212:219], v[61:64], v[29:32], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[224:227], v[5:8], v[17:24] neg_lo:[1,1,0]
	v_dual_mov_b32 v230, v222 :: v_dual_mov_b32 v229, v220
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[250:253], v[9:12], v[143:150] neg_lo:[1,1,0]
	v_mov_b32_e32 v201, v69
	v_wmma_i32_16x16x16_iu8 v[17:24], v[61:64], v[1:4], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v69, v212
	v_cvt_f32_i32_e32 v61, v213
	v_wmma_i32_16x16x16_iu8 v[143:150], v[190:193], v[5:8], v[143:150] neg_lo:[1,1,0]
	v_dual_mov_b32 v193, v66 :: v_dual_mov_b32 v192, v65
	v_mov_b32_e32 v191, v46
	v_cvt_f32_i32_e32 v62, v214
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[56:59], v[1:4], v[143:150] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v63, v215
	v_cvt_f32_i32_e32 v253, v216
	v_cvt_f32_i32_e32 v254, v217
	v_cvt_f32_i32_e32 v246, v218
	v_cvt_f32_i32_e32 v250, v219
	v_cvt_f32_i32_e32 v234, v235
	v_mov_b32_e32 v235, v45
	v_cvt_f32_i32_e32 v236, v236
	v_cvt_f32_i32_e32 v203, v237
	v_mov_b32_e32 v237, v255
	v_cvt_f32_i32_e32 v75, v238
	v_cvt_f32_i32_e32 v56, v239
	v_cvt_f32_i32_e32 v214, v240
	v_cvt_f32_i32_e32 v215, v241
	v_cvt_f32_i32_e32 v216, v242
	v_cvt_f32_i32_e32 v68, v17
	v_cvt_f32_i32_e32 v65, v18
	v_cvt_f32_i32_e32 v66, v19
	v_cvt_f32_i32_e32 v190, v20
	v_cvt_f32_i32_e32 v255, v21
	v_cvt_f32_i32_e32 v64, v22
	v_cvt_f32_i32_e32 v251, v23
	v_cvt_f32_i32_e32 v252, v24
	v_cvt_f32_i32_e32 v240, v143
	v_cvt_f32_i32_e32 v241, v144
	v_cvt_f32_i32_e32 v212, v145
	v_cvt_f32_i32_e32 v213, v146
	v_cvt_f32_i32_e32 v145, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v217, v149
	v_cvt_f32_i32_e32 v227, v150
.LBB0_15:
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e32 v1.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v1.h, v194.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v4.h, v73.l
	v_mov_b16_e64 v6.h, v199.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v10.h, v60.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v4.l, v1.l
	v_mov_b16_e32 v6.l, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v10.l, v1.l
	v_mov_b16_e64 v11.h, v151.l
	v_mov_b16_e32 v11.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v2, v1, v4
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v20.h, v70.l
	v_mov_b16_e32 v20.l, v1.l
	v_mov_b16_e32 v21.h, v72.l
	v_mov_b16_e32 v21.l, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v2, v55, v208
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s34, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v208, v2, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v2.h, v53.l
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v1, v6
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s34, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v146.h, v1.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s12, s0, 6
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v2, v4
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v3, v52, v209
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v1, v10
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s12, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v149.h, v1.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v209, v5, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v4, v33, v174
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v2, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s0, s3, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v144.h, v1.l
	v_mov_b16_e64 v143.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v174, v5, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v23, v4, v48, v186
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v2, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v3, v35, v207
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v1, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v151.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v186, v23, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v4, v197, v184
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v2, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v3, v34, v188
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v207, v9, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v184, v6, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v4, v198, v185
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v4.h, v71.l
	v_mov_b16_e32 v4.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v188, v3, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	scratch_load_b32 v3, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v185, v12, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v10, v1, v4
	v_mul_f32_e32 v4, v2, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v13, v10, v42, v182
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v10.h, v196.l
	v_mov_b16_e32 v10.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v182, v13, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v11, v1, v10
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v11, v41, v183
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v11.h, v152.l
	v_mov_b16_e32 v11.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v183, v15, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v14, v1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v14, v223, v180
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v14.h, v160.l
	v_mov_b16_e32 v14.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v180, v16, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v1, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v17, v54, v181
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v4, v36, v178
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v2, v10
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v10, v172, s12, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v181, v18, s2
	v_cndmask_b32_e64 v17, v178, v17, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v4, v67, v179
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v2, v11
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v179, v22, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v4, v78, v176
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v2, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v176, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v4, v79, v177
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v1, v20
	v_mul_f32_e32 v20, v2, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v177, v25, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v14, v4, v40, v126
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v1, v21
	v_mul_f32_e32 v21, v2, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v20, v20, v195, v124
	v_fma_f32 v26, v4, v39, v175
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v4, v173, s12, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s12, s12, s35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v21, v21, v187, v125
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v11, v169, s12, 1
	v_add_lshl_u32 v24, v168, s12, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	s_clause 0x1
	buffer_load_u16 v27, v4, s[8:11], 0 offen
	buffer_load_u16 v28, v10, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v10, v166, s12, 1
	v_cndmask_b32_e64 v4, 0x80000000, v11, s0
	v_add_lshl_u32 v11, v167, s12, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s10, s12, s22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v31, s10, v164, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	s_clause 0x3
	buffer_load_u16 v29, v4, s[24:27], 0 offen
	buffer_load_u16 v30, v10, s[24:27], 0 offen
	buffer_load_u16 v32, v11, s[24:27], 0 offen
	buffer_load_u16 v34, v24, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v4, s10, v165, 1
	v_add_lshl_u32 v10, s10, v161, 1
	v_add_lshl_u32 v11, s10, v162, 1
	v_add_lshl_u32 v24, s10, v163, 1
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	s_clause 0x4
	buffer_load_u16 v35, v4, s[24:27], 0 offen
	buffer_load_u16 v40, v10, s[24:27], 0 offen
	buffer_load_u16 v42, v11, s[24:27], 0 offen
	buffer_load_u16 v45, v24, s[24:27], 0 offen
	buffer_load_u16 v46, v31, s[24:27], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v23, v153, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v36, s10, v157, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v24, v154, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v39, s10, v158, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v31, v155, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v41, s10, v159, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v33, v156, s12, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v53, 0x80000000, v36, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v175, v26, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v54, 0x80000000, v39, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v55, 0x80000000, v41, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	s_clause 0x6
	buffer_load_u16 v39, v23, s[24:27], 0 offen
	buffer_load_u16 v36, v24, s[24:27], 0 offen
	buffer_load_u16 v24, v31, s[24:27], 0 offen
	buffer_load_u16 v23, v33, s[24:27], 0 offen
	buffer_load_u16 v41, v53, s[24:27], 0 offen
	buffer_load_u16 v31, v54, s[24:27], 0 offen
	buffer_load_u16 v33, v55, s[24:27], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v10, 1, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v155.h, v1.l
	v_mov_b16_e32 v11.h, v1.l
	v_mov_b16_e64 v153.h, v1.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s11, s33, s23
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v125, v21, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s11, s11, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v124, v20, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v4, s23, v189
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v5, 16, v27
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v6, 16, v28
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v27, 16, v30
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v30, 16, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v26, 16, v29
	v_lshlrev_b32_e32 v29, 16, v34
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v34, 16, v42
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v28, 16, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v42, v6, v27 :: v_dual_lshlrev_b32 v35, 16, v45
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v55, v6, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v6, v26
	v_dual_mul_f32 v26, v5, v26 :: v_dual_mul_f32 v53, v6, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v42, v42, v49, v9
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v49, v55, v68, v8
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v27, v5, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v26, v43, v58
	v_fma_f32 v43, v53, v50, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v9, v42, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v45, v47, v48
	v_fma_f32 v27, v27, v44, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v58, v26, s3
	v_cndmask_b32_e64 v58, v8, v49, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v32, 16, v40
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v40, 16, v46
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v6, v29
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v10, 56, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v48, v45, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v54, v6, v32 :: v_dual_mul_f32 v29, v5, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v46, v51, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v12, v27, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v51, v54, v65, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v29, v38, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v13, v44, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v7, v51, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v7, 0xbfb8aa3b, v58 :: v_dual_mul_f32 v60, v6, v35
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v35, v5, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v22, v29, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v8, 0xbfb8aa3b, v51
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v7
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v54, v60, v190, v15
	v_fma_f32 v35, v35, v63, v18
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v7, 0, 0x42800000, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v15, v54, s3
	v_cndmask_b32_e64 v44, v18, v35, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v30, v5, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_dual_fmac_f32 v7, 0xbfb8aa3b, v58 :: v_dual_mul_f32 v32, v5, v32
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v30, v30, v69, v57
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v7, v7
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v32, v32, v61, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v57, v30, s3
	v_cndmask_b32_e64 v52, v52, v32, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v49
	v_mul_f32_e32 v15, 0xbfb8aa3b, v52
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v67, v6, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v9
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v53, v67, v66, v59
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v9, 0, 0x42800000, s5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v5, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v15, 0, 0x42800000, s4
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v28, v37, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v16, v43, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v59, v53, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v9, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v19, v28, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v44
	v_exp_f32_e32 v15, v15
	v_mul_f32_e32 v16, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v19
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v9, v9, v27
	v_cndmask_b32_e64 v19, 0, 0x42800000, s8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v15, v15, v26
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v5, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v16, 0, 0x42800000, s7
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v44
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v57, 1.0, v15
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v62, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s7
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v45
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v17, v34, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v48
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v18, 0xbfb8aa3b, v43
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v19, v19, v30
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v17, 0, 0x42800000, s6
	v_ldexp_f32 v16, v16, v29
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v18, 0, 0x42800000, s9
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s9
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v48
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v59, 1.0, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v57, v57, v52
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v17, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, null, v59, v59, v45
	v_div_scale_f32 v27, s4, v45, v59, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v18, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v67, v26
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v28
	v_ldexp_f32 v18, v18, v32
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v6, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v74, -v26, v67, 1.0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v40, v5, v40 :: v_dual_add_f32 v61, 1.0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v55, v70, v64, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v64, v16
	v_fmac_f32_e32 v67, v74, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v40, v40, v254, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, null, v61, v61, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v25, v55, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s1
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v55, 1.0, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v69, v63
	v_div_scale_f32 v74, s5, v43, v61, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v7, v7, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v18, null, v55, v55, v49
	v_fma_f32 v71, -v16, v64, 1.0
	v_mul_f32_e32 v77, v27, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v53, 1.0, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v65, v18
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, s8, v52, v57, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v9, null, v53, v53, v58
	v_div_scale_f32 v15, s9, v58, v53, v58
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v40, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v30, v9
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v18, v65, 1.0
	v_dual_fmac_f32 v65, v72, v65 :: v_dual_add_f32 v62, 1.0, v19
	v_div_scale_f32 v19, s7, v49, v55, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v9, v30, 1.0
	v_div_scale_f32 v28, null, v62, v62, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v70, v30
	v_fma_f32 v70, -v63, v69, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v68, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v69, v70, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v64, v71, v64 :: v_dual_mul_f32 v79, v74, v69
	v_mul_f32_e32 v72, v15, v30
	v_mul_f32_e32 v70, v17, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v8, v8, v22
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v54, 1.0, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, null, v54, v54, v51
	v_div_scale_f32 v8, vcc_lo, v51, v54, v51
	v_rcp_f32_e32 v29, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v7, v29, 1.0
	v_fmac_f32_e32 v29, v34, v29
	v_fma_f32 v34, -v28, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v71, v8, v29 :: v_dual_fmac_f32 v68, v34, v68
	v_fma_f32 v34, -v7, v71, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v71, v34, v29
	.loc	1 370 31 is_stmt 1              ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v34, s10, v139, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v7, -v7, v71, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v71, v7, v29, v71
	v_fma_f32 v7, -v16, v70, v17
	s_mov_b32 vcc_lo, s9
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v29, s10, v137, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v51, v71, v54, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v7, v64
	v_fma_f32 v7, -v26, v77, v27
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v50, v50, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v147, -v16, v70, v17
	v_fmac_f32_e32 v77, v7, v67
	v_div_scale_f32 v22, null, v60, v60, v48
	v_div_scale_f32 v25, s6, v48, v60, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v154, -v26, v77, v27
	v_rcp_f32_e32 v66, v22
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v17, v130, s12, 1
	v_add_lshl_u32 v16, v129, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v26, s10, v135, 1
	v_add_lshl_u32 v27, s10, v136, 1
	v_add_lshl_u32 v129, s10, v142, 1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v7, s11, v10, 64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v27, 0x80000000, v27, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v22, v66, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v66, v73, v66
	v_fma_f32 v73, -v9, v72, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v72, v73, v30 :: v_dual_mul_f32 v73, v19, v65
	v_div_scale_f32 v32, s1, v44, v62, v44
	v_fma_f32 v8, -v9, v72, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v9, -v18, v73, v19
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v15, v128, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v128, s10, v141, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v73, v9, v65
	v_div_fmas_f32 v72, v8, v30, v72
	s_mov_b32 vcc_lo, s8
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v30, s10, v138, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v64, v147, v64, v70
	v_fma_f32 v150, -v18, v73, v19
	v_div_fixup_f32 v53, v72, v53, v58
	s_mov_b32 vcc_lo, s7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v18, v131, s12, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v52, v64, v57, v52
	v_div_fmas_f32 v54, v150, v65, v73
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v47, v47, v53 :: v_dual_mul_f32 v76, v25, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v46, v46, v52
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v19, v132, s12, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v146.l, v47.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v8, -v22, v76, v25
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v131, 0x80000000, v29, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v46.h
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v132, 0x80000000, v30, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v76, v8, v66
	v_fma_f32 v8, -v63, v79, v74
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v128, 0x80000000, v128, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v49, v54, v55, v49
	v_fma_f32 v152, -v22, v76, v25
	v_fmac_f32_e32 v79, v8, v69
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v22, v133, s12, 1
	v_add_lshl_u32 v25, v134, s12, 1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v8, s11, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v58, v152, v66, v76
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v63, -v63, v79, v74
	v_div_fmas_f32 v51, v154, v67, v77
	s_mov_b32 vcc_lo, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v10, 0x80000000, v15, s0
	v_cndmask_b32_e64 v15, 0x80000000, v16, s0
	v_cndmask_b32_e64 v16, 0x80000000, v17, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v45, v51, v59, v45
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v133, 0x80000000, v34, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v48, v58, v60, v48
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v37, v37, v45 :: v_dual_mul_f32 v78, v32, v68
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v146
	v_cmp_o_f32_e64 s1, v46, v46
	v_add3_u32 v46, v46, v11, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v38, v38, v48
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v9, -v28, v78, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v47, v45, 0x7fff
	v_mov_b16_e64 v155.l, v37.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v153.l, v38.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v78, v9, v68
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v9, v127, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v127, s10, v140, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v130, -v28, v78, v32
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e64 v28, 0x80000000, v25, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v32, 0x80000000, v26, s0
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v53, v130, v68, v78
	s_mov_b32 vcc_lo, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v47, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v52, v63, v69, v79
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v47, 1, v153
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v44, v53, v62, v44
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v30, v9, s[24:27], 0 offen
	buffer_load_u16 v29, v10, s[24:27], 0 offen
	buffer_load_u16 v26, v15, s[24:27], 0 offen
	buffer_load_u16 v25, v16, s[24:27], 0 offen
	buffer_load_u16 v18, v17, s[24:27], 0 offen
	buffer_load_u16 v17, v19, s[24:27], 0 offen
	buffer_load_u16 v10, v22, s[24:27], 0 offen
	buffer_load_u16 v9, v28, s[24:27], 0 offen
	buffer_load_u16 v32, v32, s[24:27], 0 offen
	buffer_load_u16 v34, v27, s[24:27], 0 offen
	buffer_load_u16 v27, v131, s[24:27], 0 offen
	buffer_load_u16 v28, v132, s[24:27], 0 offen
	buffer_load_u16 v19, v133, s[24:27], 0 offen
	buffer_load_u16 v22, v127, s[24:27], 0 offen
	buffer_load_u16 v15, v128, s[24:27], 0 offen
	buffer_load_u16 v16, v129, s[24:27], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v11.l, 0x7fff, v45.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v43, v52, v61, v43
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v45, v6, v41
	v_mul_f32_e32 v41, v5, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v144.l, v50.h
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v12, v12, v43 :: v_dual_mul_f32 v13, v13, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v40, v41, v253, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v48, 1, v144
	v_cmp_o_f32_e64 s0, v37, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e64 v151.l, v12.h
	v_mov_b16_e64 v149.l, v13.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v20, v40, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v50, v48, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v50, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v42, v42, v49 :: v_dual_and_b32 v49, 1, v155
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v48, 1, v151
	v_cndmask_b16 v11.h, 0x7fff, v43.h, vcc_lo
	v_and_b32_e32 v43, 1, v149
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e64 v143.l, v42.h
	v_cmp_o_f32_e64 s4, v42, v42
	v_cmp_o_f32_e64 s5, v13, v13
	v_cmp_o_f32_e64 s6, v12, v12
	v_add3_u32 v13, v13, v43, 0x7fff
	v_and_b32_e32 v44, 1, v143
	v_add3_u32 v43, v12, v48, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v46.h, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v61, v6, v39
	v_mul_f32_e32 v39, v5, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v42, v44, 0x7fff
	v_add3_u32 v44, v37, v49, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v37.l, v1.l
	v_mov_b16_e64 v37.h, v244.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.l, 0x7fff, v43.h, s6
	v_cndmask_b16 v12.l, 0x7fff, v42.h, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v38, v47, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v1, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v126, v14, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v42
	v_mul_f32_e32 v49, 0xbfb8aa3b, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v14.l, 0x7fff, v44.h, s0
	v_cndmask_b16 v14.h, 0x7fff, v43.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v43, v45, v255, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v45.l, v1.l
	v_mov_b16_e64 v45.h, v243.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:256
	scratch_load_b32 v64, off, off offset:228
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v43, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v35
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v1, v45
	v_mul_f32_e32 v45, v2, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v42
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v47, v47
	v_ldexp_f32 v42, v42, v43
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v47, v47, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v42, v42, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v40, v43
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v43, v41
	v_div_scale_f32 v54, null, v47, v47, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v58, v54
	v_fma_f32 v62, -v54, v58, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v58, v62, v58
	v_div_scale_f32 v62, s4, v21, v47, v21
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v32, 16, v32
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v48, v48, v50, v122
	scratch_load_b32 v50, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v122, v48, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v46, v46, v50, v123
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v123, v46, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v40, v50
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v41, v43, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v52, vcc_lo, v35, v42, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v20
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v40, 1.0, v40 :: v_dual_fmac_f32 v43, v50, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v49, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, null, v40, v40, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v53, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v49, v49, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v51, v52, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v41, v51, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v50, v53, 1.0
	v_div_scale_f32 v59, null, v49, v49, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v55, v43
	v_fmac_f32_e32 v53, v57, v53
	v_div_scale_f32 v55, s1, v38, v40, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v57, v59
	v_fma_f32 v41, -v41, v51, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v52, v55, v53
	v_div_fmas_f32 v41, v41, v43, v51
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v43, -v50, v52, v55
	v_fma_f32 v51, -v59, v57, 1.0
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v35, v41, v42, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v52, v43, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v43, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v57, v51, v57
	v_div_scale_f32 v51, s5, v20, v49, v20
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v60, v6, v36
	v_dual_mul_f32 v37, v2, v37 :: v_dual_mul_f32 v36, v5, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v50, v52, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v63, v51, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v42.l, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v50, v50, v53, v52
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v38, v50, v40, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v43, v45, v43, v121
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v45, v62, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v121, v43, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v54, v45, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v36, v36, v245, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v43, v36, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v43.h, v44.l
	scratch_load_b32 v44, off, off offset:252 ; 4-byte Folded Reload
	v_mov_b16_e32 v43.l, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v45, v55, v58
	v_fma_f32 v52, -v54, v45, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v62, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v45, v52, v58, v45
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v52, v60, v249, v46
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v6, v23
	v_mul_f32_e32 v23, v5, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v21, v45, v47, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v45, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v37, v64, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v64, -v59, v63, v51
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v36, v21
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v46, v52, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v37, v120, v37, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v63, v64, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v39, v39, v248, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v59, v63, v51
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v6, v24
	v_mul_f32_e32 v24, v5, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v39, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v51, v51, v57, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v39, v61, v247, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v20, v51, v49, v20
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v37, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v48, v39, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v21.h
	v_mov_b16_e32 v39.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v48, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v37.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v38, v20, v38
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v20, v1, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v40, 1, v40
	v_mov_b16_e32 v41.l, v38.h
	v_cmp_o_f32_e64 s0, v38, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v39, v21, v39, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v36, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v35, v20, v206, v119
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v37, v40, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v40, v6, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.h, 0x7fff, v39.h, vcc_lo
	v_mov_b16_e32 v39.l, v21.h
	v_mov_b16_e32 v39.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_and_b32_e32 v37, 1, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v119, v35, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v39
	v_cndmask_b16 v20.l, 0x7fff, v36.h, vcc_lo
	v_add3_u32 v36, v38, v37, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v38.l, v1.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v21, v39, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v40, v40, v252, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v36.h, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v39.h, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v40, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v35
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v40, 0, 0x42800000, s1
	v_dual_fmac_f32 v40, 0xbfb8aa3b, v35 :: v_dual_mul_f32 v33, v5, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v40, v40
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v42.h, v44.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v37, v41, v205, v118
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v6, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v118, v37, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v39, v41, v251, v37
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v2, v43
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v43, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v39, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v39, v41, v204, v117
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v41, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v117, v39, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v33, v33, v250, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v39, v33, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v38.h, v43.l
	v_mov_b16_e32 v43.l, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v1, v38
	v_mul_f32_e32 v38, v2, v38
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v46, v48, v114
	scratch_load_b32 v48, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v43.h, v41.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v2, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v114, v46, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v1, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v41, v41, v45, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v40, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v43, v2, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v116, v41, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v42, 0xbfb8aa3b, v37 :: v_dual_mul_f32 v31, v5, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, null, v40, v40, v35
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v31, v246, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v41, v31, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v31
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v44, v44, v48, v115
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v115, v44, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v41, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v39, v42, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v41, 1.0, v41 :: v_dual_fmac_f32 v42, v48, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v41, v41, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v51, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v48, v51, 1.0
	v_fmac_f32_e32 v51, v54, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, s1
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v33
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v45, v45, v49
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, vcc_lo, v35, v40, v35
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v47, v47, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v49, v50, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v52, null, v45, v45, v33
	v_fma_f32 v53, -v39, v49, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v55, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v53, v42
	v_div_scale_f32 v53, s1, v37, v41, v37
	v_div_scale_f32 v57, null, v47, v47, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v39, v49, v50
	v_mul_f32_e32 v50, v53, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v52, v55, 1.0
	v_rcp_f32_e32 v54, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v42, v49
	v_fma_f32 v42, -v48, v50, v53
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v55, v60, v55
	v_div_scale_f32 v60, s4, v33, v45, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v50, v42, v51
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v42, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v35, v39, v40, v35
	v_fma_f32 v49, -v57, v54, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.h, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v48, v50, v53
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v40.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v54, v49, v54
	v_div_scale_f32 v49, s5, v31, v47, v31
	v_div_fmas_f32 v48, v48, v51, v50
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v61, v49, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v42, v43, v42, v113
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v43, v60, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v113, v42, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v53, -v52, v43, v60
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v23, v233, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v53, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v42, v23, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v52, v43, v60
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v42, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v43, v50, v55, v43
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v50, v58, v171, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v43, v45, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v43, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v38, v62, v112
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v62, -v57, v61, v49
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v23, v23, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v44, v50, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v38, v112, v38, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v61, v62, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v33, v35
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v24, v24, v232, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v57, v61, v49
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v6, v30
	v_mul_f32_e32 v30, v5, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v38, v24, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v49, v49, v54, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v59, v170, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v31, v49, v47, v31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v24, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v36, v48, v41, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v23.h
	v_mov_b16_e32 v37.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v46, v38, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v24.h
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v41.l, v1.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.h, v1.l
	v_and_b32_e32 v37, 1, v37
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v31, v31, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v46, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v37, v23, v37, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v23, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v31.h
	v_mov_b16_e32 v37.l, v33.h
	v_cmp_o_f32_e64 s0, v31, v31
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v41.h, v42.l
	scratch_load_b32 v42, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v36, v1, v41
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v35, v36, v23, v111
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v24, v38, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_and_b32_e32 v24, 1, v39
	v_mov_b16_e32 v37.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v111, v35, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v38, v6, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.l, 0x7fff, v36.h, vcc_lo
	v_add3_u32 v36, v31, v24, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v24, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v37
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v31.l, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v38, v38, v241, v35
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v5, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v33, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v38, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v38
	v_cndmask_b32_e64 v38, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v35
	v_exp_f32_e32 v38, v38
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v40.h, v42.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v1, v40
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v24, v39, v24, v110
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v6, v32
	v_mul_f32_e32 v32, v5, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v110, v24, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.h, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v24.l, 0x7fff, v36.h, s0
	v_mov_b16_e32 v36.h, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v37, v39, v240, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v2, v41
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v41, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v37, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v37, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v31.h, v41.l
	v_mov_b16_e32 v41.l, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v1, v31
	v_mul_f32_e32 v31, v2, v31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v44, v46, v106
	scratch_load_b32 v46, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v37, v39, v37, v109
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v39, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v106, v44, s2
	v_cndmask_b32_e64 v37, v109, v37, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v236, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v37, v34, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v41.h, v39.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v2, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v1, v41
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v39, v39, v43, v108
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v38, v38, v40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v43, 0xbfb8aa3b, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v42, v42, v46, v107
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v108, v39, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v43
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v32, v32, v234, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, null, v38, v38, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s1
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s1
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v39, v32, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v40
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v40, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v34
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v41, v2, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v107, v42, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v43
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v39, v39, v46
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v37, v40, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v39, 1.0, v39 :: v_dual_fmac_f32 v40, v46, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v43, v43, v47
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v39, v39, v33
	v_div_scale_f32 v48, vcc_lo, v35, v38, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v49, v46
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, null, v43, v43, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v45, v45, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v47, v48, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v46, v49, 1.0
	v_rcp_f32_e32 v53, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v37, v47, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v52, v49
	v_div_scale_f32 v54, null, v45, v45, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v47, v51, v40
	v_div_scale_f32 v51, s1, v33, v39, v33
	v_fma_f32 v58, -v50, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v52, v54
	v_fma_f32 v37, -v37, v47, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v48, v51, v49
	v_fmac_f32_e32 v53, v58, v53
	v_div_scale_f32 v58, s4, v34, v43, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v37, v37, v40, v47
	v_fma_f32 v40, -v46, v48, v51
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v54, v52, 1.0
	v_div_fixup_f32 v35, v37, v38, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v48, v40, v49
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v40, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v38.l, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v52, v47, v52 :: v_dual_lshlrev_b32 v29, 16, v29
	v_fma_f32 v46, -v46, v48, v51
	v_div_scale_f32 v47, s5, v32, v45, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v55, v6, v29
	v_mul_f32_e32 v29, v5, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v46, v46, v49, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v49, off, off offset:208
	scratch_load_b32 v60, off, off offset:120
	scratch_load_b32 v48, off, off offset:212
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v59, v47, v52
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v40, v41, v40, v105
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v41, v58, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v105, v40, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v50, v41, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v29, v29, v49, v40
	s_waitcnt vmcnt(1)
	v_fma_f32 v31, v31, v60, v104
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v41, v51, v53
	v_fma_f32 v60, -v54, v59, v47
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v49, 16, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v40, v29, s3
	v_cndmask_b32_e64 v31, v104, v31, s2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v40, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v30, v30, v48, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v50, v41, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v31, v30, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v41, v48, v53, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v55, v211, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v34, v41, v43, v34
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v43.l, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v29, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v42, v48, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v42.l, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v59, v60, v52 :: v_dual_mul_f32 v34, v34, v35
	v_fma_f32 v47, -v54, v59, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v47, v47, v52, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v52, 16, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v31, v47, v45, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v57, v210, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v30, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v44, v32, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v46, v39, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v29.h
	v_mov_b16_e32 v33.h, v1.l
	v_mov_b16_e32 v36.l, v30.h
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v39.l, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v31, v31, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v37.l, v31.h
	v_cmp_o_f32_e64 s0, v31, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v33, v29, v33, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v29, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v35, v30, v36, 0x7fff
	v_mov_b16_e32 v33.l, v34.h
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v39.h, v40.l
	scratch_load_b32 v40, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v1, v39
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v29, v32, v29, v103
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v32, 16, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v28.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v33.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v103, v29, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v36, v6, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v37
	v_cndmask_b16 v28.l, 0x7fff, v35.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v35, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v36, v36, v213, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_add3_u32 v30, v31, v30, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v5, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v34, v33, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v36, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v36, 0xbfb8aa3b, v29
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v36
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v38.h, v40.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v40, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v1, v38
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v35, v37, v35, v102
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v37, 16, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v27.h, 0x7fff, v33.h, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v33, v2, v39
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v39, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v102, v35, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v36, v6, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, s1
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v5, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v27.l, 0x7fff, v30.h, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v36, v212, v34
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v36, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v34, v31, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v34, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v35, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v42.h, v36.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v33, v34, v101
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v34, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v35, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v101, v33, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v43.h, v34.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v2, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v39, v100
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v38, v32, v75, v33
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v39, v1, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v100, v34, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v38, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v38, v1, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v32, v32, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v31
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v35, v37, v203, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v38, v40, v98
	scratch_load_b32 v40, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v33
	v_exp_f32_e32 v36, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v34, v35, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v45, v44
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v43, v2, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v37
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v2, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v37, 0, 0x42800000, s1
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v44, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v45, v46, v45
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v39, v39, v40, v99
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v99, v39, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v39, v36, v40
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v40, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v98, v38, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s1
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v37, v37, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_ldexp_f32 v38, v40, v38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, vcc_lo, v29, v32, v29
	v_rcp_f32_e32 v48, v46
	v_div_scale_f32 v55, s4, v31, v37, v31
	v_mul_f32_e32 v50, v47, v45
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v39, v40
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v40, v6, v52
	v_mul_f32_e32 v52, v5, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v44, v50, v47
	v_div_scale_f32 v51, null, v38, v38, v33
	v_fma_f32 v39, -v46, v48, 1.0
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v50, v25, v45
	v_rcp_f32_e32 v53, v51
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v40, v235, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v48, v39, v48
	v_div_scale_f32 v54, null, v26, v26, v34
	v_fma_f32 v25, -v44, v50, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v39, v6, v49 :: v_dual_mul_f32 v44, v55, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v41, v54
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v49, v5, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v25, v45, v50
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v45, -v46, v44, v55
	v_fma_f32 v47, -v51, v53, 1.0
	v_div_fixup_f32 v25, v25, v32, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v44, v45, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v45, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v54, v41, 1.0
	v_fmac_f32_e32 v53, v47, v53
	v_div_scale_f32 v47, s5, v33, v38, v33
	v_fma_f32 v46, -v46, v44, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, s1, v34, v26, v34
	v_div_fmas_f32 v44, v46, v48, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v46, off, off offset:156
	scratch_load_b32 v58, off, off offset:88
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v57, v50, v41
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v31, v44, v37, v31
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v37.l, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v43, v43, v45, v97
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v45, v47, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v97, v43, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v51, v45, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v52, v237, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v45, v55, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v42, v42, v58, v96
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v58, -v54, v57, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v48, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v51, v45, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v96, v42, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v57, v58, v41
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v51, v6, v18
	v_mul_f32_e32 v18, v5, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v45, v47, v53, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v49, v46, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v54, v57, v50
	s_mov_b32 vcc_lo, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v50, v6, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v45, v38, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v42, v46, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v41, v49, v41, v57
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v5, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v43, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v35, v40, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v26, v41, v26, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v34, v39, v231, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.h, v1.l
	v_mov_b16_e32 v35.l, v30.h
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v38, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v36, v34, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v38, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v35, 1, v35
	v_mov_b16_e32 v36.l, v26.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v34, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v41, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v30, v35, 0x7fff
	v_and_b32_e32 v31, 1, v36
	v_mov_b16_e32 v35.l, v29.h
	v_mov_b16_e32 v35.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v36.l, v1.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v29, v29
	v_add3_u32 v30, v26, v31, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v31, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v37.h, v38.l
	scratch_load_b32 v38, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v1, v37
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v31, v32, v31, v95
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v32, 16, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.h, 0x7fff, v34.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_and_b32_e32 v26, 1, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v95, v31, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v6, v32
	v_mul_f32_e32 v32, v5, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.l, 0x7fff, v30.h, vcc_lo
	v_add3_u32 v26, v29, v26, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v26.l, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v33, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.h, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v148, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v25.h
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v34, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v34, 0xbfb8aa3b, v31 :: v_dual_and_b32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v25, v33, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v33, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v25, 16, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v19.l, 0x7fff, v26.h, s0
	v_cndmask_b16 v19.h, 0x7fff, v30.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v6, v25
	v_mul_f32_e32 v25, v5, v25
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v36.h, v38.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v38, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v35, v1, v36
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v33, v35, v33, v94
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v35, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v94, v33, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v30, v34, v145, v29
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v2, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v30, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v30, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v26.h, v35.l
	v_mov_b16_e32 v35.l, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v39, v1, v26
	v_mul_f32_e32 v26, v2, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v39, v39, v41, v90
	scratch_load_b32 v41, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v30, v34, v30, v93
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v34, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v90, v39, s2
	v_cndmask_b32_e64 v30, v93, v30, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v32, v32, v214, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v32, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v35.h, v34.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v2, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v1, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v38, v92
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v38, 0xbfb8aa3b, v30 :: v_dual_mul_f32 v35, v2, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v37, v41, v91
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v92, v34, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v91, v37, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v25, v56, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0x42800000, s0
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v34, v25, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v40, 0xbfb8aa3b, v25
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v38, v38, v42
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v38, v38, v30
	v_rcp_f32_e32 v48, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v45, v48, 1.0
	v_dual_fmac_f32 v48, v52, v48 :: v_dual_fmac_f32 v33, 0xbfb8aa3b, v31
	v_div_scale_f32 v52, s1, v30, v38, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v33, v33
	v_ldexp_f32 v33, v33, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v29
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v33, v33, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, vcc_lo, v31, v33, v31
	v_rcp_f32_e32 v36, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v34, v34, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v32, v36, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v40, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v41, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v41, null, v34, v34, v29
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v42, v43, v36
	v_rcp_f32_e32 v44, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v49, null, v40, v40, v25
	v_fma_f32 v46, -v32, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v42, v46, v36
	v_fma_f32 v47, -v41, v44, 1.0
	v_div_scale_f32 v46, s0, v29, v34, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v32, v42, v43
	v_fmac_f32_e32 v44, v47, v44
	v_rcp_f32_e32 v47, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v36, v42
	v_mul_f32_e32 v43, v46, v44
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v31, v32, v33, v31
	v_fma_f32 v36, -v41, v43, v46
	.loc	1 370 31 is_stmt 1              ; generate_amdgcn.py:370:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:68
	scratch_load_b32 v54, off, off offset:24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v49, v47, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v33.h, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v36, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v36, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v47, v42, v47
	v_div_scale_f32 v42, s4, v25, v40, v25
	v_fma_f32 v41, -v41, v43, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v53, v42, v47
	v_div_fmas_f32 v41, v41, v44, v43
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v29, v41, v34, v29
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v34.l, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v41, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fma_f32 v26, v26, v54, v88
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v54, -v49, v53, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v35, v35, v36, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v36, v52, v48 :: v_dual_fmac_f32 v53, v54, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v88, v26, s2
	v_cndmask_b32_e64 v35, v89, v35, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v45, v36, v52
	v_fma_f32 v42, -v49, v53, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v18, v201, v26
	v_fma_f32 v17, v17, v202, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v46, v48
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v6, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v26, v18, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v17, v35, v17, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v45, v36, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v52, off, off          ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v36, v43, v48, v36
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v35, v42, v47, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v36, v38, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v36, v50, v230, v37
	v_fma_f32 v38, v51, v229, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v35, v40, v25
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v35, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v17, v17, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v37, v36, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v37, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v18, v18, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.h, v1.l
	v_mov_b16_e32 v25.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v26, v31
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v31, v6, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v39, v38, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v25, 1, v25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v36.l, v1.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v26, v26
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:16
	scratch_load_b32 v40, off, off offset:12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v17, v25, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v17, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v35.h, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v29, v30, v29 :: v_dual_mul_f32 v16, v5, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v34.h, v35.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.l, v18.h
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v36.h, v37.l
	scratch_load_b32 v37, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v1, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v35
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v2, v34
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v3, s23, v3
	s_mov_b32 s23, 0x31027000
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v18, v30, 0x7fff
	v_mov_b16_e32 v18.h, v1.l
	v_cndmask_b16 v25.l, 0x7fff, v30.h, vcc_lo
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v17, v32, v17, v87
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v32.l, v1.l
	v_mov_b16_e32 v32.h, v33.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v26.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v87, v17, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v35, v1, v32 :: v_dual_and_b32 v30, 1, v33
	v_mul_f32_e32 v32, v2, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v31, v227, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v26, v30, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v26.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v17, v31, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v31, off, off offset:32 ; 4-byte Folded Reload
	v_fma_f32 v32, v32, v39, v84
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v84, v32, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v17
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v35, v31, v86
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v35, v6, v15
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v6, v6, v9 :: v_dual_mul_f32 v15, v5, v15
	v_mul_f32_e32 v9, v5, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v86, v31, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v5, v10
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v15, v215, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, v35, v217, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v32, v15, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v31, v31, v35, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v35, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v26.h, v37.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v38, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v38, v1, v26
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v34, v35, v85
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v1, v36
	v_mul_f32_e32 v36, v2, v36
	v_mul_f32_e32 v2, v2, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v26, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v85, v34, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v33, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v35, v35, v40, v83
	v_fma_f32 v2, v2, v52, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v216, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v38, v41, v82
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v80, v2, s2
	v_cndmask_b32_e64 v35, v83, v35, s2
	v_cndmask_b32_e64 v16, v34, v16, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v33, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v191, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v82, v38, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v193, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v5, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v33, v33, v17
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v46, v200, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v39
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v35, v6, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v1.h, 0x7fff, v30.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s1
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s1
	v_exp_f32_e32 v40, v40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v39, v39, v42
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, vcc_lo, v17, v33, v17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v40, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v39, v39, v16
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v29.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v49, v45
	v_div_scale_f32 v50, null, v40, v40, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v18, v29, v18, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v45, v49, 1.0
	v_fmac_f32_e32 v49, v51, v49
	v_div_scale_f32 v51, s4, v16, v39, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v26, v36, v26, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v36, v51, v49 :: v_dual_fmac_f32 v37, 0xbfb8aa3b, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v81, v26, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v32, v37
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v37, v34
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v9, v192, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v26, v9, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v32, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v34, v37, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v32, 1.0, v32 :: v_dual_fmac_f32 v37, v41, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v32, v32, v31
	v_mul_f32_e32 v42, v43, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v44, v41
	v_fma_f32 v47, -v34, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v42, v47, v37
	v_div_scale_f32 v47, s1, v31, v32, v31
	v_fma_f32 v48, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v34, v42, v43
	v_fmac_f32_e32 v44, v48, v44
	v_rcp_f32_e32 v48, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v37, v42
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v43, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v37, -v41, v43, v47
	v_fma_f32 v42, -v50, v48, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v37, v44
	v_fmac_f32_e32 v48, v42, v48
	v_div_scale_f32 v42, s5, v15, v40, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v41, v43, v47
	v_fma_f32 v47, -v45, v36, v51
	v_mul_f32_e32 v37, v42, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v10, v41, v44, v43
	v_fmac_f32_e32 v36, v47, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v50, v37, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v10, v10, v32, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v45, v36, v51
	v_fmac_f32_e32 v37, v52, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v41, v49, v36
	v_fma_f32 v42, -v50, v37, v42
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v16, v36, v39, v16
	v_div_fmas_f32 v37, v42, v48, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v9, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v37, v40, v15
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v38, v46, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.h, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v16.l, v9.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v10, v15, v10
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v34, v33, v17
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.h, v1.l
	v_cndmask_b16 v1.l, 0x7fff, v18.h, vcc_lo
	v_mov_b16_e32 v17.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v5, v6, v5 :: v_dual_and_b32 v6, 1, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v15, 1, v17
	v_cmp_o_f32_e64 s0, v2, v2
	v_mov_b16_e32 v17.l, v5.h
	v_add3_u32 v6, v9, v6, 0x7fff
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v15, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v5, v5
	v_and_b32_e32 v17, 1, v17
	v_cmp_o_f32_e64 s2, v10, v10
	v_add3_u32 v2, v10, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v9, v5, v17, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s2
	v_mov_b32_e32 v17, 0x7632
	v_cndmask_b16 v0.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v5.l, 0x7fff, v15.h, s0
	v_cndmask_b32_e32 v2, v20, v12, vcc_lo
	v_cndmask_b32_e32 v6, v12, v20, vcc_lo
	v_dual_cndmask_b32 v12, v23, v13 :: v_dual_cndmask_b32 v9, v13, v23
	v_mov_b32_e32 v13, 0x5410
	v_cndmask_b32_e32 v17, 0x3276, v17, vcc_lo
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v10, v28, v25, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v16, v5, v22 :: v_dual_cndmask_b32 v13, 0x1054, v13
	v_lshl_or_b32 v17, v17, 8, v17
	v_dual_cndmask_b32 v5, v22, v5 :: v_dual_cndmask_b32 v18, v21, v11
	v_cndmask_b32_e32 v11, v11, v21, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v13, v13, 8, v13
	v_dual_cndmask_b32 v20, v24, v14 :: v_dual_and_b32 v17, 0x760076, v17
	v_cndmask_b32_e32 v14, v14, v24, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v22, v1, v27 :: v_dual_and_b32 v13, 0x540054, v13
	v_dual_cndmask_b32 v1, v27, v1 :: v_dual_cndmask_b32 v24, v0, v19
	v_cndmask_b32_e32 v0, v19, v0, vcc_lo
	v_permlanex16_b32 v19, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v9, v13, 4, v13
	v_lshl_or_b32 v13, v17, 4, v17
	v_cndmask_b32_e32 v15, v25, v28, vcc_lo
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v23, 0x5040504, v9
	v_and_b32_e32 v25, 0x7060706, v13
	v_permlanex16_b32 v26, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v6, v2, v23
	v_perm_b32 v10, v6, v2, v25
	v_perm_b32 v11, v19, v12, v23
	v_perm_b32 v12, v19, v12, v25
	v_perm_b32 v13, v17, v15, v23
	v_perm_b32 v14, v17, v15, v25
	v_perm_b32 v15, v5, v16, v23
	v_perm_b32 v17, v21, v18, v23
	v_perm_b32 v18, v21, v18, v25
	v_perm_b32 v19, v26, v20, v23
	v_perm_b32 v21, v1, v22, v23
	v_perm_b32 v23, v0, v24, v23
	v_perm_b32 v24, v0, v24, v25
	v_add_lshl_u32 v0, v8, v4, 1
	v_perm_b32 v16, v5, v16, v25
	v_perm_b32 v22, v1, v22, v25
	v_add_lshl_u32 v1, v7, v4, 1
	v_perm_b32 v20, v26, v20, v25
	v_add_lshl_u32 v2, v8, v3, 1
	v_add_lshl_u32 v3, v7, v3, 1
	s_clause 0x3
	buffer_store_b128 v[9:12], v0, s[20:23], 0 offen
	buffer_store_b128 v[13:16], v1, s[20:23], 0 offen
	buffer_store_b128 v[17:20], v2, s[20:23], 0 offen
	buffer_store_b128 v[21:24], v3, s[20:23], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 264
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 264
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21816
; TotalNumSgprs: 58
; NumVgprs: 256
; ScratchSize: 264
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 264
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 65
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
