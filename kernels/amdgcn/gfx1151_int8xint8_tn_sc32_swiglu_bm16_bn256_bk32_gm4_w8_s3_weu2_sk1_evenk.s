	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v146, 1, v0
	v_and_b32_e32 v74, 15, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_lshlrev_b32_e32 v149, 4, v0
	s_mov_b32 s49, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v3, 14, v146
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_add_nc_u32_e32 v36, 0, v146
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v37, 0, v149
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s22, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s13, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
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
	s_xor_b32 s8, s2, s13
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
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s15, s14, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s14, s14, s13
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s15
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s14
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s17, s16
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v1, 3, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_mul_lo_u32 v1, s22, v1
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_mov_b32 s31, s7
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s18, s18, s6
	s_mul_hi_u32 s13, s6, s18
	s_xor_b32 s18, s2, s16
	s_add_i32 s13, s6, s13
	s_ashr_i32 s18, s18, 31
	s_mul_hi_u32 s13, s14, s13
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s13, s17
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_mov_b32 s30, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s20, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s35, s23, 1
	.loc	1 312 26                        ; generate_amdgcn.py:312:26
	s_lshl_b32 s26, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s13, s18
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_mul_lo_u32 v2, s35, v2
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s14, s12, 31
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s13, s3, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s12, s14, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s13
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s12, s12, 27
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_lshl_add_u32 v147, v74, 4, v2
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 4
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s3, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s12, s14, s12
.Ltmp19:
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s13, s35, s26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 31
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add3_u32 v41, v1, v3, s34
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_lshl_add_u32 v148, s23, 5, v147
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s13, s33, s13
	.loc	1 322 26 is_stmt 0              ; generate_amdgcn.py:322:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 63
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_mul_i32 s16, s22, s26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_lshl_b32 s17, s23, 6
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add_nc_u32_e32 v1, s16, v41
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v2, s13, v147
	v_add_nc_u32_e32 v3, s13, v148
	s_add_i32 s13, s13, s17
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_lshl_b32 s15, s22, 5
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v12, s13, v147
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 316 34 is_stmt 0              ; generate_amdgcn.py:316:34
	v_add3_u32 v4, s16, s15, v41
	.loc	1 328 43 is_stmt 1              ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v10, s23, v2
	v_add_nc_u32_e32 v11, s23, v3
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v13, s13, v148
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v19, s23, v12
	v_add3_u32 v18, s13, s23, v148
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_u16 v34, v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v6, 0x80000000, v3, s3
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v14, 0x80000000, v11, s3
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v20, 0x80000000, v12, s2
	v_cndmask_b32_e64 v22, 0x80000000, v13, s2
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v26, 0x80000000, v19, s2
	v_cndmask_b32_e64 v30, 0x80000000, v18, s2
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[2:5], v5, s[28:31], 0 offen
	buffer_load_b128 v[6:9], v6, s[28:31], 0 offen
	buffer_load_b128 v[10:13], v10, s[28:31], 0 offen
	buffer_load_b128 v[14:17], v14, s[28:31], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_u16 v35, v1, s[4:7], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[18:21], v20, s[28:31], 0 offen
	buffer_load_b128 v[22:25], v22, s[28:31], 0 offen
	buffer_load_b128 v[26:29], v26, s[28:31], 0 offen
	buffer_load_b128 v[30:33], v30, s[28:31], 0 offen
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x5f
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(9)
	ds_store_b16 v36, v34 offset:32768
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(8)
	ds_store_b128 v37, v[2:5]
	s_waitcnt vmcnt(7)
	ds_store_b128 v37, v[6:9] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(6)
	ds_store_b128 v37, v[10:13] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v37, v[14:17] offset:20480
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b16 v36, v35 offset:33280
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v37, v[18:21] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v37, v[22:25] offset:12288
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v37, v[26:29] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v37, v[30:33] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_and_or_b32 v81, 0x70, v1, v74
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v82, 0x100, v81
	v_or_b32_e32 v83, 0x200, v81
	v_or_b32_e32 v84, 0x300, v81
	v_or_b32_e32 v85, 0x400, v81
	v_or_b32_e32 v86, 0x500, v81
	v_or_b32_e32 v87, 0x600, v81
	v_or_b32_e32 v88, 0x700, v81
	v_or_b32_e32 v89, 0x800, v81
	v_or_b32_e32 v90, 0x900, v81
	v_or_b32_e32 v91, 0xa00, v81
	v_or_b32_e32 v92, 0xb00, v81
	v_or_b32_e32 v93, 0xc00, v81
	v_or_b32_e32 v94, 0xd00, v81
	v_or_b32_e32 v95, 0xe00, v81
	v_or_b32_e32 v96, 0xf00, v81
	v_or_b32_e32 v79, 0x1000, v81
	v_or_b32_e32 v80, 0x1100, v81
	v_or_b32_e32 v97, 0x1200, v81
	v_or_b32_e32 v98, 0x1300, v81
	v_or_b32_e32 v99, 0x1400, v81
	v_or_b32_e32 v100, 0x1500, v81
	v_or_b32_e32 v101, 0x1600, v81
	v_or_b32_e32 v102, 0x1700, v81
	v_or_b32_e32 v103, 0x1800, v81
	v_or_b32_e32 v104, 0x1900, v81
	v_or_b32_e32 v105, 0x1a00, v81
	v_or_b32_e32 v106, 0x1b00, v81
	v_or_b32_e32 v107, 0x1c00, v81
	v_or_b32_e32 v108, 0x1d00, v81
	v_or_b32_e32 v109, 0x1e00, v81
	v_or_b32_e32 v110, 0x1f00, v81
	v_or_b32_e32 v78, 0x80, v81
	v_or_b32_e32 v111, 0x180, v81
	v_or_b32_e32 v112, 0x280, v81
	v_or_b32_e32 v113, 0x380, v81
	v_or_b32_e32 v114, 0x480, v81
	v_or_b32_e32 v115, 0x580, v81
	v_or_b32_e32 v116, 0x680, v81
	v_or_b32_e32 v117, 0x780, v81
	v_or_b32_e32 v118, 0x880, v81
	v_or_b32_e32 v119, 0x980, v81
	v_or_b32_e32 v120, 0xa80, v81
	v_or_b32_e32 v121, 0xb80, v81
	v_or_b32_e32 v122, 0xc80, v81
	v_or_b32_e32 v123, 0xd80, v81
	v_or_b32_e32 v124, 0xe80, v81
	v_or_b32_e32 v125, 0xf80, v81
	v_or_b32_e32 v126, 0x1080, v81
	v_or_b32_e32 v127, 0x1180, v81
	v_or_b32_e32 v128, 0x1280, v81
	v_or_b32_e32 v129, 0x1380, v81
	v_or_b32_e32 v130, 0x1480, v81
	v_or_b32_e32 v131, 0x1580, v81
	v_or_b32_e32 v132, 0x1680, v81
	v_or_b32_e32 v133, 0x1780, v81
	v_or_b32_e32 v134, 0x1880, v81
	v_or_b32_e32 v135, 0x1980, v81
	v_or_b32_e32 v136, 0x1a80, v81
	v_or_b32_e32 v137, 0x1b80, v81
	v_or_b32_e32 v138, 0x1c80, v81
	v_or_b32_e32 v139, 0x1d80, v81
	v_or_b32_e32 v140, 0x1e80, v81
	v_or_b32_e32 v141, 0x1f80, v81
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr103
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr105
                                        ; implicit-def: $vgpr106
                                        ; implicit-def: $vgpr107
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr113
                                        ; implicit-def: $vgpr114
                                        ; implicit-def: $vgpr115
                                        ; implicit-def: $vgpr116
                                        ; implicit-def: $vgpr117
                                        ; implicit-def: $vgpr118
                                        ; implicit-def: $vgpr119
                                        ; implicit-def: $vgpr120
                                        ; implicit-def: $vgpr121
                                        ; implicit-def: $vgpr122
                                        ; implicit-def: $vgpr123
                                        ; implicit-def: $vgpr124
                                        ; implicit-def: $vgpr125
                                        ; implicit-def: $vgpr126
                                        ; implicit-def: $vgpr127
                                        ; implicit-def: $vgpr128
                                        ; implicit-def: $vgpr129
                                        ; implicit-def: $vgpr130
                                        ; implicit-def: $vgpr131
                                        ; implicit-def: $vgpr132
                                        ; implicit-def: $vgpr133
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr135
                                        ; implicit-def: $vgpr136
                                        ; implicit-def: $vgpr137
                                        ; implicit-def: $vgpr138
                                        ; implicit-def: $vgpr139
                                        ; implicit-def: $vgpr140
                                        ; implicit-def: $vgpr141
.LBB0_3:                                ; %Flow214
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v2, s34, v74
	v_and_b32_e32 v75, 0xf0, v0
	s_ashr_i32 s1, s12, 5
	v_or_b32_e32 v76, s33, v0
	v_and_b32_e32 v143, 28, v146
	v_mul_lo_u32 v77, v2, s1
	v_lshlrev_b32_e32 v144, 2, v75
	v_lshlrev_b32_e32 v145, 5, v0
	v_lshlrev_b32_e32 v142, 1, v75
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s44, s26, 32
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_and_or_b32 v81, 0x70, v1, v74
	v_dual_mov_b32 v44, 0 :: v_dual_and_b32 v1, 32, v145
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v150, s23, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b32_e32 v82, 0x100, v81
	v_add3_u32 v1, 0, v144, v1
	v_or_b32_e32 v83, 0x200, v81
	v_or_b32_e32 v84, 0x300, v81
	v_or_b32_e32 v85, 0x400, v81
	v_or_b32_e32 v86, 0x500, v81
	v_or_b32_e32 v87, 0x600, v81
	v_or_b32_e32 v88, 0x700, v81
	v_or_b32_e32 v89, 0x800, v81
	v_or_b32_e32 v90, 0x900, v81
	v_or_b32_e32 v91, 0xa00, v81
	v_or_b32_e32 v92, 0xb00, v81
	v_or_b32_e32 v93, 0xc00, v81
	v_or_b32_e32 v94, 0xd00, v81
	v_or_b32_e32 v95, 0xe00, v81
	v_or_b32_e32 v96, 0xf00, v81
	v_or_b32_e32 v79, 0x1000, v81
	v_or_b32_e32 v80, 0x1100, v81
	v_or_b32_e32 v97, 0x1200, v81
	v_or_b32_e32 v98, 0x1300, v81
	v_or_b32_e32 v99, 0x1400, v81
	v_or_b32_e32 v100, 0x1500, v81
	v_or_b32_e32 v101, 0x1600, v81
	v_or_b32_e32 v102, 0x1700, v81
	v_or_b32_e32 v103, 0x1800, v81
	v_or_b32_e32 v104, 0x1900, v81
	v_or_b32_e32 v105, 0x1a00, v81
	v_or_b32_e32 v106, 0x1b00, v81
	v_or_b32_e32 v107, 0x1c00, v81
	v_or_b32_e32 v108, 0x1d00, v81
	v_or_b32_e32 v109, 0x1e00, v81
	v_or_b32_e32 v110, 0x1f00, v81
	v_or_b32_e32 v78, 0x80, v81
	v_or_b32_e32 v111, 0x180, v81
	v_or_b32_e32 v112, 0x280, v81
	v_or_b32_e32 v113, 0x380, v81
	v_or_b32_e32 v114, 0x480, v81
	v_or_b32_e32 v115, 0x580, v81
	v_or_b32_e32 v116, 0x680, v81
	v_or_b32_e32 v117, 0x780, v81
	v_or_b32_e32 v118, 0x880, v81
	v_or_b32_e32 v119, 0x980, v81
	v_or_b32_e32 v120, 0xa80, v81
	v_or_b32_e32 v121, 0xb80, v81
	v_or_b32_e32 v122, 0xc80, v81
	v_or_b32_e32 v123, 0xd80, v81
	v_or_b32_e32 v124, 0xe80, v81
	v_or_b32_e32 v125, 0xf80, v81
	v_or_b32_e32 v126, 0x1080, v81
	v_or_b32_e32 v127, 0x1180, v81
	v_or_b32_e32 v128, 0x1280, v81
	v_or_b32_e32 v129, 0x1380, v81
	v_or_b32_e32 v130, 0x1480, v81
	v_or_b32_e32 v131, 0x1580, v81
	v_or_b32_e32 v132, 0x1680, v81
	v_or_b32_e32 v133, 0x1780, v81
	v_or_b32_e32 v134, 0x1880, v81
	v_or_b32_e32 v135, 0x1980, v81
	v_or_b32_e32 v136, 0x1a80, v81
	v_or_b32_e32 v137, 0x1b80, v81
	v_or_b32_e32 v138, 0x1c80, v81
	v_or_b32_e32 v139, 0x1d80, v81
	v_or_b32_e32 v140, 0x1e80, v81
	v_or_b32_e32 v141, 0x1f80, v81
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v151, v1, v143
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v152, 0, v142
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s12, 0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s11, s1, 3
	s_add_i32 s0, s44, 32
	s_mov_b32 s10, 1
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s50, 0, 0x8000
	s_add_i32 s47, 0, 0x8200
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s11, s11, -3
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s49, s12
	s_mov_b32 s27, s12
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s51, s49
	s_mov_b32 s49, s48
	s_mov_b32 s48, s26
	s_mov_b32 s26, s44
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s44, s27, 5
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_add_nc_u32_e32 v155, s50, v74
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s44, s0, s44
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v154, s51, v81
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_mad_u64_u32 v[9:10], null, s44, s22, v[41:42]
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v156, s49, v81
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s49, s48, 31
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s50, s44, s35
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_lshr_b32 s49, s49, 27
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s50, s50, s33
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s48, s48, s49
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_u16 v153, v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v155 offset:208
	ds_load_u8 v10, v155 offset:192
	ds_load_u8 v11, v155 offset:240
	ds_load_u8 v12, v155 offset:224
	ds_load_u8 v13, v155 offset:144
	ds_load_u8 v14, v155 offset:128
	ds_load_u8 v15, v155 offset:176
	ds_load_u8 v16, v155 offset:160
	ds_load_u8 v17, v155 offset:80
	ds_load_u8 v18, v155 offset:64
	ds_load_u8 v19, v155 offset:112
	ds_load_u8 v20, v155 offset:96
	ds_load_u8 v21, v155
	ds_load_u8 v22, v155 offset:16
	ds_load_u8 v23, v155 offset:32
	ds_load_u8 v24, v155 offset:48
	ds_load_u8 v25, v154 offset:3328
	ds_load_u8 v26, v154 offset:3072
	ds_load_u8 v27, v154 offset:3840
	ds_load_u8 v28, v154 offset:3584
	ds_load_u8 v29, v154 offset:2304
	ds_load_u8 v30, v154 offset:2048
	ds_load_u8 v31, v154 offset:2816
	ds_load_u8 v32, v154 offset:2560
	ds_load_u8 v33, v154 offset:1280
	ds_load_u8 v34, v154 offset:1024
	ds_load_u8 v35, v154 offset:1792
	ds_load_u8 v36, v154 offset:1536
	ds_load_u8 v37, v154 offset:256
	ds_load_u8 v38, v154
	ds_load_u8 v39, v154 offset:768
	ds_load_u8 v40, v154 offset:512
	ds_load_u8 v168, v155 offset:464
	ds_load_u8 v169, v155 offset:448
	ds_load_u8 v172, v155 offset:496
	ds_load_u8 v161, v154 offset:3456
	ds_load_u8 v162, v154 offset:3200
	ds_load_u8 v163, v154 offset:3968
	ds_load_u8 v164, v154 offset:3712
	ds_load_u8 v173, v154 offset:2432
	ds_load_u8 v174, v154 offset:2176
	ds_load_u8 v175, v154 offset:2944
	ds_load_u8 v176, v154 offset:2688
	ds_load_u8 v177, v154 offset:1408
	ds_load_u8 v178, v154 offset:1152
	ds_load_u8 v179, v154 offset:1920
	ds_load_u8 v180, v154 offset:1664
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v11, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v12, v16, v15, 0xc0c0004
	ds_load_u8 v13, v154 offset:896
	ds_load_u8 v14, v154 offset:640
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v15, v156 offset:3328
	ds_load_u8 v16, v156 offset:3072
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v160, v10, 16, v9
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v9, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v10, v20, v19, 0xc0c0004
	v_lshl_or_b32 v159, v12, 16, v11
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v17, v156 offset:3840
	ds_load_u8 v18, v156 offset:3584
	ds_load_u8 v19, v156 offset:2304
	ds_load_u8 v20, v156 offset:2048
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v158, v10, 16, v9
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v9, v21, v22, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v10, v23, v24, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v11, v26, v25, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v22, v156 offset:2560
	ds_load_u8 v24, v156 offset:1280
	ds_load_u8 v26, v156 offset:1024
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v157, v10, 16, v9
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v9, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v10, v36, v35, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v33, v156 offset:3456
	ds_load_u8 v35, v156 offset:3968
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v12, v28, v27, 0xc0c0004
	v_perm_b32 v23, v30, v29, 0xc0c0004
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v9, v38, v37, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v37, v156 offset:3712
	ds_load_u8 v34, v156 offset:3200
	ds_load_u8 v21, v156 offset:2816
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v25, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v27, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v28, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v36, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v38, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v40, v176, v175, 0xc0c0004
	ds_load_u8 v181, v154 offset:384
	ds_load_u8 v182, v154 offset:128
	v_lshl_or_b32 v12, v12, 16, v11
	v_lshl_or_b32 v11, v25, 16, v23
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v23, v156 offset:1792
	ds_load_u8 v25, v156 offset:1536
	ds_load_u8 v29, v156 offset:256
	ds_load_u8 v30, v156
	ds_load_u8 v174, v156 offset:1152
	ds_load_u8 v31, v156 offset:768
	ds_load_u8 v32, v156 offset:512
	ds_load_u8 v39, v156 offset:2432
	ds_load_u8 v161, v156 offset:2176
	ds_load_u8 v162, v156 offset:1408
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v9, v27, 16, v9
	v_lshl_or_b32 v28, v36, 16, v28
	v_lshl_or_b32 v27, v40, 16, v38
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v36, v156 offset:2944
	ds_load_u8 v38, v156 offset:2688
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v14, v156 offset:1920
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v156 offset:1664
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v156 offset:384
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v156 offset:896
	v_perm_b32 v24, v26, v24, 0xc0c0004
	ds_load_u8 v26, v156 offset:640
	ds_load_u8 v20, v156 offset:128
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s48, s48, 5
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v165, s50, v147
	v_add_nc_u32_e32 v166, s50, v148
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	s_add_i32 s50, s50, s23
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s48, s1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v171, v77, s48, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s48, s48, s35
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v164, v76, s48, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v40, v178, v177, 0xc0c0004
	v_perm_b32 v163, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v173, v182, v181, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v23, v25, v23, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v164, 0x80000000, v164, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v176, v155 offset:480
	ds_load_u8 v179, v155 offset:432
	ds_load_u8 v180, v155 offset:416
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v175, v164, s[40:43], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v177, v155 offset:400
	ds_load_u8 v178, v155 offset:384
	ds_load_u8 v181, v155 offset:336
	ds_load_u8 v183, v155 offset:352
	ds_load_u8 v182, v155 offset:320
	ds_load_u8 v184, v155 offset:272
	ds_load_u8 v185, v155 offset:256
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v164, v32, v31, 0xc0c0004
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_perm_b32 v34, v37, v35, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v35, v161, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v36, v38, v36, 0xc0c0004
	v_perm_b32 v37, v174, v162, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v20, v18, 0xc0c0004
	v_perm_b32 v18, v26, v22, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	ds_load_u8 v174, v155 offset:368
	v_lshl_or_b32 v26, v163, 16, v40
	v_lshl_or_b32 v25, v13, 16, v173
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v32, v17, 16, v15
	v_lshl_or_b32 v31, v21, 16, v19
	v_lshl_or_b32 v30, v23, 16, v24
	v_lshl_or_b32 v29, v164, 16, v29
	v_lshl_or_b32 v164, v34, 16, v33
	v_lshl_or_b32 v163, v36, 16, v35
	v_lshl_or_b32 v162, v14, 16, v37
	v_lshl_or_b32 v161, v18, 16, v16
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[17:24], v[9:12], v[157:160], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[157:160], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[33:40], v[29:32], v[157:160], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[161:164], v[157:160], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v1, v155 offset:304
	ds_load_u8 v5, v155 offset:288
	ds_load_u8 v6, v154 offset:7424
	ds_load_u8 v7, v154 offset:7168
	ds_load_u8 v8, v154 offset:7936
	ds_load_u8 v155, v154 offset:7680
	ds_load_u8 v157, v154 offset:6400
	ds_load_u8 v158, v154 offset:6144
	ds_load_u8 v159, v154 offset:6912
	ds_load_u8 v160, v154 offset:6656
	v_perm_b32 v2, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v3, v176, v172, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v162, v178, v177, 0xc0c0004
	v_perm_b32 v163, v180, v179, 0xc0c0004
	ds_load_u8 v161, v154 offset:5376
	ds_load_u8 v164, v154 offset:5632
	ds_load_u8 v169, v154 offset:4352
	ds_load_u8 v177, v154 offset:7296
	v_lshl_or_b32 v4, v3, 16, v2
	v_lshl_or_b32 v3, v163, 16, v162
	ds_load_u8 v162, v154 offset:5120
	ds_load_u8 v163, v154 offset:5888
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v2, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v168, v183, v174, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	ds_load_u8 v176, v154 offset:7552
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v5, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v6, v155, v8, 0xc0c0004
	v_lshl_or_b32 v2, v168, 16, v2
	ds_load_u8 v168, v154 offset:4096
	ds_load_u8 v172, v154 offset:4864
	ds_load_u8 v155, v154 offset:8064
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v158, v160, v159, 0xc0c0004
	ds_load_u8 v159, v154 offset:6528
	ds_load_u8 v174, v154 offset:4608
	ds_load_u8 v157, v154 offset:7808
	v_lshl_or_b32 v8, v6, 16, v5
	v_perm_b32 v173, v185, v184, 0xc0c0004
	v_lshl_or_b32 v7, v158, 16, v7
	ds_load_u8 v158, v154 offset:6272
	ds_load_u8 v160, v154 offset:7040
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v6, v164, v163, 0xc0c0004
	ds_load_u8 v161, v154 offset:6784
	ds_load_u8 v162, v154 offset:5504
	ds_load_u8 v163, v154 offset:5248
	ds_load_u8 v164, v154 offset:6016
	v_lshl_or_b32 v1, v1, 16, v173
	v_lshl_or_b32 v6, v6, 16, v5
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v184, v150, s48, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v5, v168, v169, 0xc0c0004
	ds_load_u8 v168, v154 offset:5760
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s10, s10, 1
	s_mov_b32 s49, s46
	s_cmp_lt_i32 s10, 2
	s_mov_b32 s48, s45
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v169, v174, v172, 0xc0c0004
	ds_load_u8 v172, v154 offset:4480
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v174, v156 offset:7424
	ds_load_u8 v178, v156 offset:7168
	ds_load_u8 v179, v156 offset:7936
	ds_load_u8 v180, v156 offset:7680
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s10, s10, 0
	s_add_i32 s51, s27, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v5, v169, 16, v5
	ds_load_u8 v169, v154 offset:4224
	ds_load_u8 v173, v154 offset:4992
	ds_load_u8 v154, v154 offset:4736
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_lshl_b32 s45, s10, 9
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_lshl_b32 s46, s10, 13
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_add_i32 s45, s45, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[17:24], v[5:8], v[1:4], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v5, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v6, v157, v155, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v155, v156 offset:6144
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v7, v158, v159, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v157, v161, v160, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v161, v156 offset:5376
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v8, v6, 16, v5
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v5, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v6, v168, v164, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v162, v156 offset:5120
	ds_load_u8 v168, v156 offset:4352
	ds_load_u8 v163, v156 offset:5888
	ds_load_u8 v164, v156 offset:5632
	ds_load_u8 v176, v156 offset:6400
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v6, v6, 16, v5
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v5, v169, v172, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v154, v154, v173, 0xc0c0004
	v_lshl_or_b32 v7, v157, 16, v7
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v157, v156 offset:6912
	ds_load_u8 v158, v156 offset:6656
	ds_load_u8 v169, v156 offset:4096
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v20, v20
	v_lshl_or_b32 v5, v154, 16, v5
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v154, v156 offset:4864
	ds_load_u8 v172, v156 offset:4608
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_wmma_i32_16x16x16_iu8 v[9:16], v[5:8], v[1:4], v[9:16] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v7, v156 offset:7552
	ds_load_u8 v8, v156 offset:7296
	ds_load_u8 v173, v156 offset:8064
	ds_load_u8 v177, v156 offset:7808
	v_perm_b32 v5, v178, v174, 0xc0c0004
	v_perm_b32 v6, v180, v179, 0xc0c0004
	ds_load_u8 v174, v156 offset:6528
	ds_load_u8 v178, v156 offset:6272
	ds_load_u8 v180, v156 offset:6016
	ds_load_u8 v181, v156 offset:5760
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v155, v155, v176, 0xc0c0004
	v_lshl_or_b32 v160, v6, 16, v5
	v_perm_b32 v6, v164, v163, 0xc0c0004
	ds_load_u8 v163, v156 offset:5248
	ds_load_u8 v182, v156 offset:4480
	ds_load_u8 v183, v156 offset:4224
	v_perm_b32 v5, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v176, v156 offset:7040
	ds_load_u8 v179, v156 offset:6784
	ds_load_u8 v162, v156 offset:5504
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v158, v6, 16, v5
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v5, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v172, v154, 0xc0c0004
	v_lshl_or_b32 v159, v157, 16, v155
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v177, v173, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v157, v6, 16, v5
	ds_load_u8 v5, v156 offset:4992
	ds_load_u8 v6, v156 offset:4736
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v164, v178, v174, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[33:40], v[157:160], v[1:4], v[33:40] neg_lo:[1,1,0]
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[154:157], v165, s[28:31], 0 offen
	buffer_load_b128 v[158:161], v166, s[28:31], 0 offen
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v165, v8, 16, v7
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v7, 0x80000000, v171, vcc_lo
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	v_perm_b32 v166, v179, v176, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v7, v7, s[36:39], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v163, v8, 16, v162
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v8, 0x80000000, v184, vcc_lo
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v164, v166, 16, v164
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_cvt_f32_i32_e32 v6, v38
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_add_i32 s46, s46, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v167, s50, v147
	v_add_nc_u32_e32 v170, s50, v148
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v162, 16, v175
	s_mov_b32 s50, s47
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v7, v20
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1
	buffer_load_b128 v[166:169], v167, s[28:31], 0 offen
	buffer_load_b128 v[170:173], v170, s[28:31], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v7, v21
	ds_store_b32 v151, v162 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v174, v8, s[40:43], 0 offen
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v8, v183, v182, 0xc0c0004
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v18, v7, v18
	v_mul_f32_e32 v17, v7, v17
	v_mul_f32_e32 v19, v7, v19
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v38, v6, v7
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v162, v5, 16, v8
	v_cvt_f32_i32_e32 v5, v37
	v_cvt_f32_i32_e32 v8, v39
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v23, v7, v23 :: v_dual_add_nc_u32 v176, s46, v149
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[25:32], v[162:165], v[1:4], v[25:32] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v33
	v_cvt_f32_i32_e32 v2, v34
	v_cvt_f32_i32_e32 v3, v35
	v_cvt_f32_i32_e32 v4, v36
	v_cvt_f32_i32_e32 v33, v40
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v36, v4, v7 :: v_dual_add_nc_u32 v175, s45, v146
	v_mul_f32_e32 v34, v2, v7
	v_mul_f32_e32 v35, v1, v7
	v_mul_f32_e32 v37, v3, v7
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v22, v7, v22 :: v_dual_mul_f32 v33, v33, v7
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v39, v5, v7 :: v_dual_mul_f32 v24, v7, v24
	v_mul_f32_e32 v25, v25, v7
	v_dual_mul_f32 v40, v8, v7 :: v_dual_mul_f32 v177, v7, v14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v162, v7, v10 :: v_dual_mul_f32 v29, v29, v7
	v_dual_mul_f32 v163, v7, v9 :: v_dual_mul_f32 v26, v26, v7
	v_mul_f32_e32 v13, v7, v13
	v_mul_f32_e32 v164, v7, v12
	v_mul_f32_e32 v165, v7, v11
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v28, v28, v7
	v_mul_f32_e32 v27, v27, v7
	v_mul_f32_e32 v30, v30, v7
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v178, v7, v16
	v_mul_f32_e32 v179, v7, v15
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v32, v32, v7
	v_mul_f32_e32 v31, v31, v7
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[1:4], v152 offset:33792
	ds_load_b128 v[5:8], v152 offset:33808
	ds_load_b128 v[9:12], v152 offset:34304
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_add_i32 s47, s45, 0x8000
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_add_i32 s45, s46, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s27, s11
	s_mov_b32 s27, s51
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v67, v17, v1 :: v_dual_fmac_f32 v68, v18, v2
	v_dual_fmac_f32 v63, v19, v3 :: v_dual_fmac_f32 v64, v20, v4
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	ds_load_b128 v[1:4], v152 offset:34320
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v59, v21, v5 :: v_dual_fmac_f32 v60, v22, v6
	v_dual_fmac_f32 v56, v24, v8 :: v_dual_fmac_f32 v51, v163, v9
	v_dual_fmac_f32 v52, v162, v10 :: v_dual_fmac_f32 v47, v165, v11
	v_fmac_f32_e32 v55, v23, v7
	v_fmac_f32_e32 v49, v164, v12
	v_fmac_f32_e32 v45, v13, v1
	v_fmac_f32_e32 v46, v177, v2
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v42, v178, v4 :: v_dual_lshlrev_b32 v1, 16, v174
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v151, v1 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v152 offset:33792
	ds_load_b128 v[9:12], v152 offset:33808
	ds_load_b128 v[13:16], v152 offset:34304
	ds_load_b128 v[17:20], v152 offset:34320
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v43, v179, v3
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	ds_store_b16 v175, v153 offset:32768
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	ds_store_b128 v176, v[154:157]
	ds_store_b128 v176, v[158:161] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	ds_store_b128 v176, v[166:169] offset:16384
	ds_store_b128 v176, v[170:173] offset:20480
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(8)
	v_dual_fmac_f32 v44, v35, v5 :: v_dual_fmac_f32 v73, v34, v6
	s_waitcnt lgkmcnt(7)
	v_fmac_f32_e32 v66, v33, v12
	s_waitcnt lgkmcnt(6)
	v_dual_fmac_f32 v71, v37, v7 :: v_dual_fmac_f32 v62, v26, v14
	v_dual_fmac_f32 v72, v36, v8 :: v_dual_fmac_f32 v69, v39, v9
	v_fmac_f32_e32 v58, v28, v16
	v_dual_fmac_f32 v70, v38, v10 :: v_dual_fmac_f32 v65, v40, v11
	s_waitcnt lgkmcnt(5)
	v_dual_fmac_f32 v54, v30, v18 :: v_dual_fmac_f32 v61, v25, v13
	v_fmac_f32_e32 v48, v31, v19
	v_dual_fmac_f32 v57, v27, v15 :: v_dual_fmac_f32 v50, v32, v20
	v_fmac_f32_e32 v53, v29, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_add_i32 s50, 0, 0x8000
	s_add_i32 s47, 0, 0x8200
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v44, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_7:                                ; %._crit_edge
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v16, s50, v74
	.loc	1 316 26 is_stmt 1              ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v33, 0, 1, s3
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	ds_load_u8_d16 v17, v16
	ds_load_u8_d16 v18, v16 offset:16
	ds_load_u8_d16 v19, v16 offset:32
	ds_load_u8_d16 v20, v16 offset:48
	ds_load_u8_d16 v21, v16 offset:64
	ds_load_u8_d16 v22, v16 offset:80
	ds_load_u8_d16 v23, v16 offset:96
	ds_load_u8_d16 v24, v16 offset:112
	ds_load_u8_d16 v25, v16 offset:128
	ds_load_u8_d16 v26, v16 offset:144
	ds_load_u8_d16 v27, v16 offset:160
	ds_load_u8_d16 v28, v16 offset:176
	ds_load_u8_d16 v29, v16 offset:192
	ds_load_u8_d16 v30, v16 offset:208
	ds_load_u8_d16 v31, v16 offset:224
	ds_load_u8_d16 v32, v16 offset:240
	ds_load_u8_d16 v1, v16 offset:256
	ds_load_u8_d16 v2, v16 offset:272
	ds_load_u8_d16 v3, v16 offset:288
	ds_load_u8_d16 v4, v16 offset:304
	ds_load_u8_d16 v5, v16 offset:320
	ds_load_u8_d16 v6, v16 offset:336
	ds_load_u8_d16 v7, v16 offset:352
	ds_load_u8_d16 v8, v16 offset:368
	ds_load_u8_d16 v9, v16 offset:384
	ds_load_u8_d16 v10, v16 offset:400
	ds_load_u8_d16 v11, v16 offset:416
	ds_load_u8_d16 v12, v16 offset:432
	ds_load_u8_d16 v13, v16 offset:448
	ds_load_u8_d16 v14, v16 offset:464
	ds_load_u8_d16 v15, v16 offset:480
	ds_load_u8_d16 v16, v16 offset:496
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s0, 1, v33
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v35, s49, v94
	v_add_nc_u32_e32 v36, s49, v93
	v_add_nc_u32_e32 v33, s49, v96
	v_add_nc_u32_e32 v39, s49, v90
	v_add_nc_u32_e32 v37, s49, v92
	v_add_nc_u32_e32 v38, s49, v91
	v_add_nc_u32_e32 v40, s49, v89
	v_add_nc_u32_e32 v164, s49, v88
	v_add_nc_u32_e32 v165, s49, v87
	v_add_nc_u32_e32 v166, s49, v86
	v_add_nc_u32_e32 v167, s49, v85
	v_add_nc_u32_e32 v168, s49, v84
	v_add_nc_u32_e32 v196, s49, v83
	v_add_nc_u32_e32 v197, s49, v82
	v_add_nc_u32_e32 v198, s49, v81
	v_add_nc_u32_e32 v34, s49, v95
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v199, v35
	ds_load_u8 v200, v36
	ds_load_u8 v201, v33
	ds_load_u8 v39, v39
	ds_load_u8 v40, v40
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	ds_load_u8 v202, v34
	ds_load_u8 v166, v166
	ds_load_u8 v167, v167
	ds_load_u8 v164, v164
	ds_load_u8 v197, v197
	ds_load_u8 v198, v198
	ds_load_u8 v168, v168
	ds_load_u8 v196, v196
	ds_load_u8 v165, v165
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v149, s49, v108
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v33, v29, v30, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v34, v31, v32, 0xc0c0004
	v_perm_b32 v35, v25, v26, 0xc0c0004
	v_perm_b32 v204, v27, v28, 0xc0c0004
	v_perm_b32 v205, v21, v22, 0xc0c0004
	v_perm_b32 v206, v23, v24, 0xc0c0004
	v_perm_b32 v207, v17, v18, 0xc0c0004
	v_perm_b32 v208, v19, v20, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v199, v200, v199, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v153, s49, v107
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v200, v202, v201, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v147, s49, v110
	v_add_nc_u32_e32 v156, s49, v104
	v_add_nc_u32_e32 v148, s49, v109
	v_add_nc_u32_e32 v157, s49, v103
	v_add_nc_u32_e32 v203, s49, v80
	v_add_nc_u32_e32 v154, s49, v106
	v_add_nc_u32_e32 v155, s49, v105
	v_add_nc_u32_e32 v158, s49, v102
	v_add_nc_u32_e32 v159, s49, v101
	v_add_nc_u32_e32 v160, s49, v100
	v_add_nc_u32_e32 v161, s49, v99
	v_add_nc_u32_e32 v162, s49, v98
	v_add_nc_u32_e32 v163, s49, v97
	v_add_nc_u32_e32 v209, s49, v79
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v36, v34, 16, v33
	v_lshl_or_b32 v35, v204, 16, v35
	v_lshl_or_b32 v34, v206, 16, v205
	v_lshl_or_b32 v33, v208, 16, v207
	v_perm_b32 v39, v40, v39, 0xc0c0004
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v38, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	v_perm_b32 v165, v198, v197, 0xc0c0004
	v_perm_b32 v166, v196, v168, 0xc0c0004
	v_lshl_or_b32 v40, v200, 16, v199
	ds_load_u8 v149, v149
	ds_load_u8 v196, v153
	ds_load_u8 v147, v147
	ds_load_u8 v197, v156
	ds_load_u8 v198, v157
	ds_load_u8 v199, v154
	ds_load_u8 v200, v155
	ds_load_u8 v148, v148
	ds_load_u8 v201, v160
	ds_load_u8 v202, v161
	ds_load_u8 v204, v158
	ds_load_u8 v203, v203
	ds_load_u8 v205, v209
	ds_load_u8 v206, v162
	ds_load_u8 v207, v163
	ds_load_u8 v208, v159
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v183, s49, v123
	s_mov_b32 s12, 0
	v_add_nc_u32_e32 v184, s49, v122
	v_add_nc_u32_e32 v181, s49, v125
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_mov_b32 s19, s12
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v149, v196, v149, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v187, s49, v119
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	v_perm_b32 v148, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v197, v202, v201, 0xc0c0004
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_dual_mov_b32 v160, s19 :: v_dual_add_nc_u32 v41, s49, v141
	v_dual_mov_b32 v157, s16 :: v_dual_add_nc_u32 v150, s49, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v198, v208, v204, 0xc0c0004
	v_dual_mov_b32 v158, s17 :: v_dual_add_nc_u32 v151, s49, v138
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s49, v133
	v_add_nc_u32_e32 v174, s49, v132
	v_add_nc_u32_e32 v175, s49, v131
	v_add_nc_u32_e32 v176, s49, v130
	v_add_nc_u32_e32 v177, s49, v129
	v_add_nc_u32_e32 v178, s49, v128
	v_add_nc_u32_e32 v179, s49, v127
	v_add_nc_u32_e32 v180, s49, v126
	v_add_nc_u32_e32 v182, s49, v124
	v_add_nc_u32_e32 v185, s49, v121
	v_add_nc_u32_e32 v186, s49, v120
	v_add_nc_u32_e32 v188, s49, v118
	v_add_nc_u32_e32 v189, s49, v117
	v_add_nc_u32_e32 v190, s49, v116
	v_add_nc_u32_e32 v191, s49, v115
	v_add_nc_u32_e32 v192, s49, v114
	v_add_nc_u32_e32 v193, s49, v113
	v_add_nc_u32_e32 v194, s49, v112
	v_add_nc_u32_e32 v195, s49, v111
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v159, s18 :: v_dual_add_nc_u32 v146, s49, v140
	v_dual_mov_b32 v156, s15 :: v_dual_add_nc_u32 v169, s49, v137
	v_dual_mov_b32 v155, s14 :: v_dual_add_nc_u32 v170, s49, v136
	v_dual_mov_b32 v154, s13 :: v_dual_add_nc_u32 v171, s49, v135
	v_dual_mov_b32 v153, s12 :: v_dual_add_nc_u32 v172, s49, v134
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v213, s49, v78
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v196, v200, v199, 0xc0c0004
	v_lshl_or_b32 v149, v147, 16, v149
	v_lshl_or_b32 v147, v198, 16, v197
	ds_load_u8 v183, v183
	ds_load_u8 v184, v184
	ds_load_u8 v181, v181
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v185, v185
	ds_load_u8 v186, v186
	ds_load_u8 v182, v182
	ds_load_u8 v191, v191
	ds_load_u8 v192, v192
	ds_load_u8 v189, v189
	ds_load_u8 v195, v195
	ds_load_u8 v197, v213
	ds_load_u8 v193, v193
	ds_load_u8 v194, v194
	ds_load_u8 v190, v190
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v41, v41
	ds_load_u8 v198, v171
	ds_load_u8 v199, v172
	ds_load_u8 v200, v169
	ds_load_u8 v201, v170
	ds_load_u8 v202, v146
	ds_load_u8 v175, v175
	ds_load_u8 v176, v176
	ds_load_u8 v173, v173
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v177, v177
	ds_load_u8 v178, v178
	ds_load_u8 v174, v174
	v_lshl_or_b32 v39, v37, 16, v39
	v_lshl_or_b32 v38, v164, 16, v38
	v_lshl_or_b32 v37, v166, 16, v165
	v_perm_b32 v209, v13, v14, 0xc0c0004
	v_perm_b32 v210, v15, v16, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v169, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v170, v182, v181, 0xc0c0004
	v_perm_b32 v171, v188, v187, 0xc0c0004
	v_perm_b32 v181, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v182, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v183, v190, v189, 0xc0c0004
	v_perm_b32 v184, v197, v195, 0xc0c0004
	v_perm_b32 v185, v194, v193, 0xc0c0004
	v_perm_b32 v211, v9, v10, 0xc0c0004
	v_perm_b32 v212, v11, v12, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[161:168], v[37:40], v[33:36], v[153:160] neg_lo:[1,1,0]
	v_lshl_or_b32 v40, v210, 16, v209
	v_perm_b32 v37, v5, v6, 0xc0c0004
	v_perm_b32 v38, v7, v8, 0xc0c0004
	v_perm_b32 v209, v1, v2, 0xc0c0004
	v_perm_b32 v210, v3, v4, 0xc0c0004
	v_lshl_or_b32 v148, v196, 16, v148
	v_perm_b32 v196, v205, v203, 0xc0c0004
	v_perm_b32 v146, v207, v206, 0xc0c0004
	v_lshl_or_b32 v172, v170, 16, v169
	v_lshl_or_b32 v171, v181, 16, v171
	v_lshl_or_b32 v170, v183, 16, v182
	v_lshl_or_b32 v169, v185, 16, v184
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v41, v202, v41, 0xc0c0004
	v_perm_b32 v151, v199, v198, 0xc0c0004
	v_perm_b32 v181, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	v_perm_b32 v174, v180, v179, 0xc0c0004
	v_perm_b32 v176, v178, v177, 0xc0c0004
	v_lshl_or_b32 v39, v212, 16, v211
	v_lshl_or_b32 v38, v38, 16, v37
	v_lshl_or_b32 v37, v210, 16, v209
	v_lshl_or_b32 v146, v146, 16, v196
	v_wmma_i32_16x16x16_iu8 v[153:160], v[169:172], v[33:36], v[153:160] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v41, 16, v150
	v_lshl_or_b32 v35, v181, 16, v151
	v_lshl_or_b32 v34, v173, 16, v175
	v_lshl_or_b32 v33, v176, 16, v174
	v_wmma_i32_16x16x16_iu8 v[161:168], v[146:149], v[37:40], v[161:168] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[33:36], v[37:40], v[153:160] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v149, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v150, v164
	v_cvt_f32_i32_e32 v39, v165
	v_cvt_f32_i32_e32 v147, v166
	v_cvt_f32_i32_e32 v40, v167
	v_cvt_f32_i32_e32 v148, v168
	v_cvt_f32_i32_e32 v37, v153
	v_cvt_f32_i32_e32 v41, v154
	v_cvt_f32_i32_e32 v38, v155
	v_cvt_f32_i32_e32 v146, v156
	v_cvt_f32_i32_e32 v33, v157
	v_cvt_f32_i32_e32 v35, v158
	v_cvt_f32_i32_e32 v34, v159
	v_cvt_f32_i32_e32 v36, v160
	v_cvt_f32_i32_e32 v151, v161
	v_cvt_f32_i32_e32 v153, v162
.LBB0_9:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v154, 0
	v_mov_b32_e32 v156, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v200, s48, v94
	v_add_nc_u32_e32 v201, s48, v93
	v_add_nc_u32_e32 v198, s48, v96
	v_add_nc_u32_e32 v204, s48, v90
	v_add_nc_u32_e32 v199, s48, v95
	v_add_nc_u32_e32 v202, s48, v92
	v_add_nc_u32_e32 v203, s48, v91
	v_add_nc_u32_e32 v205, s48, v89
	v_add_nc_u32_e32 v206, s48, v88
	v_add_nc_u32_e32 v207, s48, v87
	v_add_nc_u32_e32 v208, s48, v86
	v_add_nc_u32_e32 v209, s48, v85
	v_add_nc_u32_e32 v210, s48, v84
	v_add_nc_u32_e32 v211, s48, v83
	v_add_nc_u32_e32 v212, s48, v82
	v_add_nc_u32_e32 v213, s48, v81
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v200, v200
	ds_load_u8 v201, v201
	ds_load_u8 v198, v198
	ds_load_u8 v204, v204
	ds_load_u8 v205, v205
	ds_load_u8 v202, v202
	ds_load_u8 v203, v203
	ds_load_u8 v199, v199
	ds_load_u8 v208, v208
	ds_load_u8 v209, v209
	ds_load_u8 v206, v206
	ds_load_u8 v212, v212
	ds_load_u8 v213, v213
	ds_load_u8 v210, v210
	ds_load_u8 v211, v211
	ds_load_u8 v207, v207
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v186, s48, v108
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v26, v27, v28, 0xc0c0004
	v_perm_b32 v17, v17, v18, 0xc0c0004
	v_perm_b32 v18, v19, v20, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v187, s48, v107
	v_add_nc_u32_e32 v184, s48, v110
	v_add_nc_u32_e32 v190, s48, v104
	v_add_nc_u32_e32 v185, s48, v109
	v_add_nc_u32_e32 v188, s48, v106
	v_add_nc_u32_e32 v189, s48, v105
	v_add_nc_u32_e32 v191, s48, v103
	v_add_nc_u32_e32 v192, s48, v102
	v_add_nc_u32_e32 v193, s48, v101
	v_add_nc_u32_e32 v194, s48, v100
	v_add_nc_u32_e32 v195, s48, v99
	v_add_nc_u32_e32 v196, s48, v98
	v_add_nc_u32_e32 v197, s48, v97
	v_add_nc_u32_e32 v214, s48, v80
	v_add_nc_u32_e32 v19, s48, v79
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v27, v26, 16, v25
	v_lshl_or_b32 v25, v18, 16, v17
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v199, v198, 0xc0c0004
	ds_load_u8 v186, v186
	ds_load_u8 v187, v187
	ds_load_u8 v184, v184
	ds_load_u8 v190, v190
	ds_load_u8 v191, v191
	ds_load_u8 v188, v188
	ds_load_u8 v189, v189
	ds_load_u8 v185, v185
	ds_load_u8 v194, v194
	ds_load_u8 v195, v195
	ds_load_u8 v192, v192
	ds_load_u8 v198, v214
	ds_load_u8 v199, v19
	ds_load_u8 v196, v196
	ds_load_u8 v197, v197
	ds_load_u8 v193, v193
	v_perm_b32 v29, v29, v30, 0xc0c0004
	v_perm_b32 v30, v31, v32, 0xc0c0004
	v_perm_b32 v21, v21, v22, 0xc0c0004
	v_perm_b32 v22, v23, v24, 0xc0c0004
	v_perm_b32 v17, v201, v200, 0xc0c0004
	v_perm_b32 v20, v205, v204, 0xc0c0004
	v_lshl_or_b32 v28, v30, 16, v29
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v23, v207, v206, 0xc0c0004
	v_lshl_or_b32 v26, v22, 16, v21
	v_perm_b32 v21, v203, v202, 0xc0c0004
	v_perm_b32 v22, v209, v208, 0xc0c0004
	v_perm_b32 v24, v213, v212, 0xc0c0004
	v_perm_b32 v29, v211, v210, 0xc0c0004
	s_mov_b32 s12, 0
	v_lshl_or_b32 v32, v18, 16, v17
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v155, s48, v139
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v31, v21, 16, v20
	v_lshl_or_b32 v30, v23, 16, v22
	v_lshl_or_b32 v29, v29, 16, v24
	v_mov_b32_e32 v24, s19
	v_dual_mov_b32 v23, s18 :: v_dual_add_nc_u32 v152, s48, v141
	v_dual_mov_b32 v21, s16 :: v_dual_add_nc_u32 v154, s48, v140
	v_dual_mov_b32 v19, s14 :: v_dual_add_nc_u32 v156, s48, v138
	v_dual_mov_b32 v22, s17 :: v_dual_add_nc_u32 v157, s48, v137
	v_dual_mov_b32 v17, s12 :: v_dual_add_nc_u32 v158, s48, v136
	v_dual_mov_b32 v20, s15 :: v_dual_add_nc_u32 v159, s48, v135
	v_dual_mov_b32 v18, s13 :: v_dual_add_nc_u32 v161, s48, v133
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v171, s48, v123
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v5, v5, v6, 0xc0c0004
	v_perm_b32 v6, v7, v8, 0xc0c0004
	v_perm_b32 v1, v1, v2, 0xc0c0004
	v_perm_b32 v2, v3, v4, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v185, v184, 0xc0c0004
	v_perm_b32 v7, v191, v190, 0xc0c0004
	v_perm_b32 v8, v189, v188, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v172, s48, v122
	v_add_nc_u32_e32 v169, s48, v125
	v_add_nc_u32_e32 v175, s48, v119
	v_add_nc_u32_e32 v160, s48, v134
	v_add_nc_u32_e32 v162, s48, v132
	v_add_nc_u32_e32 v163, s48, v131
	v_add_nc_u32_e32 v164, s48, v130
	v_add_nc_u32_e32 v165, s48, v129
	v_add_nc_u32_e32 v166, s48, v128
	v_add_nc_u32_e32 v167, s48, v127
	v_add_nc_u32_e32 v168, s48, v126
	v_add_nc_u32_e32 v170, s48, v124
	v_add_nc_u32_e32 v173, s48, v121
	v_add_nc_u32_e32 v174, s48, v120
	v_add_nc_u32_e32 v176, s48, v118
	v_add_nc_u32_e32 v177, s48, v117
	v_add_nc_u32_e32 v178, s48, v116
	v_add_nc_u32_e32 v179, s48, v115
	v_add_nc_u32_e32 v180, s48, v114
	v_add_nc_u32_e32 v181, s48, v113
	v_add_nc_u32_e32 v182, s48, v112
	v_add_nc_u32_e32 v183, s48, v111
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v200, v13, v14, 0xc0c0004
	v_perm_b32 v201, v15, v16, 0xc0c0004
	v_perm_b32 v202, v9, v10, 0xc0c0004
	v_perm_b32 v203, v11, v12, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v204, s48, v78
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[25:28], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v30, v6, 16, v5
	v_lshl_or_b32 v4, v4, 16, v3
	v_lshl_or_b32 v3, v8, 16, v7
	ds_load_u8 v5, v171
	ds_load_u8 v6, v172
	ds_load_u8 v7, v169
	ds_load_u8 v8, v175
	ds_load_u8 v169, v176
	ds_load_u8 v171, v173
	ds_load_u8 v172, v174
	ds_load_u8 v170, v170
	ds_load_u8 v173, v179
	ds_load_u8 v174, v180
	ds_load_u8 v175, v177
	ds_load_u8 v176, v183
	ds_load_u8 v177, v204
	ds_load_u8 v179, v181
	ds_load_u8 v180, v182
	ds_load_u8 v178, v178
	ds_load_u8 v155, v155
	ds_load_u8 v156, v156
	ds_load_u8 v152, v152
	ds_load_u8 v159, v159
	ds_load_u8 v160, v160
	ds_load_u8 v157, v157
	ds_load_u8 v158, v158
	ds_load_u8 v154, v154
	ds_load_u8 v163, v163
	ds_load_u8 v164, v164
	ds_load_u8 v161, v161
	ds_load_u8 v167, v167
	ds_load_u8 v168, v168
	ds_load_u8 v165, v165
	ds_load_u8 v166, v166
	ds_load_u8 v162, v162
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v6, v170, v7, 0xc0c0004
	v_perm_b32 v7, v169, v8, 0xc0c0004
	v_perm_b32 v169, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v170, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v171, v178, v175, 0xc0c0004
	v_perm_b32 v172, v177, v176, 0xc0c0004
	v_perm_b32 v173, v180, v179, 0xc0c0004
	v_perm_b32 v184, v195, v194, 0xc0c0004
	v_perm_b32 v185, v193, v192, 0xc0c0004
	v_lshl_or_b32 v29, v2, 16, v1
	v_perm_b32 v1, v199, v198, 0xc0c0004
	v_perm_b32 v181, v197, v196, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	v_lshl_or_b32 v7, v169, 16, v7
	v_lshl_or_b32 v6, v171, 16, v170
	v_lshl_or_b32 v5, v173, 16, v172
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v152, v154, v152, 0xc0c0004
	v_perm_b32 v154, v160, v159, 0xc0c0004
	v_perm_b32 v156, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v157, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v162, v161, 0xc0c0004
	v_perm_b32 v159, v168, v167, 0xc0c0004
	v_perm_b32 v160, v166, v165, 0xc0c0004
	v_lshl_or_b32 v32, v201, 16, v200
	v_lshl_or_b32 v31, v203, 16, v202
	v_lshl_or_b32 v2, v185, 16, v184
	v_lshl_or_b32 v1, v181, 16, v1
	v_wmma_i32_16x16x16_iu8 v[17:24], v[5:8], v[25:28], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v152, 16, v155
	v_lshl_or_b32 v7, v156, 16, v154
	v_lshl_or_b32 v6, v158, 16, v157
	v_lshl_or_b32 v5, v160, 16, v159
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[5:8], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v168, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v165, v11
	v_cvt_f32_i32_e32 v167, v12
	v_cvt_f32_i32_e32 v163, v13
	v_cvt_f32_i32_e32 v166, v14
	v_cvt_f32_i32_e32 v161, v15
	v_cvt_f32_i32_e32 v164, v16
	v_cvt_f32_i32_e32 v159, v17
	v_cvt_f32_i32_e32 v162, v18
	v_cvt_f32_i32_e32 v157, v19
	v_cvt_f32_i32_e32 v160, v20
	v_cvt_f32_i32_e32 v155, v21
	v_cvt_f32_i32_e32 v158, v22
	v_cvt_f32_i32_e32 v154, v23
	v_cvt_f32_i32_e32 v156, v24
	v_cvt_f32_i32_e32 v152, v9
.LBB0_11:
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 27
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s26, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s26, s10
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s27, s11
	.loc	1 334 40 is_stmt 0              ; generate_amdgcn.py:334:40
	s_mul_i32 s4, s0, s35
	.loc	1 331 34 is_stmt 1              ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt lgkmcnt(15)
	v_add_lshl_u32 v1, v77, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt lgkmcnt(14)
	v_add_lshl_u32 v2, v76, s4, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(13)
	v_and_b32_e32 v3, 32, v145
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	v_add3_u32 v185, s33, s23, v0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add3_u32 v3, 0, v144, v3
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v184, v1, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt lgkmcnt(12)
	v_add_lshl_u32 v4, v185, s4, 1
	v_dual_mov_b32 v182, 0 :: v_dual_add_nc_u32 v143, v3, v143
	v_dual_mov_b32 v183, 0 :: v_dual_add_nc_u32 v142, 0, v142
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v17, s47, v74
	v_mov_b32_e32 v144, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v175, 0
	v_mov_b32_e32 v169, 0
	v_mov_b32_e32 v171, 0
	s_mov_b32 s12, 0
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v179, 0 :: v_dual_lshlrev_b32 v2, 16, v2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v143, v2 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v1, v3, s[24:27], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[13:16], v142 offset:33792
	ds_load_b128 v[9:12], v142 offset:33808
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[5:8], v142 offset:34304
	ds_load_b128 v[1:4], v142 offset:34320
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v143, v18 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	ds_load_u8_d16 v217, v17
	ds_load_u8_d16 v218, v17 offset:16
	ds_load_u8_d16 v219, v17 offset:32
	ds_load_u8_d16 v220, v17 offset:48
	ds_load_u8_d16 v221, v17 offset:64
	ds_load_u8_d16 v222, v17 offset:80
	ds_load_u8_d16 v223, v17 offset:96
	ds_load_u8_d16 v224, v17 offset:112
	ds_load_u8_d16 v225, v17 offset:128
	ds_load_u8_d16 v226, v17 offset:144
	ds_load_u8_d16 v227, v17 offset:160
	ds_load_u8_d16 v228, v17 offset:176
	ds_load_u8_d16 v229, v17 offset:192
	ds_load_u8_d16 v230, v17 offset:208
	ds_load_u8_d16 v231, v17 offset:224
	ds_load_u8_d16 v232, v17 offset:240
	ds_load_u8_d16 v201, v17 offset:256
	ds_load_u8_d16 v202, v17 offset:272
	ds_load_u8_d16 v203, v17 offset:288
	ds_load_u8_d16 v204, v17 offset:304
	ds_load_u8_d16 v205, v17 offset:320
	ds_load_u8_d16 v206, v17 offset:336
	ds_load_u8_d16 v207, v17 offset:352
	ds_load_u8_d16 v208, v17 offset:368
	ds_load_u8_d16 v209, v17 offset:384
	ds_load_u8_d16 v210, v17 offset:400
	ds_load_u8_d16 v211, v17 offset:416
	ds_load_u8_d16 v212, v17 offset:432
	ds_load_u8_d16 v213, v17 offset:448
	ds_load_u8_d16 v214, v17 offset:464
	ds_load_u8_d16 v215, v17 offset:480
	ds_load_u8_d16 v216, v17 offset:496
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_cbranch_vccnz .LBB0_13
; %bb.12:
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v21, v229, v230, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v22, v231, v232, 0xc0c0004
	v_perm_b32 v23, v225, v226, 0xc0c0004
	v_perm_b32 v24, v227, v228, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v19, s46, v94
	v_add_nc_u32_e32 v20, s46, v93
	v_add_nc_u32_e32 v17, s46, v96
	v_add_nc_u32_e32 v18, s46, v95
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v172, v22, 16, v21
	v_lshl_or_b32 v171, v24, 16, v23
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v21, s46, v91
	v_add_nc_u32_e32 v22, s46, v90
	v_add_nc_u32_e32 v23, s46, v89
	v_add_nc_u32_e32 v25, s46, v92
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	ds_load_u8 v24, v25
	ds_load_u8 v21, v21
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v25, s46, v86
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v26, v221, v222, 0xc0c0004
	v_perm_b32 v27, v223, v224, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v145, v213, v214, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v170, v27, 16, v26
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v20, s46, v85
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	v_perm_b32 v18, v217, v218, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	v_perm_b32 v23, v219, v220, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v24, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v24, s46, v88
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v176, v17, 16, v19
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v17, s46, v87
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v25, v25
	ds_load_u8 v20, v20
	v_lshl_or_b32 v169, v23, 16, v18
	ds_load_u8 v18, v24
	ds_load_u8 v17, v17
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v19, s46, v82
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v175, v21, 16, v22
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v21, s46, v81
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v19, v19
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v20, v25, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v18, s46, v84
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v174, v17, 16, v20
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v17, s46, v83
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v20, s46, v123
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v21, v19, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v21, s46, v122
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v20, v20
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v18, s46, v125
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v173, v17, 16, v19
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v17, s46, v124
	v_add_nc_u32_e32 v19, s46, v119
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v21, s46, v118
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	ds_load_u8 v19, v19
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v18, s46, v121
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v21, v19, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v21, s46, v120
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v18, v18
	ds_load_u8 v21, v21
	v_lshl_or_b32 v180, v17, 16, v20
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v17, s46, v115
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v18, v21, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v18, 16, v19
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v18, s46, v114
	v_add_nc_u32_e32 v19, s46, v116
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v18, v18
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v18, s46, v117
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v19, s46, v112
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v178, v18, 16, v17
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v17, s46, v111
	v_add_nc_u32_e32 v18, s46, v78
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v19, v19
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v18, s46, v113
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v177, v18, 16, v17
	v_dual_mov_b32 v24, s19 :: v_dual_mov_b32 v23, s18
	v_dual_mov_b32 v22, s17 :: v_dual_mov_b32 v21, s16
	v_dual_mov_b32 v20, s15 :: v_dual_mov_b32 v19, s14
	v_dual_mov_b32 v18, s13 :: v_dual_mov_b32 v17, s12
	v_wmma_i32_16x16x16_iu8 v[25:32], v[173:176], v[169:172], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[177:180], v[169:172], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v169, v215, v216, 0xc0c0004
	v_perm_b32 v170, v209, v210, 0xc0c0004
	v_perm_b32 v171, v211, v212, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s46, v138
	v_add_nc_u32_e32 v174, s46, v140
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v172, v169, 16, v145
	v_perm_b32 v145, v205, v206, 0xc0c0004
	v_perm_b32 v169, v207, v208, 0xc0c0004
	v_lshl_or_b32 v171, v171, 16, v170
	ds_load_u8 v173, v173
	ds_load_u8 v174, v174
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v176, s46, v136
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v170, v169, 16, v145
	v_perm_b32 v145, v201, v202, 0xc0c0004
	v_perm_b32 v169, v203, v204, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v175, s46, v134
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v176, v176
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v177, s46, v128
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v169, v169, 16, v145
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v145, s46, v139
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v175, v175
	ds_load_u8 v177, v177
	ds_load_u8 v145, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v173, v145, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s46, v141
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v174, s46, v135
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v174, v174
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v175, s46, v137
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v175, v175
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	v_lshl_or_b32 v176, v173, 16, v145
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v145, s46, v131
	v_add_nc_u32_e32 v173, s46, v130
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v175, v175, 16, v174
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v174, s46, v132
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v145, v145
	ds_load_u8 v173, v173
	ds_load_u8 v174, v174
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v145, v173, v145, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s46, v133
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v173, 16, v145
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v145, s46, v127
	v_add_nc_u32_e32 v173, s46, v126
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v145, v145
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v173, v145, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s46, v129
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v177, v173, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v177, s46, v97
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v173, v173, 16, v145
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v145, s46, v108
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v177, v177
	v_wmma_i32_16x16x16_iu8 v[17:24], v[173:176], v[169:172], v[17:24] neg_lo:[1,1,0]
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s46, v107
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v145, v145
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v174, s46, v109
	v_add_nc_u32_e32 v176, s46, v105
	v_add_nc_u32_e32 v175, s46, v103
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v173, v173
	ds_load_u8 v174, v174
	ds_load_u8 v176, v176
	ds_load_u8 v175, v175
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v145, v173, v145, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s46, v110
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v174, s46, v104
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v174, v174
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v175, s46, v106
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v175, v175
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	v_lshl_or_b32 v176, v173, 16, v145
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v145, s46, v100
	v_add_nc_u32_e32 v173, s46, v99
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v175, v175, 16, v174
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v174, s46, v101
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v145, v145
	ds_load_u8 v173, v173
	ds_load_u8 v174, v174
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v145, v173, v145, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s46, v102
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v173, 16, v145
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v145, s46, v80
	v_add_nc_u32_e32 v173, s46, v79
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v145, v145
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v173, v145, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s46, v98
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v177, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v173, v173, 16, v145
	v_cvt_f32_i32_e32 v145, v21
	v_wmma_i32_16x16x16_iu8 v[25:32], v[173:176], v[169:172], v[25:32] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v172, v17
	v_cvt_f32_i32_e32 v174, v18
	v_cvt_f32_i32_e32 v173, v19
	v_cvt_f32_i32_e32 v175, v20
	v_cvt_f32_i32_e32 v170, v22
	v_cvt_f32_i32_e32 v169, v23
	v_cvt_f32_i32_e32 v171, v24
	v_cvt_f32_i32_e32 v179, v27
	v_cvt_f32_i32_e32 v181, v28
	v_cvt_f32_i32_e32 v176, v29
	v_cvt_f32_i32_e32 v178, v30
	v_cvt_f32_i32_e32 v177, v31
	v_cvt_f32_i32_e32 v180, v32
	v_cvt_f32_i32_e32 v182, v25
	v_cvt_f32_i32_e32 v183, v26
.LBB0_13:
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_b128 v[29:32], v142 offset:33792
	ds_load_b128 v[25:28], v142 offset:33808
	ds_load_b128 v[21:24], v142 offset:34304
	ds_load_b128 v[17:20], v142 offset:34320
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v191, 0
	v_mov_b32_e32 v186, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_15
; %bb.14:
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v94, s45, v94
	v_add_nc_u32_e32 v93, s45, v93
	v_add_nc_u32_e32 v96, s45, v96
	v_add_nc_u32_e32 v90, s45, v90
	v_add_nc_u32_e32 v95, s45, v95
	v_add_nc_u32_e32 v92, s45, v92
	v_add_nc_u32_e32 v91, s45, v91
	v_add_nc_u32_e32 v89, s45, v89
	v_add_nc_u32_e32 v88, s45, v88
	v_add_nc_u32_e32 v87, s45, v87
	v_add_nc_u32_e32 v86, s45, v86
	v_add_nc_u32_e32 v85, s45, v85
	v_add_nc_u32_e32 v84, s45, v84
	v_add_nc_u32_e32 v83, s45, v83
	v_add_nc_u32_e32 v82, s45, v82
	v_add_nc_u32_e32 v81, s45, v81
	v_add_nc_u32_e32 v108, s45, v108
	v_add_nc_u32_e32 v144, s45, v102
	v_add_nc_u32_e32 v187, s45, v100
	v_add_nc_u32_e32 v188, s45, v99
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v94, v94
	ds_load_u8 v93, v93
	ds_load_u8 v99, v96
	ds_load_u8 v90, v90
	ds_load_u8 v89, v89
	ds_load_u8 v92, v92
	ds_load_u8 v91, v91
	ds_load_u8 v100, v95
	ds_load_u8 v86, v86
	ds_load_u8 v85, v85
	ds_load_u8 v88, v88
	ds_load_u8 v82, v82
	ds_load_u8 v81, v81
	ds_load_u8 v84, v84
	ds_load_u8 v83, v83
	ds_load_u8 v87, v87
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v95, v229, v230, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v96, v231, v232, 0xc0c0004
	v_perm_b32 v102, v221, v222, 0xc0c0004
	v_perm_b32 v191, v223, v224, 0xc0c0004
	v_perm_b32 v192, v217, v218, 0xc0c0004
	v_perm_b32 v193, v219, v220, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v107, s45, v107
	v_add_nc_u32_e32 v110, s45, v110
	v_add_nc_u32_e32 v104, s45, v104
	v_add_nc_u32_e32 v109, s45, v109
	v_add_nc_u32_e32 v106, s45, v106
	v_add_nc_u32_e32 v105, s45, v105
	v_add_nc_u32_e32 v103, s45, v103
	v_add_nc_u32_e32 v186, s45, v101
	v_add_nc_u32_e32 v189, s45, v98
	v_add_nc_u32_e32 v190, s45, v97
	v_add_nc_u32_e32 v80, s45, v80
	v_add_nc_u32_e32 v79, s45, v79
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v98, v96, 16, v95
	v_lshl_or_b32 v96, v191, 16, v102
	v_lshl_or_b32 v95, v193, 16, v192
	ds_load_u8 v108, v108
	ds_load_u8 v107, v107
	ds_load_u8 v110, v110
	ds_load_u8 v104, v104
	ds_load_u8 v103, v103
	ds_load_u8 v106, v106
	ds_load_u8 v105, v105
	ds_load_u8 v109, v109
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v144, v144
	ds_load_u8 v191, v80
	ds_load_u8 v192, v79
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	ds_load_u8 v186, v186
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v85, v85, v86, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v86, v87, v88, 0xc0c0004
	v_perm_b32 v81, v81, v82, 0xc0c0004
	v_perm_b32 v82, v83, v84, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v123, s45, v123
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v107, v107, v108, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v122, s45, v122
	v_add_nc_u32_e32 v125, s45, v125
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v103, v103, v104, 0xc0c0004
	s_mov_b32 s19, s12
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v104, v105, v106, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v108, v109, v110, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v119, s45, v119
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v109, v188, v187, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v186, v144, 0xc0c0004
	s_mov_b32 s18, s12
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v141, s45, v141
	v_add_nc_u32_e32 v137, s45, v137
	v_add_nc_u32_e32 v136, s45, v136
	v_add_nc_u32_e32 v135, s45, v135
	v_add_nc_u32_e32 v134, s45, v134
	v_add_nc_u32_e32 v133, s45, v133
	v_add_nc_u32_e32 v132, s45, v132
	v_add_nc_u32_e32 v131, s45, v131
	v_add_nc_u32_e32 v130, s45, v130
	v_add_nc_u32_e32 v129, s45, v129
	v_add_nc_u32_e32 v128, s45, v128
	v_add_nc_u32_e32 v127, s45, v127
	v_add_nc_u32_e32 v126, s45, v126
	v_add_nc_u32_e32 v124, s45, v124
	v_add_nc_u32_e32 v121, s45, v121
	v_add_nc_u32_e32 v120, s45, v120
	v_add_nc_u32_e32 v118, s45, v118
	v_add_nc_u32_e32 v117, s45, v117
	v_add_nc_u32_e32 v116, s45, v116
	v_add_nc_u32_e32 v115, s45, v115
	v_add_nc_u32_e32 v114, s45, v114
	v_add_nc_u32_e32 v113, s45, v113
	v_add_nc_u32_e32 v112, s45, v112
	v_add_nc_u32_e32 v111, s45, v111
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v93, v93, v94, 0xc0c0004
	v_perm_b32 v94, v100, v99, 0xc0c0004
	v_lshl_or_b32 v100, v86, 16, v85
	v_lshl_or_b32 v99, v82, 16, v81
	v_mov_b32_e32 v86, s19
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v78, s45, v78
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v85, s18 :: v_dual_add_nc_u32 v140, s45, v140
	v_dual_mov_b32 v84, s17 :: v_dual_add_nc_u32 v139, s45, v139
	v_dual_mov_b32 v83, s16 :: v_dual_add_nc_u32 v138, s45, v138
	v_dual_mov_b32 v82, s15 :: v_dual_mov_b32 v81, s14
	v_dual_mov_b32 v80, s13 :: v_dual_mov_b32 v79, s12
	v_lshl_or_b32 v106, v108, 16, v107
	v_lshl_or_b32 v105, v104, 16, v103
	v_lshl_or_b32 v104, v110, 16, v109
	ds_load_u8 v107, v123
	ds_load_u8 v108, v122
	ds_load_u8 v109, v125
	ds_load_u8 v110, v119
	ds_load_u8 v118, v118
	ds_load_u8 v119, v121
	ds_load_u8 v120, v120
	ds_load_u8 v121, v124
	ds_load_u8 v115, v115
	ds_load_u8 v114, v114
	ds_load_u8 v117, v117
	ds_load_u8 v111, v111
	ds_load_u8 v78, v78
	ds_load_u8 v113, v113
	ds_load_u8 v112, v112
	ds_load_u8 v116, v116
	ds_load_u8 v122, v139
	ds_load_u8 v123, v138
	ds_load_u8 v124, v141
	ds_load_u8 v125, v135
	ds_load_u8 v134, v134
	ds_load_u8 v135, v137
	ds_load_u8 v136, v136
	ds_load_u8 v137, v140
	ds_load_u8 v131, v131
	ds_load_u8 v130, v130
	ds_load_u8 v133, v133
	ds_load_u8 v127, v127
	ds_load_u8 v126, v126
	ds_load_u8 v129, v129
	ds_load_u8 v128, v128
	ds_load_u8 v132, v132
	v_perm_b32 v97, v225, v226, 0xc0c0004
	v_perm_b32 v101, v227, v228, 0xc0c0004
	v_perm_b32 v89, v89, v90, 0xc0c0004
	v_perm_b32 v90, v91, v92, 0xc0c0004
	v_lshl_or_b32 v102, v94, 16, v93
	v_perm_b32 v193, v213, v214, 0xc0c0004
	v_lshl_or_b32 v97, v101, 16, v97
	v_perm_b32 v194, v215, v216, 0xc0c0004
	v_lshl_or_b32 v101, v90, 16, v89
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v108, v121, v109, 0xc0c0004
	v_perm_b32 v109, v118, v110, 0xc0c0004
	v_perm_b32 v118, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v114, v114, v115, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v115, v116, v117, 0xc0c0004
	v_perm_b32 v78, v78, v111, 0xc0c0004
	v_perm_b32 v111, v112, v113, 0xc0c0004
	v_perm_b32 v195, v209, v210, 0xc0c0004
	v_perm_b32 v196, v211, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[87:94], v[99:102], v[95:98], v[79:86] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v194, 16, v193
	v_perm_b32 v99, v205, v206, 0xc0c0004
	v_perm_b32 v100, v207, v208, 0xc0c0004
	v_perm_b32 v193, v201, v202, 0xc0c0004
	v_perm_b32 v194, v203, v204, 0xc0c0004
	v_perm_b32 v103, v192, v191, 0xc0c0004
	v_perm_b32 v138, v190, v189, 0xc0c0004
	v_lshl_or_b32 v110, v108, 16, v107
	v_lshl_or_b32 v109, v118, 16, v109
	v_lshl_or_b32 v108, v115, 16, v114
	v_lshl_or_b32 v107, v111, 16, v78
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v78, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v111, v137, v124, 0xc0c0004
	v_perm_b32 v112, v134, v125, 0xc0c0004
	v_perm_b32 v113, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v114, v130, v131, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v132, v133, 0xc0c0004
	v_perm_b32 v116, v126, v127, 0xc0c0004
	v_perm_b32 v117, v128, v129, 0xc0c0004
	v_lshl_or_b32 v101, v196, 16, v195
	v_lshl_or_b32 v100, v100, 16, v99
	v_lshl_or_b32 v99, v194, 16, v193
	v_lshl_or_b32 v103, v138, 16, v103
	v_wmma_i32_16x16x16_iu8 v[79:86], v[107:110], v[95:98], v[79:86] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v111, 16, v78
	v_lshl_or_b32 v97, v113, 16, v112
	v_lshl_or_b32 v96, v115, 16, v114
	v_lshl_or_b32 v95, v117, 16, v116
	v_wmma_i32_16x16x16_iu8 v[87:94], v[103:106], v[99:102], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[79:86], v[95:98], v[99:102], v[79:86] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v144, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v197, v88
	v_cvt_f32_i32_e32 v195, v89
	v_cvt_f32_i32_e32 v200, v90
	v_cvt_f32_i32_e32 v188, v91
	v_cvt_f32_i32_e32 v194, v92
	v_cvt_f32_i32_e32 v192, v93
	v_cvt_f32_i32_e32 v198, v94
	v_cvt_f32_i32_e32 v190, v79
	v_cvt_f32_i32_e32 v196, v80
	v_cvt_f32_i32_e32 v193, v81
	v_cvt_f32_i32_e32 v199, v82
	v_cvt_f32_i32_e32 v186, v83
	v_cvt_f32_i32_e32 v189, v84
	v_cvt_f32_i32_e32 v187, v85
	v_cvt_f32_i32_e32 v191, v86
.LBB0_15:
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s44, 31
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s26, s10
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_lshr_b32 s0, s0, 27
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s27, s11
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s0, s44, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v74, s23, v74
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s34, s34, s23
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s35
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v77, v77, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v76, v76, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v78, v185, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v79, 16, v0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v77, 0x80000000, v77 :: v_dual_cndmask_b32 v76, 0x80000000, v76
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v75, 1, v75
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v76, v76, s[24:27], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v77, v77, s[8:11], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v74, s34, s33, v74
	s_mov_b32 s15, 0x76543210
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v143, v76 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v76, v78, s[24:27], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v78.l, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e64 v78.h, v184.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v0, 0x5410
	v_mov_b32_e32 v80, 0x7632
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v88.h, v78.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v108, v37, v78
	v_mul_f32_e32 v115, v35, v78
	v_mul_f32_e32 v36, v36, v78
	v_mul_f32_e32 v119, v34, v78
	v_mul_f32_e32 v100, v39, v78
	v_mul_f32_e32 v107, v41, v78
	v_mul_f32_e32 v111, v146, v78
	v_mul_f32_e32 v112, v38, v78
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v5, v108, v5, v51
	v_fma_f32 v2, v115, v2, v46
	v_fma_f32 v3, v119, v3, v43
	v_fma_f32 v4, v36, v4, v42
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v113, v158, v78
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v9, v100, v9, v59
	v_fma_f32 v6, v107, v6, v52
	v_fma_f32 v7, v112, v7, v47
	v_fma_f32 v8, v111, v8, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v51, v5, s3
	v_cndmask_b32_e64 v46, v46, v2, s3
	v_cndmask_b32_e64 v42, v42, v4, s3
	v_cndmask_b32_e64 v43, v43, v3, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[2:5], v142 offset:33792
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v90, v152, v78
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v92, v151, v78
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v117, v156, v78
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v18, v113, v18, v54
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v59, v9, s3
	v_cndmask_b32_e64 v52, v52, v6, s3
	v_cndmask_b32_e64 v49, v49, v8, s3
	v_cndmask_b32_e64 v47, v47, v7, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[6:9], v142 offset:33808
	v_mul_f32_e32 v91, v153, v78
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v93, v167, v78
	v_mul_f32_e32 v94, v165, v78
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v95, v150, v78
	v_mul_f32_e32 v96, v149, v78
	v_mul_f32_e32 v99, v147, v78
	v_mul_f32_e32 v103, v148, v78
	v_mul_f32_e32 v104, v40, v78
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v105, v162, v78
	v_mul_f32_e32 v106, v159, v78
	v_mul_f32_e32 v118, v154, v78
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v29, v90, v29, v44
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v13, v92, v13, v67
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v20, v117, v20, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v54, v18, s3
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v54, 16, v77
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v114, v155, v78
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v14, v91, v14, v68
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v32, v93, v32, v72
	v_fma_f32 v31, v94, v31, v71
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v15, v96, v15, v63
	v_fma_f32 v16, v95, v16, v64
	v_fma_f32 v10, v99, v10, v60
	v_fma_f32 v11, v104, v11, v55
	v_fma_f32 v12, v103, v12, v56
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v22, v105, v22, v62
	v_fma_f32 v21, v106, v21, v61
	v_fma_f32 v19, v118, v19, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v44, v29, s3
	v_cndmask_b32_e64 v44, v67, v13, s3
	v_cndmask_b32_e64 v20, v50, v20, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v50, v182, v54
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v97, v166, v78
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v17, v114, v17, v53
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v68, v14, s3
	v_cndmask_b32_e64 v32, v72, v32, s3
	v_cndmask_b32_e64 v31, v71, v31, s3
	v_cndmask_b32_e64 v64, v64, v16, s3
	v_cndmask_b32_e64 v63, v63, v15, s3
	v_cndmask_b32_e64 v60, v60, v10, s3
	v_cndmask_b32_e64 v56, v56, v12, s3
	v_cndmask_b32_e64 v55, v55, v11, s3
	v_cndmask_b32_e64 v22, v62, v22, s3
	v_cndmask_b32_e64 v21, v61, v21, s3
	v_cndmask_b32_e64 v19, v48, v19, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v48, v183, v54
	v_mul_f32_e32 v61, v181, v54
	v_mul_f32_e32 v62, v179, v54
	v_mul_f32_e32 v67, v178, v54
	v_mul_f32_e32 v68, v176, v54
	v_mul_f32_e32 v71, v180, v54
	v_mul_f32_e32 v72, v177, v54
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v50, v50, v2, v44
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v53, v17, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[10:13], v142 offset:34304
	ds_load_b128 v[14:17], v142 offset:34320
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v48, v48, v3, v36
	v_fma_f32 v62, v62, v4, v63
	v_fma_f32 v61, v61, v5, v64
	v_fma_f32 v68, v68, v6, v59
	v_fma_f32 v67, v67, v7, v60
	v_fma_f32 v72, v72, v8, v55
	v_fma_f32 v71, v71, v9, v56
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v98, v163, v78
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v116, v33, v78
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v89, v168, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v87.h, v78.l
	v_mov_b16_e32 v86.h, v78.l
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v25, v98, v25, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v85.h, v78.l
	v_mov_b16_e32 v84.h, v78.l
	v_mov_b16_e32 v83.h, v78.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v101, v164, v78
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v69, v25, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v69, v194, v54
	v_mul_f32_e32 v102, v161, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v82.h, v78.l
	v_mov_b16_e32 v81.h, v78.l
	v_mov_b16_e32 v41.h, v78.l
	v_mov_b16_e32 v40.h, v78.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v109, v160, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.h, v78.l
	v_mov_b16_e32 v37.h, v78.l
	v_mov_b16_e32 v38.h, v78.l
	v_mov_b16_e32 v35.h, v78.l
	v_mov_b16_e32 v34.h, v78.l
	v_mov_b16_e32 v33.h, v78.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v77, v172, v54
	v_mul_f32_e32 v90, v175, v54
	v_mul_f32_e32 v91, v173, v54
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v27, v102, v27, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v94, v170, v54
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v77, v77, v10, v51
	v_fma_f32 v90, v90, v13, v49
	v_fma_f32 v91, v91, v12, v47
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v95, v145, v54
	v_mul_f32_e32 v98, v171, v54
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v50, s2
	v_cndmask_b32_e64 v50, v63, v62, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v99, v169, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v65, v27, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v94, v94, v15, v46
	v_fma_f32 v98, v98, v17, v42
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v24, v109, v24, v58
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v92, v199, v54
	v_mul_f32_e32 v96, v189, v54
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v30, v89, v30, v73
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v65, v200, v54
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v58, v24, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v89, v190, v54
	v_mul_f32_e32 v100, v191, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v73, v30, s3
	v_cndmask_b32_e64 v42, v42, v98, s2
	v_cndmask_b32_e64 v49, v49, v90, s2
	v_cndmask_b32_e64 v47, v47, v91, s2
	v_cndmask_b32_e64 v36, v36, v48, s2
	v_cndmask_b32_e64 v48, v64, v61, s2
	v_cndmask_b32_e64 v60, v60, v67, s2
	v_cndmask_b32_e64 v59, v59, v68, s2
	v_cndmask_b32_e64 v56, v56, v71, s2
	v_cndmask_b32_e64 v55, v55, v72, s2
	v_cndmask_b32_e64 v51, v51, v77, s2
	v_cndmask_b32_e64 v46, v46, v94, s2
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v76
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v26, v97, v26, v70
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v97, v186, v54
	ds_store_b32 v143, v2 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v142 offset:33792
	ds_load_b128 v[6:9], v142 offset:33808
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v70, v26, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v70, v188, v54
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v5, v65, v5, v32
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v7, v69, v7, v26
	v_fma_f32 v6, v70, v6, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v32, v5, s2
	v_cndmask_b32_e64 v7, v26, v7, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v110, v157, v78
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v78, v116, v1, v45
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v1, v74, v75, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v75, v174, v54
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v74, v192, v54
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v23, v110, v23, v57
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v78, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v78, v196, v54
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v75, v75, v11, v52
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[10:13], v142 offset:34304
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v8, v74, v8, v27
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v76, v95, v14, v45
	v_fma_f32 v95, v99, v16, v43
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[14:17], v142 offset:34320
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v52, v75, s2
	v_cndmask_b32_e64 v8, v27, v8, s2
	v_cndmask_b32_e64 v23, v57, v23, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v57, v197, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v76, s2
	v_cndmask_b32_e64 v43, v43, v95, s2
	v_cndmask_b32_e64 v6, v25, v6, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v11, v78, v11, v22
	v_fma_f32 v13, v92, v13, v24
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v15, v96, v15, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v22, v11, s2
	v_cndmask_b32_e64 v13, v24, v13, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v8
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v28, v101, v28, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v18, v15, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v27, 0xbfb8aa3b, v11
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v17, v100, v17, v20
	v_fma_f32 v14, v97, v14, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v66, v28, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v66, v195, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v20, v17, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v53, v14, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v4, v66, v4, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, s7
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s7
	v_mul_f32_e32 v53, 0xbfb8aa3b, v17
	v_cndmask_b32_e64 v24, 0, 0x42800000, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v31, v4, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v11
	v_mul_f32_e32 v31, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v53
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v8
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s6
	v_exp_f32_e32 v27, v27
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v31
	v_cndmask_b32_e64 v53, 0, 0x42800000, s13
	v_exp_f32_e32 v24, v24
	v_mul_f32_e32 v20, 0xbfb8aa3b, v4
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v31, 0, 0x42800000, s11
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s11
	v_dual_fmac_f32 v53, 0xbfb8aa3b, v17 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v27, v27, v66
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v53, v53
	v_ldexp_f32 v24, v24, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v31
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v27, v27, v11
	v_div_scale_f32 v75, s7, v11, v27, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v53, v53, v72
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v108, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v31, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v24, v24, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, s4
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s4
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v107, v72
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v124, -v74, v108, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v92, null, v31, v31, v15
	v_div_scale_f32 v96, null, v53, v53, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v108, v124, v108
	v_rcp_f32_e32 v112, v92
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v123, -v72, v107, 1.0
	v_rcp_f32_e32 v114, v96
	v_div_scale_f32 v97, s13, v17, v53, v17
	v_mul_f32_e32 v124, v75, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v107, v123, v107
	v_fma_f32 v140, -v74, v124, v75
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v93, v193, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v128, -v92, v112, 1.0
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v73, v198, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v130, -v96, v114, 1.0
	v_fmac_f32_e32 v124, v140, v108
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v12, v93, v12, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v112, v128, v112
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v9, v73, v9, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v93, s11, v15, v31, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v23, v12, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v28, v9, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v128, v93, v112
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	v_mul_f32_e32 v25, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v28
	v_cndmask_b32_e64 v23, 0, 0x42800000, s3
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v25
	v_cndmask_b32_e64 v28, 0, 0x42800000, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v7
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v12
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v9
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v23, v23, v62
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v58, v144, v54
	v_mul_f32_e32 v54, v187, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v144, -v92, v128, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v28, v28, v69
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v2, v58, v2, v29
	v_fma_f32 v16, v54, v16, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v25, v25, v64
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v23, v23, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v19, v16, s2
	v_cndmask_b32_e64 v2, v29, v2, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v90, null, v28, v28, v12
	v_div_scale_f32 v91, s10, v12, v28, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v32, 0xbfb8aa3b, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v111, v90
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v104, v66
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v128, v144, v112
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v25, v25, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0x42800000, s14
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v127, -v90, v111, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, s9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v120, -v66, v104, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v111, v127, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v29, 0xbfb8aa3b, v13 :: v_dual_fmac_f32 v104, v120, v104
	v_exp_f32_e32 v32, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v106, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v127, v91, v111
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v143, -v90, v127, v91
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v32, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, s6, v8, v24, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v122, -v70, v106, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v3, v57, v3, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v123, v73, v107
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v127, v143, v111
	v_div_scale_f32 v98, null, v32, v32, v16
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v30, v3, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v99, s14, v16, v32, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v115, v98
	v_fma_f32 v139, -v72, v123, v73
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v78, null, v29, v29, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v123, v139, v107
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v110, v78
	v_fma_f32 v131, -v98, v115, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v2
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v115, v131, v115
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v126, -v78, v110, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v131, v99, v115
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v147, -v98, v131, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v110, v126, v110 :: v_dual_fmac_f32 v131, v147, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v19, v19, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v18, v18, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v54, null, v19, v19, v3
	v_div_scale_f32 v57, vcc_lo, v3, v19, v3
	v_rcp_f32_e32 v100, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v116, -v54, v100, 1.0
	v_fmac_f32_e32 v100, v116, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v116, v57, v100
	v_fma_f32 v132, -v54, v116, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v116, v132, v100
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v10, v89, v10, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v89, s9, v13, v29, v13
	v_fma_f32 v54, -v54, v116, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v21, v10, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v20
	v_mul_f32_e32 v21, 0xbfb8aa3b, v5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v54, v54, v100, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v10
	v_cndmask_b32_e64 v20, 0, 0x42800000, s2
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v54, v19, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v26
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v114, v130, v114
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v26, 0, 0x42800000, s8
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s8
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v36, v3 :: v_dual_fmac_f32 v26, 0xbfb8aa3b, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v88.l, v3.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v61
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v21, v21, v58
	v_ldexp_f32 v26, v26, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v20, v20, v4
	v_div_scale_f32 v65, s2, v4, v20, v4
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v103, v64
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, s3, v7, v23, v7
	v_div_scale_f32 v76, null, v26, v26, v10
	v_div_scale_f32 v77, s8, v10, v26, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v62, null, v21, v21, v5
	v_fma_f32 v119, -v64, v103, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v109, v76
	v_mul_f32_e32 v120, v67, v104
	v_rcp_f32_e32 v102, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v103, v119, v103
	v_fma_f32 v136, -v66, v120, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v119, v65, v103
	v_fma_f32 v125, -v76, v109, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v120, v136, v104
	v_fma_f32 v118, -v62, v102, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v135, -v64, v119, v65
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_fmac_f32 v109, v125, v109
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v30, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v102, v118, v102 :: v_dual_fmac_f32 v119, v135, v103
	v_div_scale_f32 v58, null, v18, v18, v2
	v_div_scale_f32 v61, s0, v2, v18, v2
	v_mul_f32_e32 v125, v77, v109
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v101, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v3, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v141, -v76, v125, v77
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v30, 0, 0x42800000, s12
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v125, v141, v109
	v_fma_f32 v117, -v58, v101, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v101, v117, v101
	v_mul_f32_e32 v117, v61, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v58, v117, v61
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v30, 0xbfb8aa3b, v14 :: v_dual_fmac_f32 v117, v133, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v30, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v58, v117, v61
	v_fma_f32 v61, -v64, v119, v65
	v_fma_f32 v65, -v72, v123, v73
	v_fma_f32 v73, -v98, v131, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v57, v57, v101, v117
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v30, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, s5, v9, v25, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v2, v57, v18, v2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v44, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v94, null, v30, v30, v14
	v_div_scale_f32 v95, s12, v14, v30, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v87.l, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v113, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v129, -v94, v113, 1.0
	v_dual_fmac_f32 v113, v129, v113 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v129, v95, v113
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v145, -v94, v129, v95
	v_dual_fmac_f32 v106, v122, v106 :: v_dual_fmac_f32 v129, v145, v113
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v22, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, s1, v5, v21, v5
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v118, v63, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v68, null, v22, v22, v6
	v_fma_f32 v134, -v62, v118, v63
	v_div_scale_f32 v69, s4, v6, v22, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v105, v68
	v_fmac_f32_e32 v118, v134, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v58, -v62, v118, v63
	v_fma_f32 v62, -v66, v120, v67
	v_fma_f32 v66, -v74, v124, v75
	v_fma_f32 v121, -v68, v105, 1.0
	v_fma_f32 v67, -v76, v125, v77
	v_div_fmas_f32 v58, v58, v102, v118
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v105, v121, v105
	v_div_fmas_f32 v19, v61, v103, v119
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v58, v21, v5
	v_div_fmas_f32 v18, v62, v104, v120
	v_mul_f32_e32 v121, v69, v105
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v19, v20, v4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v48, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v18, v23, v7
	v_mul_f32_e32 v122, v71, v106
	v_fma_f32 v137, -v68, v121, v69
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v50, v4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v86.l, v5.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v60, v7
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v138, -v70, v122, v71
	v_fmac_f32_e32 v121, v137, v105
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v85.l, v4.h
	v_cmp_o_f32_e64 s2, v5, v5
	v_mov_b16_e32 v84.l, v7.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v122, v138, v106
	v_fma_f32 v63, -v68, v121, v69
	v_fma_f32 v69, -v90, v127, v91
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v4, v4
	v_cmp_o_f32_e64 s4, v7, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v64, -v70, v122, v71
	v_div_fmas_f32 v21, v63, v105, v121
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v70, -v92, v128, v93
	v_fma_f32 v71, -v94, v129, v95
	v_div_fmas_f32 v19, v64, v106, v122
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v21, v22, v6
	v_div_fmas_f32 v18, v65, v107, v123
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v9, v19, v25, v9
	v_div_fmas_f32 v20, v66, v108, v124
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v126, v89, v110
	v_div_fmas_f32 v19, v67, v109, v125
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v56, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v20, v27, v11
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v20, 1, v87
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v18, v24, v8
	v_div_fixup_f32 v10, v19, v26, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v88
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v142, -v78, v126, v89
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v2, v20, 0x7fff
	v_mov_b16_e32 v82.l, v9.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v51, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v3, v18, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s1
	v_and_b32_e32 v2, 1, v82
	v_mov_b16_e32 v40.l, v10.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v126, v142, v110
	s_mov_b32 vcc_lo, s9
	v_dual_mul_f32 v130, v97, v114 :: v_dual_mul_f32 v11, v52, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v9, v2, 0x7fff
	v_and_b32_e32 v9, 1, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v78, v126, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v146, -v96, v130, v97
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v8, v55, v8 :: v_dual_and_b32 v19, 1, v86
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v85
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v21, v68, v110, v126
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v5, v5, v19, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v22, v69, v111, v127
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v13, v21, v29, v13
	v_div_fmas_f32 v23, v70, v112, v128
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v12, v22, v28, v12
	v_div_fmas_f32 v21, v71, v113, v129
	s_mov_b32 vcc_lo, s13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v81.l, v8.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v15, v23, v31, v15
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v12, v47, v12 :: v_dual_mul_f32 v13, v49, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v14, v21, v30, v14
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v20, 1, v84
	v_add3_u32 v4, v4, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v37.l, v12.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v130, v146, v114
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.l, v11.h
	v_and_b32_e32 v18, 1, v81
	v_mov_b16_e32 v39.l, v13.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v45, v14
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v72, -v96, v130, v97
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v7, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v8, v8
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v15, v46, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v22, v72, v114, v130
	s_mov_b32 vcc_lo, s14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v4, 1, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v23, v73, v115, v131
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v8, v8, v18, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v22, v53, v17
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v59, v6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.l, v14.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v23, v32, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v17, v42, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v83.l, v6.h
	v_cmp_o_f32_e64 s5, v6, v6
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v16, v43, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s4
	v_cmp_eq_u32_e64 s4, 0, v79
	v_and_b32_e32 v19, 1, v83
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s2
	v_cmp_o_f32_e64 s1, v13, v13
	v_mov_b16_e32 v38.l, v15.h
	v_add3_u32 v6, v6, v19, 0x7fff
	v_add3_u32 v4, v11, v4, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_and_b32_e32 v11, 1, v37
	v_mov_b16_e32 v34.l, v17.h
	v_cndmask_b16 v7.l, 0x7fff, v6.h, s5
	v_and_b32_e32 v6, 1, v39
	v_cndmask_b16 v2.l, 0x7fff, v8.h, s7
	v_mov_b16_e32 v33.l, v16.h
	v_cndmask_b32_e64 v0, 0x1054, v0, s4
	v_and_b32_e32 v8, 1, v38
	v_add3_u32 v6, v13, v6, 0x7fff
	v_and_b32_e32 v13, 1, v35
	v_cmp_o_f32_e64 s0, v10, v10
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cndmask_b32_e64 v10, v7, v3, s4
	v_cndmask_b32_e64 v3, v3, v7, s4
	v_cndmask_b32_e64 v7, 0x3276, v80, s4
	v_lshl_or_b32 v0, v0, 8, v0
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s0
	v_and_b32_e32 v9, 1, v34
	v_cmp_o_f32_e64 s2, v12, v12
	v_add3_u32 v11, v12, v11, 0x7fff
	v_cndmask_b32_e64 v12, v2, v5, s4
	v_cndmask_b32_e64 v2, v5, v2, s4
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s1
	v_and_b32_e32 v6, 1, v33
	v_lshl_or_b32 v7, v7, 8, v7
	v_cmp_o_f32_e64 s3, v15, v15
	v_cmp_o_f32_e64 s5, v14, v14
	v_cmp_o_f32_e64 s6, v17, v17
	v_cmp_o_f32_e64 s7, v16, v16
	v_add3_u32 v8, v15, v8, 0x7fff
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v11.h, s2
	v_add3_u32 v9, v17, v9, 0x7fff
	v_permlanex16_b32 v11, v2, s15, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v2, v16, v6, 0x7fff
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v6, 0x760076, v7
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v8.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s6
	v_cndmask_b16 v7.l, 0x7fff, v2.h, s7
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v2, v6, 4, v6
	v_cndmask_b32_e64 v9, v8, v4, s4
	v_cndmask_b32_e64 v4, v4, v8, s4
	v_cndmask_b32_e64 v6, v5, v7, s4
	v_permlanex16_b32 v3, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x5040504, v0
	v_and_b32_e32 v13, 0x7060706, v2
	v_cndmask_b32_e64 v14, v7, v5, s4
	v_permlanex16_b32 v7, v4, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v6, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v3, v10, v0
	v_perm_b32 v3, v3, v10, v13
	v_perm_b32 v4, v11, v12, v0
	v_perm_b32 v5, v11, v12, v13
	v_perm_b32 v6, v7, v9, v0
	v_perm_b32 v7, v7, v9, v13
	v_perm_b32 v8, v15, v14, v0
	v_perm_b32 v9, v15, v14, v13
	s_clause 0x1
	buffer_store_b128 v[2:5], v1, s[20:23], 0 offen
	buffer_store_b128 v[6:9], v1, s[20:23], 0 offen offset:256
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 233
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20012
; TotalNumSgprs: 54
; NumVgprs: 233
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 54
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     233
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
