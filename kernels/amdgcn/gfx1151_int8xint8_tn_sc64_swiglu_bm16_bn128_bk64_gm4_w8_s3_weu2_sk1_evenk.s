	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v127, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v126, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v27, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v125, 15, v0
	v_or_b32_e32 v129, 0x3f0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v48, 0, v127
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v4, 12, v126
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v24, 0, v126
	s_mov_b32 s27, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
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
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s13, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v2, s22, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
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
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v127
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s31, s7
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_mul_i32 s18, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s6, s18
	s_xor_b32 s18, s2, s16
	s_add_i32 s13, s6, s13
	s_ashr_i32 s18, s18, 31
	s_mul_hi_u32 s13, s14, s13
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s13, s17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
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
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s14, s12, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s12, s13, s18
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s26, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s12, s18
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s23, 1
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s12, s3, s16
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[25:26], null, s34, v3, v[1:2]
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s12
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s13, s14, 31
.Ltmp15:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s3, 7
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s12, s2, 4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s2, s13, 26
.Ltmp17:
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v26, v2, v4, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s13, s14, s2
.Ltmp19:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s15, s34, s26
	v_lshl_add_u32 v128, s23, 6, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 63
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s16, s22, s26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s15, s33, s15
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x7f
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v1, s16, v26
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s15, v25
	v_add_nc_u32_e32 v3, s15, v128
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s18, s23, 7
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s17, s22, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s15, s15, s18
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 346 30 is_stmt 0              ; generate_amdgcn.py:346:30
	v_add3_u32 v4, s16, s17, v26
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s23, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v7, s15, v25
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v3, s3
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v3, s23, v3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s15, v128
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v22, v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 358 39 is_stmt 0              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v4, s23, v7
	v_add3_u32 v9, s15, s23, v128
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[10:13], v5, s[28:31], 0 offen
	buffer_load_b128 v[14:17], v6, s[28:31], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v7, s2
	v_cndmask_b32_e64 v6, 0x80000000, v8, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[18:21], v2, s[28:31], 0 offen
	buffer_load_b128 v[28:31], v3, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v4, s2
	v_cndmask_b32_e64 v3, 0x80000000, v9, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v23, v1, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[32:35], v5, s[28:31], 0 offen
	buffer_load_b128 v[36:39], v6, s[28:31], 0 offen
	buffer_load_b128 v[40:43], v2, s[28:31], 0 offen
	buffer_load_b128 v[44:47], v3, s[28:31], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v1, 0x70, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0xbf
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(9)
	ds_store_b32 v24, v22 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v48, v[10:13]
	s_waitcnt vmcnt(7)
	ds_store_b128 v48, v[14:17] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v48, v[18:21] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v48, v[28:31] offset:20480
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v2, v2, 1, v1
	v_or_b32_e32 v130, v1, v125
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v24, v23 offset:33792
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v48, v[32:35] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v48, v[36:39] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v48, v[40:43] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v48, v[44:47] offset:28672
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 2, v2
	v_or_b32_e32 v7, 4, v2
	v_or_b32_e32 v8, 6, v2
	v_or_b32_e32 v9, 8, v2
	v_or_b32_e32 v3, 10, v2
	v_or_b32_e32 v4, 12, v2
	v_or_b32_e32 v5, 14, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v1, v1, v125
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v18, 0x3f0, v0
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v68, 0x80, v1
	v_or_b32_e32 v69, 0x100, v1
	v_or_b32_e32 v70, 0x180, v1
	v_or_b32_e32 v71, 0x200, v1
	v_or_b32_e32 v72, 0x280, v1
	v_or_b32_e32 v73, 0x300, v1
	v_or_b32_e32 v74, 0x380, v1
	v_or_b32_e32 v75, 0x400, v1
	v_or_b32_e32 v76, 0x480, v1
	v_or_b32_e32 v77, 0x500, v1
	v_or_b32_e32 v78, 0x580, v1
	v_or_b32_e32 v79, 0x600, v1
	v_or_b32_e32 v80, 0x680, v1
	v_or_b32_e32 v81, 0x700, v1
	v_or_b32_e32 v82, 0x780, v1
	v_or_b32_e32 v66, 0x800, v1
	v_or_b32_e32 v67, 0x880, v1
	v_or_b32_e32 v83, 0x900, v1
	v_or_b32_e32 v84, 0x980, v1
	v_or_b32_e32 v85, 0xa00, v1
	v_or_b32_e32 v86, 0xa80, v1
	v_or_b32_e32 v87, 0xb00, v1
	v_or_b32_e32 v88, 0xb80, v1
	v_or_b32_e32 v89, 0xc00, v1
	v_or_b32_e32 v90, 0xc80, v1
	v_or_b32_e32 v91, 0xd00, v1
	v_or_b32_e32 v92, 0xd80, v1
	v_or_b32_e32 v93, 0xe00, v1
	v_or_b32_e32 v94, 0xe80, v1
	v_or_b32_e32 v95, 0xf00, v1
	v_or_b32_e32 v96, 0xf80, v1
	v_or_b32_e32 v64, 0x1000, v1
	v_or_b32_e32 v65, 0x1080, v1
	v_or_b32_e32 v97, 0x1100, v1
	v_or_b32_e32 v98, 0x1180, v1
	v_or_b32_e32 v99, 0x1200, v1
	v_or_b32_e32 v100, 0x1280, v1
	v_or_b32_e32 v101, 0x1300, v1
	v_or_b32_e32 v102, 0x1380, v1
	v_or_b32_e32 v103, 0x1400, v1
	v_or_b32_e32 v104, 0x1480, v1
	v_or_b32_e32 v105, 0x1500, v1
	v_or_b32_e32 v106, 0x1580, v1
	v_or_b32_e32 v107, 0x1600, v1
	v_or_b32_e32 v108, 0x1680, v1
	v_or_b32_e32 v109, 0x1700, v1
	v_or_b32_e32 v110, 0x1780, v1
	v_or_b32_e32 v62, 0x1800, v1
	v_or_b32_e32 v63, 0x1880, v1
	v_or_b32_e32 v111, 0x1900, v1
	v_or_b32_e32 v112, 0x1980, v1
	v_or_b32_e32 v113, 0x1a00, v1
	v_or_b32_e32 v114, 0x1a80, v1
	v_or_b32_e32 v115, 0x1b00, v1
	v_or_b32_e32 v116, 0x1b80, v1
	v_or_b32_e32 v117, 0x1c00, v1
	v_or_b32_e32 v118, 0x1c80, v1
	v_or_b32_e32 v119, 0x1d00, v1
	v_or_b32_e32 v120, 0x1d80, v1
	v_or_b32_e32 v121, 0x1e00, v1
	v_or_b32_e32 v122, 0x1e80, v1
	v_or_b32_e32 v123, 0x1f00, v1
	v_or_b32_e32 v124, 0x1f80, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr18
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr71
                                        ; implicit-def: $vgpr72
                                        ; implicit-def: $vgpr73
                                        ; implicit-def: $vgpr74
                                        ; implicit-def: $vgpr75
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr67
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
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr65
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
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr63
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
.LBB0_3:                                ; %Flow147
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v44, s12, v125
	s_ashr_i32 s1, s13, 6
	v_or_b32_e32 v59, s33, v2
	v_or_b32_e32 v60, s33, v6
	v_or_b32_e32 v58, s33, v7
	v_mul_lo_u32 v61, v44, s1
	v_or_b32_e32 v57, s33, v8
	v_or_b32_e32 v56, s33, v9
	v_or_b32_e32 v55, s33, v3
	v_or_b32_e32 v54, s33, v4
	v_or_b32_e32 v53, s33, v5
	v_add_nc_u32_e32 v52, s23, v2
	v_add_nc_u32_e32 v51, s23, v6
	v_add_nc_u32_e32 v50, s23, v7
	v_add_nc_u32_e32 v48, s23, v8
	v_add_nc_u32_e32 v46, s23, v9
	v_add_nc_u32_e32 v49, s23, v3
	v_add_nc_u32_e32 v47, s23, v4
	v_add_nc_u32_e32 v45, s23, v5
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s35, s26, 64
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_or_b32_e32 v68, 0x80, v130
	v_or_b32_e32 v69, 0x100, v130
	v_or_b32_e32 v70, 0x180, v130
	v_or_b32_e32 v71, 0x200, v130
	v_or_b32_e32 v72, 0x280, v130
	v_or_b32_e32 v73, 0x300, v130
	v_or_b32_e32 v74, 0x380, v130
	v_or_b32_e32 v75, 0x400, v130
	v_or_b32_e32 v76, 0x480, v130
	v_or_b32_e32 v77, 0x500, v130
	v_or_b32_e32 v78, 0x580, v130
	v_or_b32_e32 v79, 0x600, v130
	v_or_b32_e32 v80, 0x680, v130
	v_or_b32_e32 v81, 0x700, v130
	v_or_b32_e32 v82, 0x780, v130
	v_or_b32_e32 v66, 0x800, v130
	v_or_b32_e32 v67, 0x880, v130
	v_or_b32_e32 v83, 0x900, v130
	v_or_b32_e32 v84, 0x980, v130
	v_or_b32_e32 v85, 0xa00, v130
	v_or_b32_e32 v86, 0xa80, v130
	v_or_b32_e32 v87, 0xb00, v130
	v_or_b32_e32 v88, 0xb80, v130
	v_or_b32_e32 v89, 0xc00, v130
	v_or_b32_e32 v90, 0xc80, v130
	v_or_b32_e32 v91, 0xd00, v130
	v_or_b32_e32 v92, 0xd80, v130
	v_or_b32_e32 v93, 0xe00, v130
	v_or_b32_e32 v94, 0xe80, v130
	v_or_b32_e32 v95, 0xf00, v130
	v_or_b32_e32 v96, 0xf80, v130
	v_or_b32_e32 v64, 0x1000, v130
	v_or_b32_e32 v65, 0x1080, v130
	v_or_b32_e32 v97, 0x1100, v130
	v_or_b32_e32 v98, 0x1180, v130
	v_or_b32_e32 v99, 0x1200, v130
	v_or_b32_e32 v100, 0x1280, v130
	v_or_b32_e32 v101, 0x1300, v130
	v_or_b32_e32 v102, 0x1380, v130
	v_or_b32_e32 v103, 0x1400, v130
	v_or_b32_e32 v104, 0x1480, v130
	v_or_b32_e32 v105, 0x1500, v130
	v_or_b32_e32 v106, 0x1580, v130
	v_or_b32_e32 v107, 0x1600, v130
	v_or_b32_e32 v108, 0x1680, v130
	v_or_b32_e32 v109, 0x1700, v130
	v_or_b32_e32 v110, 0x1780, v130
	v_or_b32_e32 v62, 0x1800, v130
	v_or_b32_e32 v63, 0x1880, v130
	v_or_b32_e32 v111, 0x1900, v130
	v_or_b32_e32 v112, 0x1980, v130
	v_or_b32_e32 v113, 0x1a00, v130
	v_or_b32_e32 v114, 0x1a80, v130
	v_or_b32_e32 v115, 0x1b00, v130
	v_or_b32_e32 v116, 0x1b80, v130
	v_or_b32_e32 v117, 0x1c00, v130
	v_or_b32_e32 v118, 0x1c80, v130
	v_or_b32_e32 v119, 0x1d00, v130
	v_or_b32_e32 v120, 0x1d80, v130
	v_or_b32_e32 v121, 0x1e00, v130
	v_or_b32_e32 v122, 0x1e80, v130
	v_or_b32_e32 v123, 0x1f00, v130
	v_or_b32_e32 v124, 0x1f80, v130
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s46, s1, 3
	s_mov_b32 s12, 0
	s_add_i32 s11, s35, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s49, 0, 0x8400
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_add_i32 s46, s46, -3
	s_mov_b32 s47, 1
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
	s_mov_b32 s27, s12
	s_mov_b32 s48, s12
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s50, s0
	s_mov_b32 s0, s49
	s_mov_b32 s49, s27
	s_mov_b32 s27, s45
	s_mov_b32 s45, s10
	s_mov_b32 s10, s44
	s_mov_b32 s44, s26
	s_mov_b32 s26, s35
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s35, s48, 6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v132, s50, v125
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s11, s35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v131, s49, v130
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[1:2], null, s35, s22, v[26:27]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v24, s19 :: v_dual_add_nc_u32 v135, s45, v130
	v_dual_mov_b32 v23, s18 :: v_dual_mov_b32 v22, s17
	v_dual_mov_b32 v21, s16 :: v_dual_mov_b32 v20, s15
	v_mov_b32_e32 v19, s14
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v134, v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v132 offset:208
	ds_load_u8 v2, v132 offset:192
	ds_load_u8 v3, v132 offset:240
	ds_load_u8 v4, v132 offset:224
	ds_load_u8 v5, v132 offset:144
	ds_load_u8 v6, v132 offset:128
	ds_load_u8 v7, v132 offset:176
	ds_load_u8 v8, v132 offset:160
	ds_load_u8 v9, v132 offset:80
	ds_load_u8 v10, v132 offset:64
	ds_load_u8 v11, v132 offset:112
	ds_load_u8 v12, v132 offset:96
	ds_load_u8 v13, v132
	ds_load_u8 v14, v132 offset:16
	ds_load_u8 v15, v132 offset:32
	ds_load_u8 v16, v132 offset:48
	ds_load_u8 v139, v131 offset:1664
	ds_load_u8 v143, v131 offset:1536
	ds_load_u8 v144, v131 offset:1920
	ds_load_u8 v145, v131 offset:1792
	ds_load_u8 v146, v131 offset:1152
	ds_load_u8 v149, v131 offset:1024
	ds_load_u8 v150, v131 offset:1408
	ds_load_u8 v151, v131 offset:1280
	ds_load_u8 v152, v131 offset:640
	ds_load_u8 v153, v131 offset:512
	ds_load_u8 v154, v131 offset:896
	ds_load_u8 v155, v131 offset:768
	ds_load_u8 v156, v131 offset:128
	ds_load_u8 v157, v131
	ds_load_u8 v158, v131 offset:384
	ds_load_u8 v159, v131 offset:256
	ds_load_u8 v160, v132 offset:464
	ds_load_u8 v161, v132 offset:448
	ds_load_u8 v162, v132 offset:496
	ds_load_u8 v163, v132 offset:480
	ds_load_u8 v164, v132 offset:400
	ds_load_u8 v165, v132 offset:384
	ds_load_u8 v166, v132 offset:432
	ds_load_u8 v167, v132 offset:416
	ds_load_u8 v168, v132 offset:336
	ds_load_u8 v169, v132 offset:320
	ds_load_u8 v170, v132 offset:368
	ds_load_u8 v171, v132 offset:352
	ds_load_u8 v172, v132 offset:272
	ds_load_u8 v173, v132 offset:256
	ds_load_u8 v174, v132 offset:304
	ds_load_u8 v175, v132 offset:288
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v6, v135 offset:1920
	ds_load_u8 v182, v135 offset:4736
	ds_load_u8 v7, v135 offset:1792
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v142, v2, 16, v1
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v1, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v2, v12, v11, 0xc0c0004
	v_lshl_or_b32 v141, v4, 16, v3
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v3, v15, v16, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v4, v143, v139, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v8, v135 offset:1152
	ds_load_u8 v12, v135 offset:1408
	ds_load_u8 v16, v135 offset:768
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v140, v2, 16, v1
	v_perm_b32 v2, v13, v14, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v135 offset:1664
	ds_load_u8 v5, v135 offset:1536
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v9, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v11, v149, v146, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v13, v151, v150, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v14, v135 offset:1280
	ds_load_u8 v10, v135 offset:1024
	ds_load_u8 v149, v135 offset:384
	ds_load_u8 v150, v135 offset:256
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v139, v3, 16, v2
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v2, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v15, v155, v154, 0xc0c0004
	v_lshl_or_b32 v4, v9, 16, v4
	v_lshl_or_b32 v3, v13, 16, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v135 offset:640
	ds_load_u8 v11, v135 offset:512
	ds_load_u8 v13, v135 offset:896
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v2, v15, 16, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v15, v135 offset:128
	ds_load_u8 v143, v135
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v144, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v145, v159, v158, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v5, v5, v1, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v18, s13 :: v_dual_mov_b32 v17, s12
	v_lshl_or_b32 v1, v145, 16, v144
	ds_load_u8 v176, v131 offset:3712
	ds_load_u8 v151, v131 offset:3456
	ds_load_u8 v152, v131 offset:3328
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v7, v10, v8, 0xc0c0004
	v_perm_b32 v8, v14, v12, 0xc0c0004
	v_lshl_or_b32 v146, v6, 16, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v178, v131 offset:3968
	ds_load_u8 v179, v131 offset:3840
	ds_load_u8 v180, v131 offset:3200
	ds_load_u8 v181, v131 offset:3072
	ds_load_u8 v153, v131 offset:2688
	ds_load_u8 v154, v131 offset:2560
	ds_load_u8 v157, v131 offset:2176
	ds_load_u8 v159, v131 offset:2432
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v145, v8, 16, v7
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v5, v11, v9, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v6, v16, v13, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v7, v143, v15, 0xc0c0004
	v_perm_b32 v8, v150, v149, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[139:142], v[17:24] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v144, v6, 16, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v155, v131 offset:2944
	ds_load_u8 v156, v131 offset:2816
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v143, v8, 16, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v149, v131 offset:2304
	ds_load_u8 v158, v131 offset:2048
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v152, v135 offset:3584
	v_wmma_i32_16x16x16_iu8 v[1:8], v[143:146], v[139:142], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v17, v161, v160, 0xc0c0004
	v_perm_b32 v18, v163, v162, 0xc0c0004
	v_perm_b32 v19, v165, v164, 0xc0c0004
	v_perm_b32 v21, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v23, v179, v178, 0xc0c0004
	ds_load_u8 v139, v132 offset:720
	ds_load_u8 v140, v132 offset:704
	ds_load_u8 v141, v132 offset:752
	ds_load_u8 v142, v132 offset:736
	ds_load_u8 v143, v132 offset:656
	ds_load_u8 v144, v132 offset:640
	ds_load_u8 v145, v132 offset:688
	ds_load_u8 v146, v132 offset:672
	v_lshl_or_b32 v20, v18, 16, v17
	v_perm_b32 v17, v169, v168, 0xc0c0004
	v_perm_b32 v18, v171, v170, 0xc0c0004
	ds_load_u8 v168, v131 offset:5632
	ds_load_u8 v170, v131 offset:5888
	ds_load_u8 v177, v131 offset:3584
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v171, v181, v180, 0xc0c0004
	v_lshl_or_b32 v19, v21, 16, v19
	v_lshl_or_b32 v18, v18, 16, v17
	v_perm_b32 v17, v173, v172, 0xc0c0004
	v_perm_b32 v21, v175, v174, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v172, v135 offset:3712
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v149, v149, v159, 0xc0c0004
	ds_load_u8 v150, v132 offset:592
	ds_load_u8 v160, v132 offset:576
	ds_load_u8 v163, v132 offset:528
	ds_load_u8 v164, v132 offset:512
	v_lshl_or_b32 v17, v21, 16, v17
	v_perm_b32 v21, v154, v153, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v153, v135 offset:3200
	ds_load_u8 v154, v135 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v161, v132 offset:624
	ds_load_u8 v162, v132 offset:608
	ds_load_u8 v165, v132 offset:560
	ds_load_u8 v166, v132 offset:544
	ds_load_u8 v167, v131 offset:5760
	ds_load_u8 v169, v131 offset:6016
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v22, v177, v176, 0xc0c0004
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s45, s44, 31
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s49, s35, s34
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s45, s45, 26
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s49, s49, s33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v24, v23, 16, v22
	v_lshl_or_b32 v23, v151, 16, v171
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v151, v135 offset:3968
	ds_load_u8 v171, v135 offset:3840
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v22, v156, v155, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v155, v135 offset:3456
	ds_load_u8 v156, v135 offset:3328
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s44, s44, s45
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v147, s49, v25
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s44, s44, 6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v22, v22, 16, v21
	v_perm_b32 v21, v158, v157, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v157, v135 offset:2688
	ds_load_u8 v158, v135 offset:2560
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v137, s49, v128
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v21, v149, 16, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v149, v135 offset:2944
	ds_load_u8 v159, v135 offset:2816
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s49, s49, s23
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s44, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v148, v61, s44, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[21:24], v[17:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v173, v131 offset:5248
	ds_load_u8 v174, v131 offset:5120
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v135 offset:2176
	ds_load_u8 v175, v135 offset:2048
	v_perm_b32 v22, v152, v172, 0xc0c0004
	ds_load_u8 v152, v135 offset:2432
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v23, v171, v151, 0xc0c0004
	ds_load_u8 v151, v135 offset:2304
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v154, v156, v155, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v155, v131 offset:4736
	ds_load_u8 v156, v131 offset:4608
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v24, v23, 16, v22
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s44, s44, s34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v23, v154, 16, v153
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v153, v131 offset:5504
	ds_load_u8 v154, v131 offset:5376
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v22, v158, v157, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v158, v131 offset:4224
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v149, v159, v149, 0xc0c0004
	ds_load_u8 v181, v135 offset:5376
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v136, s49, v128
	v_add_nc_u32_e32 v138, s49, v25
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v133, s50, v129
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v21, v175, v21, 0xc0c0004
	v_lshl_or_b32 v22, v149, 16, v22
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v149, v131 offset:4992
	ds_load_u8 v157, v131 offset:4864
	ds_load_u8 v171, v132 offset:976
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v172, v135 offset:5760
	ds_load_u8 v175, v135 offset:5632
	ds_load_u8 v176, v135 offset:6016
	ds_load_u8 v177, v135 offset:5888
	ds_load_u8 v178, v135 offset:5248
	ds_load_u8 v179, v135 offset:5120
	ds_load_u8 v180, v135 offset:5504
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v151, v151, v152, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v131 offset:4096
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v21, v151, 16, v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v131 offset:4480
	ds_load_u8 v159, v131 offset:4352
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[21:24], v[17:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v17, v140, v139, 0xc0c0004
	v_perm_b32 v18, v142, v141, 0xc0c0004
	v_perm_b32 v19, v144, v143, 0xc0c0004
	v_perm_b32 v20, v146, v145, 0xc0c0004
	v_perm_b32 v139, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v140, v154, v153, 0xc0c0004
	v_lshl_or_b32 v24, v18, 16, v17
	v_perm_b32 v17, v160, v150, 0xc0c0004
	v_perm_b32 v18, v162, v161, 0xc0c0004
	v_lshl_or_b32 v23, v20, 16, v19
	v_perm_b32 v19, v168, v167, 0xc0c0004
	v_perm_b32 v20, v170, v169, 0xc0c0004
	v_lshl_or_b32 v141, v140, 16, v139
	v_lshl_or_b32 v22, v18, 16, v17
	v_perm_b32 v17, v164, v163, 0xc0c0004
	v_perm_b32 v18, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v152, v158, 0xc0c0004
	v_lshl_or_b32 v142, v20, 16, v19
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v146, v59, s44, 1
	v_add_lshl_u32 v150, v60, s44, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v21, v18, 16, v17
	v_perm_b32 v17, v156, v155, 0xc0c0004
	v_perm_b32 v18, v157, v149, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v159, v151, 0xc0c0004
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v164, v58, s44, 1
	v_add_lshl_u32 v165, v57, s44, 1
	v_add_lshl_u32 v153, v56, s44, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v140, v18, 16, v17
	v_lshl_or_b32 v139, v149, 16, v139
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v154, v55, s44, 1
	v_add_lshl_u32 v166, v54, s44, 1
	v_add_lshl_u32 v155, v53, s44, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s44, s44, s33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[17:20], v147, s[28:31], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v147, v52, s44, 1
	v_add_lshl_u32 v151, v51, s44, 1
	v_add_lshl_u32 v149, v50, s44, 1
	v_add_lshl_u32 v152, v48, s44, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[139:142], v[21:24], v[9:16] neg_lo:[1,1,0]
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v139, v46, s44, 1
	v_add_lshl_u32 v140, v49, s44, 1
	v_add_lshl_u32 v141, v47, s44, 1
	v_add_lshl_u32 v142, v45, s44, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v148, 0x80000000, v148 :: v_dual_cndmask_b32 v157, 0x80000000, v165
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v146, 0x80000000, v146 :: v_dual_cndmask_b32 v153, 0x80000000, v153
	v_dual_cndmask_b32 v150, 0x80000000, v150 :: v_dual_cndmask_b32 v155, 0x80000000, v155
	v_dual_cndmask_b32 v156, 0x80000000, v164 :: v_dual_cndmask_b32 v147, 0x80000000, v147
	v_dual_cndmask_b32 v158, 0x80000000, v166 :: v_dual_cndmask_b32 v149, 0x80000000, v149
	v_dual_cndmask_b32 v154, 0x80000000, v154 :: v_dual_cndmask_b32 v151, 0x80000000, v151
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v152, 0x80000000, v152 :: v_dual_cndmask_b32 v139, 0x80000000, v139
	v_dual_cndmask_b32 v140, 0x80000000, v140 :: v_dual_cndmask_b32 v141, 0x80000000, v141
	v_cndmask_b32_e32 v142, 0x80000000, v142, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v159, v148, s[36:39], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v164, v146, s[40:43], 0 offen
	buffer_load_u16 v165, v150, s[40:43], 0 offen
	buffer_load_u16 v156, v156, s[40:43], 0 offen
	buffer_load_u16 v157, v157, s[40:43], 0 offen
	buffer_load_u16 v166, v153, s[40:43], 0 offen
	buffer_load_u16 v167, v154, s[40:43], 0 offen
	buffer_load_u16 v158, v158, s[40:43], 0 offen
	buffer_load_u16 v155, v155, s[40:43], 0 offen
	buffer_load_u16 v168, v147, s[40:43], 0 offen
	buffer_load_u16 v169, v151, s[40:43], 0 offen
	buffer_load_u16 v170, v149, s[40:43], 0 offen
	buffer_load_u16 v173, v152, s[40:43], 0 offen
	buffer_load_u16 v174, v139, s[40:43], 0 offen
	buffer_load_u16 v183, v140, s[40:43], 0 offen
	buffer_load_u16 v184, v141, s[40:43], 0 offen
	buffer_load_u16 v185, v142, s[40:43], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v143, v135 offset:4608
	ds_load_u8 v144, v135 offset:4992
	ds_load_u8 v145, v135 offset:4864
	ds_load_u8 v160, v135 offset:4224
	ds_load_u8 v163, v135 offset:4352
	v_perm_b32 v146, v175, v172, 0xc0c0004
	v_perm_b32 v147, v177, v176, 0xc0c0004
	v_perm_b32 v148, v179, v178, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[139:142], v137, s[28:31], 0 offen
	buffer_load_b128 v[151:154], v136, s[28:31], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v137, v181, v180, 0xc0c0004
	v_lshl_or_b32 v146, v147, 16, v146
	ds_load_u8 v161, v135 offset:4096
	ds_load_u8 v162, v135 offset:4480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s44, s47, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s44, 2
	s_cselect_b32 s47, s44, 0
	s_add_i32 s50, s48, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s44, s47, 10
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v143, v143, v182, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s44, s44, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	v_lshl_or_b32 v145, v137, 16, v148
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	buffer_load_b128 v[147:150], v138, s[28:31], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v138, v132 offset:960
	ds_load_u8 v133, v133
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s45, s47, 13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v144, v144, 16, v143
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s45, s45, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s49, s44, 0x8000
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v137, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v136, v163, v162, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v161, v131 offset:7040
	ds_load_u8 v162, v131 offset:6912
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v143, v136, 16, v137
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v136, v132 offset:992
	ds_load_u8 v137, v132 offset:912
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[143:146], v[21:24], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v21, v132 offset:896
	ds_load_u8 v22, v132 offset:944
	ds_load_u8 v23, v132 offset:928
	ds_load_u8 v143, v132 offset:848
	ds_load_u8 v144, v132 offset:832
	ds_load_u8 v145, v132 offset:880
	ds_load_u8 v146, v132 offset:864
	ds_load_u8 v160, v132 offset:784
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v24, v138, v171, 0xc0c0004
	ds_load_u8 v138, v132 offset:768
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v133, v136, v133, 0xc0c0004
	ds_load_u8 v136, v132 offset:816
	ds_load_u8 v132, v132 offset:800
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v21, v21, v137, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v137, v131 offset:8064
	v_lshl_or_b32 v24, v133, 16, v24
	v_lshl_or_b32 v23, v22, 16, v21
	ds_load_u8 v21, v131 offset:7808
	ds_load_u8 v133, v131 offset:7680
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v22, v144, v143, 0xc0c0004
	ds_load_u8 v144, v131 offset:7936
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v143, v146, v145, 0xc0c0004
	ds_load_u8 v146, v131 offset:7552
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v138, v138, v160, 0xc0c0004
	ds_load_u8 v160, v131 offset:6784
	v_lshl_or_b32 v22, v143, 16, v22
	ds_load_u8 v143, v131 offset:7296
	ds_load_u8 v145, v131 offset:7168
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v132, v132, v136, 0xc0c0004
	ds_load_u8 v136, v131 offset:7424
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v133, v133, v21, 0xc0c0004
	v_lshl_or_b32 v21, v132, 16, v138
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v137, v144, v137, 0xc0c0004
	ds_load_u8 v144, v131 offset:6656
	v_perm_b32 v138, v162, v161, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v161, v135 offset:6784
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v143, v145, v143, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v136, v136, v146, 0xc0c0004
	v_lshl_or_b32 v146, v137, 16, v133
	ds_load_u8 v132, v131 offset:6272
	ds_load_u8 v133, v131 offset:6144
	ds_load_u8 v137, v131 offset:6528
	ds_load_u8 v131, v131 offset:6400
	v_lshl_or_b32 v145, v136, 16, v143
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v143, v135 offset:7808
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v136, v144, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v138, 16, v136
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v136, v135 offset:7680
	ds_load_u8 v138, v135 offset:8064
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v133, v135 offset:7936
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v131, v131, v137, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v137, v135 offset:7296
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v133, v133, v138, 0xc0c0004
	ds_load_u8 v138, v135 offset:7552
	v_perm_b32 v136, v136, v143, 0xc0c0004
	ds_load_u8 v143, v135 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v143, v137, 0xc0c0004
	ds_load_u8 v143, v135 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v143, v138, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v143, v131, 16, v132
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v138, v133, 16, v136
	ds_load_u8 v131, v135 offset:6656
	ds_load_u8 v132, v135 offset:7040
	ds_load_u8 v133, v135 offset:6912
	v_lshl_or_b32 v137, v160, 16, v137
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[143:146], v[21:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v135 offset:6272
	v_perm_b32 v131, v131, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v132, 16, v131
	ds_load_u8 v131, v135 offset:6144
	ds_load_u8 v132, v135 offset:6528
	ds_load_u8 v135, v135 offset:6400
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v131, v131, v133, 0xc0c0004
	v_perm_b32 v132, v135, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v135, v132, 16, v131
	v_wmma_i32_16x16x16_iu8 v[1:8], v[135:138], v[21:24], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v21, 16, v159
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v146, 16, v184
	v_lshlrev_b32_e32 v136, 16, v168
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v133, s44, v126
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s44, s45, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s48, s46
	s_mov_b32 s48, s50
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v136, v21, v136 :: v_dual_lshlrev_b32 v145, 16, v183
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b32 v133, v134 offset:32768
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v28, v136, v1
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v145, v21, v145 :: v_dual_lshlrev_b32 v132, 16, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v132, v21, v132 :: v_dual_lshlrev_b32 v143, 16, v173
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v36, v145, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v143, v21, v143 :: v_dual_lshlrev_b32 v24, 16, v156
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v33, v132, v13 :: v_dual_mul_f32 v24, v21, v24
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v144, 16, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v40, v143, v4 :: v_dual_fmac_f32 v37, v24, v11
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v144, v21, v144 :: v_dual_lshlrev_b32 v23, 16, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v21, v23
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v131, 16, v157
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v35, v144, v5 :: v_dual_fmac_f32 v42, v23, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v131, v21, v131
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v38, v131, v12 :: v_dual_lshlrev_b32 v133, 16, v167
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v133, v21, v133
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v135, 16, v155
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v155, 16, v185
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v134, 16, v158
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v34, v133, v14
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v135, v21, v135 :: v_dual_lshlrev_b32 v22, 16, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v155, v21, v155
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v134, v21, v134 :: v_dual_lshlrev_b32 v137, 16, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v22, v21, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v29, v135, v16 :: v_dual_lshlrev_b32 v138, 16, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v134, v15
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v137, v21, v137 :: v_dual_add_nc_u32 v160, s45, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v41, v22, v9 :: v_dual_mul_f32 v138, v21, v138
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v21, v21, v146 :: v_dual_fmac_f32 v32, v155, v8
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v43, v137, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v160, v[17:20]
	s_waitcnt vmcnt(2)
	ds_store_b128 v160, v[139:142] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	ds_store_b128 v160, v[147:150] offset:16384
	ds_store_b128 v160, v[151:154] offset:20480
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v39, v138, v3
	v_fmac_f32_e32 v31, v21, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v18, v129 :: v_dual_mov_b32 v1, v130
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s49, 0, 0x8400
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v28, 0
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v2, s0, v125
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v3, s0, v18
	ds_load_u8_d16 v166, v2
	ds_load_u8_d16 v167, v2 offset:16
	ds_load_u8_d16 v168, v2 offset:32
	ds_load_u8_d16 v169, v2 offset:48
	ds_load_u8_d16 v170, v2 offset:64
	ds_load_u8_d16 v171, v2 offset:80
	ds_load_u8_d16 v172, v2 offset:96
	ds_load_u8_d16 v173, v2 offset:112
	ds_load_u8_d16 v174, v2 offset:128
	ds_load_u8_d16 v175, v2 offset:144
	ds_load_u8_d16 v176, v2 offset:160
	ds_load_u8_d16 v177, v2 offset:176
	ds_load_u8_d16 v178, v2 offset:192
	ds_load_u8_d16 v179, v2 offset:208
	ds_load_u8_d16 v180, v2 offset:224
	ds_load_u8_d16 v181, v2 offset:240
	ds_load_u8_d16 v150, v2 offset:256
	ds_load_u8_d16 v151, v2 offset:272
	ds_load_u8_d16 v152, v2 offset:288
	ds_load_u8_d16 v153, v2 offset:304
	ds_load_u8_d16 v154, v2 offset:320
	ds_load_u8_d16 v155, v2 offset:336
	ds_load_u8_d16 v156, v2 offset:352
	ds_load_u8_d16 v157, v2 offset:368
	ds_load_u8_d16 v158, v2 offset:384
	ds_load_u8_d16 v159, v2 offset:400
	ds_load_u8_d16 v160, v2 offset:416
	ds_load_u8_d16 v161, v2 offset:432
	ds_load_u8_d16 v162, v2 offset:448
	ds_load_u8_d16 v163, v2 offset:464
	ds_load_u8_d16 v164, v2 offset:480
	ds_load_u8_d16 v165, v2 offset:496
	ds_load_u8_d16 v134, v2 offset:512
	ds_load_u8_d16 v135, v2 offset:528
	ds_load_u8_d16 v136, v2 offset:544
	ds_load_u8_d16 v137, v2 offset:560
	ds_load_u8_d16 v138, v2 offset:576
	ds_load_u8_d16 v139, v2 offset:592
	ds_load_u8_d16 v140, v2 offset:608
	ds_load_u8_d16 v141, v2 offset:624
	ds_load_u8_d16 v142, v2 offset:640
	ds_load_u8_d16 v143, v2 offset:656
	ds_load_u8_d16 v144, v2 offset:672
	ds_load_u8_d16 v145, v2 offset:688
	ds_load_u8_d16 v146, v2 offset:704
	ds_load_u8_d16 v147, v2 offset:720
	ds_load_u8_d16 v148, v2 offset:736
	ds_load_u8_d16 v149, v2 offset:752
	ds_load_u8_d16 v19, v2 offset:768
	ds_load_u8_d16 v20, v2 offset:784
	ds_load_u8_d16 v21, v2 offset:800
	ds_load_u8_d16 v22, v2 offset:816
	ds_load_u8_d16 v23, v2 offset:832
	ds_load_u8_d16 v24, v2 offset:848
	ds_load_u8_d16 v25, v2 offset:864
	ds_load_u8_d16 v26, v2 offset:880
	ds_load_u8_d16 v126, v2 offset:896
	ds_load_u8_d16 v127, v2 offset:912
	ds_load_u8_d16 v128, v2 offset:928
	ds_load_u8_d16 v129, v2 offset:944
	ds_load_u8_d16 v130, v2 offset:960
	ds_load_u8_d16 v131, v2 offset:976
	ds_load_u8_d16 v132, v2 offset:992
	ds_load_u8_d16 v133, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v2, 0, 1, s3
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v2
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v7, 0
	v_mov_b32_e32 v4, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v4, s27, v80
	v_add_nc_u32_e32 v5, s27, v79
	v_add_nc_u32_e32 v2, s27, v82
	v_add_nc_u32_e32 v11, s27, v76
	v_add_nc_u32_e32 v9, s27, v78
	v_add_nc_u32_e32 v10, s27, v77
	v_add_nc_u32_e32 v12, s27, v75
	v_add_nc_u32_e32 v13, s27, v74
	v_add_nc_u32_e32 v14, s27, v73
	v_add_nc_u32_e32 v15, s27, v72
	v_add_nc_u32_e32 v182, s27, v71
	v_add_nc_u32_e32 v183, s27, v70
	v_add_nc_u32_e32 v184, s27, v69
	v_add_nc_u32_e32 v185, s27, v68
	v_add_nc_u32_e32 v224, s27, v1
	v_add_nc_u32_e32 v3, s27, v81
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v225, v4
	ds_load_u8 v226, v5
	ds_load_u8 v227, v2
	ds_load_u8 v11, v11
	ds_load_u8 v12, v12
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	ds_load_u8 v228, v3
	ds_load_u8 v15, v15
	ds_load_u8 v182, v182
	ds_load_u8 v13, v13
	ds_load_u8 v185, v185
	ds_load_u8 v224, v224
	ds_load_u8 v183, v183
	ds_load_u8 v184, v184
	ds_load_u8 v14, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v212, s27, v94
	v_add_nc_u32_e32 v213, s27, v93
	v_add_nc_u32_e32 v16, s27, v96
	v_add_nc_u32_e32 v216, s27, v90
	v_add_nc_u32_e32 v211, s27, v95
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v225, v226, v225, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v214, s27, v92
	v_add_nc_u32_e32 v215, s27, v91
	v_add_nc_u32_e32 v217, s27, v89
	v_add_nc_u32_e32 v218, s27, v88
	v_add_nc_u32_e32 v219, s27, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v226, v228, v227, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v220, s27, v86
	v_add_nc_u32_e32 v221, s27, v85
	v_add_nc_u32_e32 v222, s27, v84
	v_add_nc_u32_e32 v223, s27, v83
	v_add_nc_u32_e32 v229, s27, v67
	v_add_nc_u32_e32 v235, s27, v66
	v_add_nc_u32_e32 v6, s27, v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	v_perm_b32 v14, v224, v185, 0xc0c0004
	v_lshl_or_b32 v185, v226, 16, v225
	ds_load_u8 v212, v212
	ds_load_u8 v213, v213
	ds_load_u8 v224, v16
	ds_load_u8 v216, v216
	ds_load_u8 v217, v217
	ds_load_u8 v214, v214
	ds_load_u8 v215, v215
	ds_load_u8 v211, v211
	ds_load_u8 v220, v220
	ds_load_u8 v221, v221
	ds_load_u8 v218, v218
	ds_load_u8 v225, v229
	ds_load_u8 v226, v235
	ds_load_u8 v222, v222
	ds_load_u8 v223, v223
	ds_load_u8 v219, v219
	v_perm_b32 v2, v178, v179, 0xc0c0004
	v_perm_b32 v3, v180, v181, 0xc0c0004
	v_perm_b32 v4, v174, v175, 0xc0c0004
	v_perm_b32 v230, v176, v177, 0xc0c0004
	v_perm_b32 v231, v170, v171, 0xc0c0004
	v_perm_b32 v232, v172, v173, 0xc0c0004
	v_perm_b32 v233, v166, v167, 0xc0c0004
	v_perm_b32 v234, v168, v169, 0xc0c0004
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_perm_b32 v10, v10, v9, 0xc0c0004
	v_perm_b32 v12, v182, v15, 0xc0c0004
	v_perm_b32 v15, v184, v183, 0xc0c0004
	v_mov_b32_e32 v9, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s27, v123
	v_add_nc_u32_e32 v17, s27, v122
	v_add_nc_u32_e32 v186, s27, v121
	v_add_nc_u32_e32 v187, s27, v120
	v_add_nc_u32_e32 v188, s27, v119
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v16, v9 :: v_dual_add_nc_u32 v189, s27, v118
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v190, s27, v117
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v5, v3, 16, v2
	v_lshl_or_b32 v4, v230, 16, v4
	v_lshl_or_b32 v3, v232, 16, v231
	v_lshl_or_b32 v2, v234, 16, v233
	v_lshl_or_b32 v184, v10, 16, v11
	v_lshl_or_b32 v183, v13, 16, v12
	v_lshl_or_b32 v182, v15, 16, v14
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v15, v9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v199, s27, v108
	v_add_nc_u32_e32 v200, s27, v107
	v_add_nc_u32_e32 v197, s27, v110
	v_add_nc_u32_e32 v203, s27, v104
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[182:185], v[2:5], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v2, v154, v155, 0xc0c0004
	v_perm_b32 v3, v156, v157, 0xc0c0004
	v_perm_b32 v182, v150, v151, 0xc0c0004
	v_perm_b32 v183, v152, v153, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v184, v213, v212, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v185, v211, v224, 0xc0c0004
	v_perm_b32 v211, v217, v216, 0xc0c0004
	v_perm_b32 v212, v215, v214, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v213, v221, v220, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v214, v219, v218, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v198, s27, v109
	v_add_nc_u32_e32 v201, s27, v106
	v_add_nc_u32_e32 v202, s27, v105
	v_add_nc_u32_e32 v204, s27, v103
	v_add_nc_u32_e32 v205, s27, v102
	v_add_nc_u32_e32 v206, s27, v101
	v_add_nc_u32_e32 v207, s27, v100
	v_add_nc_u32_e32 v208, s27, v99
	v_add_nc_u32_e32 v209, s27, v98
	v_add_nc_u32_e32 v210, s27, v97
	v_add_nc_u32_e32 v231, s27, v65
	v_add_nc_u32_e32 v232, s27, v64
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v183, 16, v182
	v_lshl_or_b32 v185, v185, 16, v184
	v_lshl_or_b32 v184, v212, 16, v211
	v_lshl_or_b32 v183, v214, 16, v213
	ds_load_u8 v199, v199
	ds_load_u8 v200, v200
	ds_load_u8 v197, v197
	ds_load_u8 v203, v203
	ds_load_u8 v204, v204
	ds_load_u8 v201, v201
	ds_load_u8 v202, v202
	ds_load_u8 v198, v198
	ds_load_u8 v207, v207
	ds_load_u8 v208, v208
	ds_load_u8 v205, v205
	ds_load_u8 v212, v231
	ds_load_u8 v213, v232
	ds_load_u8 v209, v209
	ds_load_u8 v210, v210
	ds_load_u8 v206, v206
	v_perm_b32 v227, v162, v163, 0xc0c0004
	v_perm_b32 v228, v164, v165, 0xc0c0004
	v_perm_b32 v229, v158, v159, 0xc0c0004
	v_perm_b32 v230, v160, v161, 0xc0c0004
	v_perm_b32 v182, v226, v225, 0xc0c0004
	v_perm_b32 v211, v223, v222, 0xc0c0004
	v_lshl_or_b32 v5, v228, 16, v227
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v191, s27, v116
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v4, v230, 16, v229
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v192, s27, v115
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v182, v211, 16, v182
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v193, s27, v114
	v_add_nc_u32_e32 v194, s27, v113
	v_add_nc_u32_e32 v195, s27, v112
	v_add_nc_u32_e32 v196, s27, v111
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[182:185], v[2:5], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v2, v138, v139, 0xc0c0004
	v_perm_b32 v3, v140, v141, 0xc0c0004
	v_perm_b32 v182, v134, v135, 0xc0c0004
	v_perm_b32 v183, v136, v137, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v184, v200, v199, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v185, v198, v197, 0xc0c0004
	v_perm_b32 v197, v204, v203, 0xc0c0004
	v_perm_b32 v198, v202, v201, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v199, v208, v207, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v200, v206, v205, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v217, s27, v63
	v_add_nc_u32_e32 v218, s27, v62
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v183, 16, v182
	v_lshl_or_b32 v185, v185, 16, v184
	v_lshl_or_b32 v184, v198, 16, v197
	v_lshl_or_b32 v183, v200, 16, v199
	ds_load_u8 v17, v17
	ds_load_u8 v186, v186
	ds_load_u8 v6, v6
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v7, v7
	ds_load_u8 v193, v193
	ds_load_u8 v194, v194
	ds_load_u8 v191, v191
	ds_load_u8 v198, v217
	ds_load_u8 v199, v218
	ds_load_u8 v195, v195
	ds_load_u8 v196, v196
	ds_load_u8 v192, v192
	v_perm_b32 v211, v146, v147, 0xc0c0004
	v_perm_b32 v214, v148, v149, 0xc0c0004
	v_perm_b32 v215, v142, v143, 0xc0c0004
	v_perm_b32 v216, v144, v145, 0xc0c0004
	v_perm_b32 v182, v213, v212, 0xc0c0004
	v_perm_b32 v197, v210, v209, 0xc0c0004
	v_lshl_or_b32 v5, v214, 16, v211
	v_perm_b32 v200, v132, v133, 0xc0c0004
	v_lshl_or_b32 v4, v216, 16, v215
	v_perm_b32 v201, v126, v127, 0xc0c0004
	v_lshl_or_b32 v182, v197, 16, v182
	v_perm_b32 v197, v130, v131, 0xc0c0004
	v_perm_b32 v202, v128, v129, 0xc0c0004
	v_perm_b32 v203, v23, v24, 0xc0c0004
	v_perm_b32 v204, v25, v26, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[182:185], v[2:5], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v2, v19, v20, 0xc0c0004
	v_perm_b32 v182, v21, v22, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v17, v186, v17, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_perm_b32 v7, v190, v189, 0xc0c0004
	v_perm_b32 v183, v188, v187, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v186, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v192, v191, 0xc0c0004
	v_perm_b32 v188, v199, v198, 0xc0c0004
	v_perm_b32 v189, v196, v195, 0xc0c0004
	v_lshl_or_b32 v5, v200, 16, v197
	v_lshl_or_b32 v4, v202, 16, v201
	v_lshl_or_b32 v3, v204, 16, v203
	v_lshl_or_b32 v2, v182, 16, v2
	v_lshl_or_b32 v185, v6, 16, v17
	v_lshl_or_b32 v184, v183, 16, v7
	v_lshl_or_b32 v183, v187, 16, v186
	v_lshl_or_b32 v182, v189, 16, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[182:185], v[2:5], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v7, v12
	v_cvt_f32_i32_e32 v2, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v14
	v_cvt_f32_i32_e32 v4, v15
	v_cvt_f32_i32_e32 v5, v16
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v13, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v13, s10, v80
	v_add_nc_u32_e32 v14, s10, v79
	v_add_nc_u32_e32 v11, s10, v82
	v_add_nc_u32_e32 v222, s10, v76
	v_add_nc_u32_e32 v220, s10, v78
	v_add_nc_u32_e32 v221, s10, v77
	v_add_nc_u32_e32 v223, s10, v75
	v_add_nc_u32_e32 v224, s10, v74
	v_add_nc_u32_e32 v225, s10, v73
	v_add_nc_u32_e32 v226, s10, v72
	v_add_nc_u32_e32 v227, s10, v71
	v_add_nc_u32_e32 v228, s10, v70
	v_add_nc_u32_e32 v229, s10, v69
	v_add_nc_u32_e32 v230, s10, v68
	v_add_nc_u32_e32 v231, s10, v1
	v_add_nc_u32_e32 v12, s10, v81
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v232, v13
	ds_load_u8 v233, v14
	ds_load_u8 v234, v11
	ds_load_u8 v222, v222
	ds_load_u8 v223, v223
	ds_load_u8 v220, v220
	ds_load_u8 v221, v221
	ds_load_u8 v235, v12
	ds_load_u8 v226, v226
	ds_load_u8 v227, v227
	ds_load_u8 v224, v224
	ds_load_u8 v230, v230
	ds_load_u8 v231, v231
	ds_load_u8 v228, v228
	ds_load_u8 v229, v229
	ds_load_u8 v225, v225
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v13, v174, v175, 0xc0c0004
	v_perm_b32 v174, v176, v177, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v208, s10, v94
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v11, v178, v179, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v209, s10, v93
	v_add_nc_u32_e32 v206, s10, v96
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v13, v174, 16, v13
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v212, s10, v90
	v_add_nc_u32_e32 v207, s10, v95
	v_add_nc_u32_e32 v210, s10, v92
	v_add_nc_u32_e32 v211, s10, v91
	v_add_nc_u32_e32 v213, s10, v89
	v_add_nc_u32_e32 v214, s10, v88
	v_add_nc_u32_e32 v215, s10, v87
	v_add_nc_u32_e32 v216, s10, v86
	v_add_nc_u32_e32 v217, s10, v85
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v174, v231, v230, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v218, s10, v84
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v178, v229, v228, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v219, s10, v83
	v_add_nc_u32_e32 v236, s10, v67
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v12, v180, v181, 0xc0c0004
	v_perm_b32 v170, v170, v171, 0xc0c0004
	v_perm_b32 v171, v172, v173, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v173, s10, v66
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v174, v178, 16, v174
	ds_load_u8 v178, v208
	ds_load_u8 v179, v209
	ds_load_u8 v180, v206
	ds_load_u8 v181, v212
	ds_load_u8 v206, v213
	ds_load_u8 v208, v210
	ds_load_u8 v209, v211
	ds_load_u8 v207, v207
	ds_load_u8 v210, v216
	ds_load_u8 v211, v217
	ds_load_u8 v212, v214
	ds_load_u8 v213, v236
	ds_load_u8 v214, v173
	ds_load_u8 v216, v218
	ds_load_u8 v217, v219
	ds_load_u8 v215, v215
	v_perm_b32 v166, v166, v167, 0xc0c0004
	v_perm_b32 v167, v168, v169, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v15, s10, v123
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v14, v12, 16, v11
	v_lshl_or_b32 v12, v171, 16, v170
	v_perm_b32 v168, v235, v234, 0xc0c0004
	v_lshl_or_b32 v11, v167, 16, v166
	v_perm_b32 v167, v233, v232, 0xc0c0004
	v_perm_b32 v169, v223, v222, 0xc0c0004
	v_perm_b32 v170, v221, v220, 0xc0c0004
	v_perm_b32 v171, v227, v226, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v172, v225, v224, 0xc0c0004
	v_mov_b32_e32 v166, 0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v8, s10, v124
	v_add_nc_u32_e32 v16, s10, v122
	v_add_nc_u32_e32 v17, s10, v121
	v_add_nc_u32_e32 v182, s10, v120
	v_add_nc_u32_e32 v183, s10, v119
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v173, v166 :: v_dual_add_nc_u32 v184, s10, v118
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v185, s10, v117
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v177, v168, 16, v167
	v_lshl_or_b32 v176, v170, 16, v169
	v_lshl_or_b32 v175, v172, 16, v171
	v_mov_b32_e32 v167, v166
	v_mov_b32_e32 v168, v166
	v_mov_b32_e32 v169, v166
	v_mov_b32_e32 v170, v166
	v_mov_b32_e32 v171, v166
	v_mov_b32_e32 v172, v166
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v194, s10, v108
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v162, v162, v163, 0xc0c0004
	v_perm_b32 v163, v164, v165, 0xc0c0004
	v_perm_b32 v158, v158, v159, 0xc0c0004
	v_perm_b32 v159, v160, v161, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[166:173], v[174:177], v[11:14], v[166:173] neg_lo:[1,1,0]
	v_perm_b32 v11, v154, v155, 0xc0c0004
	v_perm_b32 v12, v156, v157, 0xc0c0004
	v_perm_b32 v150, v150, v151, 0xc0c0004
	v_perm_b32 v151, v152, v153, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v152, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v153, v207, v180, 0xc0c0004
	v_perm_b32 v154, v206, v181, 0xc0c0004
	v_perm_b32 v155, v209, v208, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v156, v211, v210, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v215, v212, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v195, s10, v107
	v_add_nc_u32_e32 v192, s10, v110
	v_add_nc_u32_e32 v198, s10, v104
	v_add_nc_u32_e32 v199, s10, v103
	v_add_nc_u32_e32 v160, s10, v65
	v_add_nc_u32_e32 v161, s10, v64
	v_add_nc_u32_e32 v193, s10, v109
	v_add_nc_u32_e32 v196, s10, v106
	v_add_nc_u32_e32 v197, s10, v105
	v_add_nc_u32_e32 v200, s10, v102
	v_add_nc_u32_e32 v201, s10, v101
	v_add_nc_u32_e32 v202, s10, v100
	v_add_nc_u32_e32 v203, s10, v99
	v_add_nc_u32_e32 v204, s10, v98
	v_add_nc_u32_e32 v205, s10, v97
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v14, v163, 16, v162
	v_lshl_or_b32 v13, v159, 16, v158
	v_lshl_or_b32 v12, v12, 16, v11
	v_lshl_or_b32 v11, v151, 16, v150
	v_lshl_or_b32 v153, v153, 16, v152
	v_lshl_or_b32 v152, v155, 16, v154
	v_lshl_or_b32 v151, v157, 16, v156
	ds_load_u8 v155, v194
	ds_load_u8 v156, v195
	ds_load_u8 v157, v192
	ds_load_u8 v158, v198
	ds_load_u8 v159, v199
	ds_load_u8 v162, v196
	ds_load_u8 v163, v197
	ds_load_u8 v164, v193
	ds_load_u8 v165, v202
	ds_load_u8 v174, v203
	ds_load_u8 v175, v200
	ds_load_u8 v160, v160
	ds_load_u8 v161, v161
	ds_load_u8 v176, v204
	ds_load_u8 v177, v205
	ds_load_u8 v178, v201
	v_perm_b32 v150, v214, v213, 0xc0c0004
	v_perm_b32 v154, v217, v216, 0xc0c0004
	v_perm_b32 v146, v146, v147, 0xc0c0004
	v_perm_b32 v147, v148, v149, 0xc0c0004
	v_perm_b32 v142, v142, v143, 0xc0c0004
	v_perm_b32 v143, v144, v145, 0xc0c0004
	v_lshl_or_b32 v150, v154, 16, v150
	v_perm_b32 v134, v134, v135, 0xc0c0004
	v_perm_b32 v135, v136, v137, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v136, v156, v155, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v144, s10, v63
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[166:173], v[150:153], v[11:14], v[166:173] neg_lo:[1,1,0]
	v_perm_b32 v11, v138, v139, 0xc0c0004
	v_perm_b32 v12, v140, v141, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v137, v164, v157, 0xc0c0004
	v_perm_b32 v138, v159, v158, 0xc0c0004
	v_perm_b32 v139, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v140, v174, v165, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v145, s10, v62
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v178, v175, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v186, s10, v116
	v_add_nc_u32_e32 v187, s10, v115
	v_add_nc_u32_e32 v188, s10, v114
	v_add_nc_u32_e32 v189, s10, v113
	v_add_nc_u32_e32 v190, s10, v112
	v_add_nc_u32_e32 v191, s10, v111
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v14, v147, 16, v146
	v_lshl_or_b32 v13, v143, 16, v142
	v_lshl_or_b32 v12, v12, 16, v11
	v_lshl_or_b32 v11, v135, 16, v134
	v_lshl_or_b32 v137, v137, 16, v136
	v_lshl_or_b32 v136, v139, 16, v138
	v_lshl_or_b32 v135, v141, 16, v140
	ds_load_u8 v16, v16
	ds_load_u8 v17, v17
	ds_load_u8 v8, v8
	ds_load_u8 v139, v184
	ds_load_u8 v140, v185
	ds_load_u8 v141, v182
	ds_load_u8 v142, v183
	ds_load_u8 v15, v15
	ds_load_u8 v143, v188
	ds_load_u8 v146, v189
	ds_load_u8 v147, v186
	ds_load_u8 v144, v144
	ds_load_u8 v145, v145
	ds_load_u8 v148, v190
	ds_load_u8 v149, v191
	ds_load_u8 v150, v187
	v_perm_b32 v134, v161, v160, 0xc0c0004
	v_perm_b32 v138, v177, v176, 0xc0c0004
	v_perm_b32 v23, v23, v24, 0xc0c0004
	v_perm_b32 v24, v25, v26, 0xc0c0004
	v_perm_b32 v130, v130, v131, 0xc0c0004
	v_perm_b32 v131, v132, v133, 0xc0c0004
	v_lshl_or_b32 v134, v138, 16, v134
	v_perm_b32 v126, v126, v127, 0xc0c0004
	v_perm_b32 v127, v128, v129, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v17, v142, v141, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[166:173], v[134:137], v[11:14], v[166:173] neg_lo:[1,1,0]
	v_lshl_or_b32 v12, v24, 16, v23
	v_perm_b32 v11, v19, v20, 0xc0c0004
	v_perm_b32 v19, v21, v22, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v15, v8, 0xc0c0004
	v_perm_b32 v15, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v146, v143, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v24, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v150, v147, 0xc0c0004
	v_perm_b32 v25, v149, v148, 0xc0c0004
	v_lshl_or_b32 v14, v131, 16, v130
	v_lshl_or_b32 v13, v127, 16, v126
	v_lshl_or_b32 v11, v19, 16, v11
	v_lshl_or_b32 v22, v8, 16, v16
	v_lshl_or_b32 v21, v17, 16, v15
	v_lshl_or_b32 v20, v23, 16, v20
	v_lshl_or_b32 v19, v25, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[166:173], v[19:22], v[11:14], v[166:173] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v15, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v16, v169
	v_cvt_f32_i32_e32 v11, v170
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v12, v171
	v_cvt_f32_i32_e32 v13, v172
	v_cvt_f32_i32_e32 v14, v173
	v_cvt_f32_i32_e32 v8, v166
	v_cvt_f32_i32_e32 v17, v167
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s26, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(15)
	v_add_lshl_u32 v19, v61, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt lgkmcnt(14)
	v_add_lshl_u32 v20, v59, s0, 1
	s_waitcnt lgkmcnt(13)
	v_add_lshl_u32 v21, v60, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt lgkmcnt(12)
	v_add_lshl_u32 v22, v58, s0, 1
	s_waitcnt lgkmcnt(11)
	v_add_lshl_u32 v23, v56, s0, 1
	s_waitcnt lgkmcnt(8)
	v_add_lshl_u32 v26, v53, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(3)
	buffer_load_u16 v130, v19, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v19, 0x80000000, v20 :: v_dual_cndmask_b32 v22, 0x80000000, v22
	v_cndmask_b32_e32 v20, 0x80000000, v21, vcc_lo
	v_add_lshl_u32 v21, v57, s0, 1
	v_add_lshl_u32 v24, v55, s0, 1
	v_add_lshl_u32 v25, v54, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v129, s0, v52, 1
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v133, s0, v51, 1
	v_add_lshl_u32 v134, s0, v50, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_cndmask_b32 v128, 0x80000000, v24
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	s_clause 0x7
	buffer_load_u16 v132, v19, s[24:27], 0 offen
	buffer_load_u16 v131, v20, s[24:27], 0 offen
	buffer_load_u16 v127, v22, s[24:27], 0 offen
	buffer_load_u16 v126, v21, s[24:27], 0 offen
	buffer_load_u16 v24, v23, s[24:27], 0 offen
	buffer_load_u16 v23, v128, s[24:27], 0 offen
	buffer_load_u16 v20, v25, s[24:27], 0 offen
	buffer_load_u16 v19, v26, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v26, s0, v48, 1
	v_add_lshl_u32 v128, s0, v46, 1
	v_dual_cndmask_b32 v22, 0x80000000, v133 :: v_dual_cndmask_b32 v25, 0x80000000, v134
	v_add_lshl_u32 v133, s0, v47, 1
	v_add_lshl_u32 v134, s0, v45, 1
	v_cndmask_b32_e32 v21, 0x80000000, v129, vcc_lo
	v_add_lshl_u32 v129, s0, v49, 1
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v125, s49, v125
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v135, 0x80000000, v128
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v136, 0x80000000, v129, vcc_lo
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v18, s49, v18
	v_dual_cndmask_b32 v137, 0x80000000, v133 :: v_dual_cndmask_b32 v138, 0x80000000, v134
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v150, v125 offset:896
	ds_load_u8_d16 v151, v125 offset:912
	ds_load_u8_d16 v152, v125 offset:928
	ds_load_u8_d16 v153, v125 offset:944
	ds_load_u8_d16 v154, v125 offset:960
	ds_load_u8_d16 v155, v125 offset:976
	ds_load_u8_d16 v156, v125 offset:992
	ds_load_u8_d16 v157, v18
	v_mov_b32_e32 v18, 0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_clause 0x7
	buffer_load_u16 v134, v21, s[24:27], 0 offen
	buffer_load_u16 v133, v22, s[24:27], 0 offen
	buffer_load_u16 v129, v25, s[24:27], 0 offen
	buffer_load_u16 v128, v26, s[24:27], 0 offen
	buffer_load_u16 v26, v135, s[24:27], 0 offen
	buffer_load_u16 v25, v136, s[24:27], 0 offen
	buffer_load_u16 v22, v137, s[24:27], 0 offen
	buffer_load_u16 v21, v138, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v190, v125
	ds_load_u8_d16 v191, v125 offset:16
	ds_load_u8_d16 v192, v125 offset:32
	ds_load_u8_d16 v193, v125 offset:48
	ds_load_u8_d16 v194, v125 offset:64
	ds_load_u8_d16 v195, v125 offset:80
	ds_load_u8_d16 v196, v125 offset:96
	ds_load_u8_d16 v197, v125 offset:112
	ds_load_u8_d16 v198, v125 offset:128
	ds_load_u8_d16 v199, v125 offset:144
	ds_load_u8_d16 v200, v125 offset:160
	ds_load_u8_d16 v201, v125 offset:176
	ds_load_u8_d16 v202, v125 offset:192
	ds_load_u8_d16 v203, v125 offset:208
	ds_load_u8_d16 v204, v125 offset:224
	ds_load_u8_d16 v205, v125 offset:240
	ds_load_u8_d16 v174, v125 offset:256
	ds_load_u8_d16 v175, v125 offset:272
	ds_load_u8_d16 v176, v125 offset:288
	ds_load_u8_d16 v177, v125 offset:304
	ds_load_u8_d16 v178, v125 offset:320
	ds_load_u8_d16 v179, v125 offset:336
	ds_load_u8_d16 v180, v125 offset:352
	ds_load_u8_d16 v181, v125 offset:368
	ds_load_u8_d16 v182, v125 offset:384
	ds_load_u8_d16 v183, v125 offset:400
	ds_load_u8_d16 v184, v125 offset:416
	ds_load_u8_d16 v185, v125 offset:432
	ds_load_u8_d16 v186, v125 offset:448
	ds_load_u8_d16 v187, v125 offset:464
	ds_load_u8_d16 v188, v125 offset:480
	ds_load_u8_d16 v189, v125 offset:496
	ds_load_u8_d16 v158, v125 offset:512
	ds_load_u8_d16 v159, v125 offset:528
	ds_load_u8_d16 v160, v125 offset:544
	ds_load_u8_d16 v161, v125 offset:560
	ds_load_u8_d16 v162, v125 offset:576
	ds_load_u8_d16 v163, v125 offset:592
	ds_load_u8_d16 v164, v125 offset:608
	ds_load_u8_d16 v165, v125 offset:624
	ds_load_u8_d16 v166, v125 offset:640
	ds_load_u8_d16 v167, v125 offset:656
	ds_load_u8_d16 v168, v125 offset:672
	ds_load_u8_d16 v169, v125 offset:688
	ds_load_u8_d16 v170, v125 offset:704
	ds_load_u8_d16 v171, v125 offset:720
	ds_load_u8_d16 v172, v125 offset:736
	ds_load_u8_d16 v173, v125 offset:752
	ds_load_u8_d16 v142, v125 offset:768
	ds_load_u8_d16 v143, v125 offset:784
	ds_load_u8_d16 v144, v125 offset:800
	ds_load_u8_d16 v145, v125 offset:816
	ds_load_u8_d16 v146, v125 offset:832
	ds_load_u8_d16 v147, v125 offset:848
	ds_load_u8_d16 v148, v125 offset:864
	ds_load_u8_d16 v149, v125 offset:880
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v125, 0, 1, s2
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v125
	v_mov_b32_e32 v125, 0
	v_mov_b32_e32 v139, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v125, v202, v203, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v135, v204, v205, 0xc0c0004
	v_perm_b32 v136, v198, v199, 0xc0c0004
	v_perm_b32 v137, v200, v201, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v79
	v_add_nc_u32_e32 v140, s45, v81
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v138, v135, 16, v125
	v_perm_b32 v125, v194, v195, 0xc0c0004
	v_perm_b32 v135, v196, v197, 0xc0c0004
	v_lshl_or_b32 v137, v137, 16, v136
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v206, s45, v77
	v_add_nc_u32_e32 v141, s45, v75
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	ds_load_u8 v140, v140
	v_lshl_or_b32 v136, v135, 16, v125
	v_perm_b32 v125, v190, v191, 0xc0c0004
	v_perm_b32 v135, v192, v193, 0xc0c0004
	ds_load_u8 v206, v206
	ds_load_u8 v141, v141
	v_lshl_or_b32 v135, v135, 16, v125
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v125, s45, v80
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v125, v125
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v139, v125, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v82
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s45, v76
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v217, v139, 16, v125
	ds_load_u8 v140, v140
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v125, s45, v72
	v_add_nc_u32_e32 v139, s45, v71
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v125, v125
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v141, s45, v78
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v125, v139, v125, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v74
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v141, v206, v141, 0xc0c0004
	v_mov_b32_e32 v206, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v216, v141, 16, v140
	v_dual_mov_b32 v211, v206 :: v_dual_add_nc_u32 v140, s45, v73
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v141, s45, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v207, v206
	v_mov_b32_e32 v208, v206
	ds_load_u8 v140, v140
	v_mov_b32_e32 v209, v206
	v_mov_b32_e32 v210, v206
	v_mov_b32_e32 v212, v206
	v_mov_b32_e32 v213, v206
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s45, v69
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v215, v139, 16, v125
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v125, s45, v68
	v_add_nc_u32_e32 v139, s45, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v140, v140
	ds_load_u8 v125, v125
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v139, v125, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v70
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s45, v95
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v214, v139, 16, v125
	v_perm_b32 v125, v186, v187, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v93
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v140, v140
	v_wmma_i32_16x16x16_iu8 v[206:213], v[214:217], v[135:138], v[206:213] neg_lo:[1,1,0]
	v_perm_b32 v135, v188, v189, 0xc0c0004
	v_perm_b32 v136, v182, v183, 0xc0c0004
	v_perm_b32 v137, v184, v185, 0xc0c0004
	ds_load_u8 v139, v139
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v214, s45, v91
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v138, v135, 16, v125
	v_perm_b32 v125, v178, v179, 0xc0c0004
	v_perm_b32 v135, v180, v181, 0xc0c0004
	v_lshl_or_b32 v137, v137, 16, v136
	ds_load_u8 v214, v214
	v_lshl_or_b32 v136, v135, 16, v125
	v_perm_b32 v125, v174, v175, 0xc0c0004
	v_perm_b32 v135, v176, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v135, 16, v125
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v125, s45, v94
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v125, v125
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v139, v125, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v96
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s45, v90
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v217, v139, 16, v125
	ds_load_u8 v140, v140
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v125, s45, v86
	v_add_nc_u32_e32 v139, s45, v85
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v125, v125
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v141, s45, v92
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v125, v139, v125, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v141, v214, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v216, v141, 16, v140
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s45, v87
	v_add_nc_u32_e32 v141, s45, v103
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v140, v140
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s45, v83
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v215, v139, 16, v125
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v125, s45, v67
	v_add_nc_u32_e32 v139, s45, v66
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v140, v140
	ds_load_u8 v125, v125
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v139, v125, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v84
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s45, v109
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v214, v139, 16, v125
	v_perm_b32 v125, v170, v171, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v107
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v140, v140
	v_wmma_i32_16x16x16_iu8 v[206:213], v[214:217], v[135:138], v[206:213] neg_lo:[1,1,0]
	v_perm_b32 v135, v172, v173, 0xc0c0004
	v_perm_b32 v136, v166, v167, 0xc0c0004
	v_perm_b32 v137, v168, v169, 0xc0c0004
	ds_load_u8 v139, v139
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v214, s45, v105
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v138, v135, 16, v125
	v_perm_b32 v125, v162, v163, 0xc0c0004
	v_perm_b32 v135, v164, v165, 0xc0c0004
	v_lshl_or_b32 v137, v137, 16, v136
	ds_load_u8 v214, v214
	v_lshl_or_b32 v136, v135, 16, v125
	v_perm_b32 v125, v158, v159, 0xc0c0004
	v_perm_b32 v135, v160, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v135, 16, v125
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v125, s45, v108
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v125, v125
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v139, v125, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v110
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s45, v104
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v217, v139, 16, v125
	ds_load_u8 v140, v140
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v125, s45, v100
	v_add_nc_u32_e32 v139, s45, v99
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v125, v125
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v141, s45, v106
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v125, v139, v125, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v102
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v141, v214, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v216, v141, 16, v140
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s45, v101
	v_add_nc_u32_e32 v141, s45, v117
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v140, v140
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s45, v97
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v215, v139, 16, v125
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v125, s45, v65
	v_add_nc_u32_e32 v139, s45, v64
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v140, v140
	ds_load_u8 v125, v125
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v139, v125, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v98
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s45, v123
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v214, v139, 16, v125
	v_perm_b32 v125, v154, v155, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v140, v140
	v_wmma_i32_16x16x16_iu8 v[206:213], v[214:217], v[135:138], v[206:213] neg_lo:[1,1,0]
	v_perm_b32 v135, v156, v157, 0xc0c0004
	v_perm_b32 v136, v150, v151, 0xc0c0004
	v_perm_b32 v137, v152, v153, 0xc0c0004
	ds_load_u8 v139, v139
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v214, s45, v119
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v138, v135, 16, v125
	v_perm_b32 v125, v146, v147, 0xc0c0004
	v_perm_b32 v135, v148, v149, 0xc0c0004
	v_lshl_or_b32 v137, v137, 16, v136
	ds_load_u8 v214, v214
	v_lshl_or_b32 v136, v135, 16, v125
	v_perm_b32 v125, v142, v143, 0xc0c0004
	v_perm_b32 v135, v144, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v135, 16, v125
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v125, s45, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v125, v125
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v139, v125, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s45, v118
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v217, v139, 16, v125
	ds_load_u8 v140, v140
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v125, s45, v114
	v_add_nc_u32_e32 v139, s45, v113
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v125, v125
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v141, s45, v120
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v125, v139, v125, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v116
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v141, v214, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v216, v141, 16, v140
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s45, v115
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v140, v140
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s45, v111
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v215, v139, 16, v125
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v125, s45, v63
	v_add_nc_u32_e32 v139, s45, v62
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v140, v140
	ds_load_u8 v125, v125
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v139, v125, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s45, v112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v214, v139, 16, v125
	v_wmma_i32_16x16x16_iu8 v[206:213], v[214:217], v[135:138], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v136, v208
	v_cvt_f32_i32_e32 v137, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v125, v210
	v_cvt_f32_i32_e32 v135, v211
	v_cvt_f32_i32_e32 v138, v212
	v_cvt_f32_i32_e32 v139, v213
	v_cvt_f32_i32_e32 v140, v206
	v_cvt_f32_i32_e32 v141, v207
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v211, 0
	v_mov_b32_e32 v212, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v80, s44, v80
	v_add_nc_u32_e32 v79, s44, v79
	v_add_nc_u32_e32 v82, s44, v82
	v_add_nc_u32_e32 v76, s44, v76
	v_add_nc_u32_e32 v81, s44, v81
	v_add_nc_u32_e32 v78, s44, v78
	v_add_nc_u32_e32 v75, s44, v75
	v_add_nc_u32_e32 v73, s44, v73
	v_add_nc_u32_e32 v72, s44, v72
	v_add_nc_u32_e32 v71, s44, v71
	v_add_nc_u32_e32 v70, s44, v70
	v_add_nc_u32_e32 v69, s44, v69
	v_add_nc_u32_e32 v68, s44, v68
	v_add_nc_u32_e32 v1, s44, v1
	v_add_nc_u32_e32 v123, s44, v123
	v_add_nc_u32_e32 v77, s44, v77
	v_add_nc_u32_e32 v74, s44, v74
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v190, v190, v191, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v191, v192, v193, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v192, s44, v66
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v66, 0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v18, s44, v124
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v80, v80
	ds_load_u8 v79, v79
	ds_load_u8 v82, v82
	ds_load_u8 v124, v76
	ds_load_u8 v206, v75
	ds_load_u8 v78, v78
	ds_load_u8 v207, v77
	ds_load_u8 v81, v81
	ds_load_u8 v72, v72
	ds_load_u8 v71, v71
	ds_load_u8 v208, v74
	ds_load_u8 v68, v68
	ds_load_u8 v1, v1
	ds_load_u8 v70, v70
	ds_load_u8 v69, v69
	ds_load_u8 v73, v73
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v209, s44, v67
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v67, v202, v203, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v74, v204, v205, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v94, s44, v94
	v_add_nc_u32_e32 v93, s44, v93
	v_add_nc_u32_e32 v96, s44, v96
	v_add_nc_u32_e32 v90, s44, v90
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v77, v74, 16, v67
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v67, v79, v80, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v80, v206, v124, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v78, v207, v78, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v95, s44, v95
	v_add_nc_u32_e32 v92, s44, v92
	v_add_nc_u32_e32 v91, s44, v91
	v_add_nc_u32_e32 v89, s44, v89
	v_add_nc_u32_e32 v88, s44, v88
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v1, v68, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v87, s44, v87
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v69, v70, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v86, s44, v86
	v_add_nc_u32_e32 v85, s44, v85
	v_add_nc_u32_e32 v84, s44, v84
	v_add_nc_u32_e32 v83, s44, v83
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v79, v81, v82, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v80
	v_lshl_or_b32 v78, v68, 16, v1
	ds_load_u8 v1, v94
	ds_load_u8 v82, v93
	ds_load_u8 v93, v96
	ds_load_u8 v90, v90
	ds_load_u8 v89, v89
	ds_load_u8 v92, v92
	ds_load_u8 v91, v91
	ds_load_u8 v94, v95
	ds_load_u8 v86, v86
	ds_load_u8 v85, v85
	ds_load_u8 v88, v88
	ds_load_u8 v95, v209
	ds_load_u8 v96, v192
	ds_load_u8 v84, v84
	ds_load_u8 v83, v83
	ds_load_u8 v87, v87
	v_perm_b32 v75, v198, v199, 0xc0c0004
	v_perm_b32 v76, v200, v201, 0xc0c0004
	v_perm_b32 v194, v194, v195, 0xc0c0004
	v_perm_b32 v195, v196, v197, 0xc0c0004
	v_perm_b32 v71, v71, v72, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v72, v73, v208, 0xc0c0004
	v_dual_mov_b32 v69, v66 :: v_dual_add_nc_u32 v122, s44, v122
	v_dual_mov_b32 v68, v66 :: v_dual_add_nc_u32 v121, s44, v121
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v120, s44, v120
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v70, v66 :: v_dual_add_nc_u32 v119, s44, v119
	v_dual_mov_b32 v73, v66 :: v_dual_add_nc_u32 v118, s44, v118
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v117, s44, v117
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v76, v76, 16, v75
	v_lshl_or_b32 v75, v195, 16, v194
	v_lshl_or_b32 v74, v191, 16, v190
	v_lshl_or_b32 v81, v79, 16, v67
	v_lshl_or_b32 v79, v72, 16, v71
	v_mov_b32_e32 v67, v66
	v_mov_b32_e32 v71, v66
	v_mov_b32_e32 v72, v66
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v108, s44, v108
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v82, v1, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v82, v89, v90, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v89, v91, v92, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[78:81], v[74:77], v[66:73] neg_lo:[1,1,0]
	v_perm_b32 v74, v178, v179, 0xc0c0004
	v_perm_b32 v75, v180, v181, 0xc0c0004
	v_perm_b32 v78, v174, v175, 0xc0c0004
	v_perm_b32 v79, v176, v177, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v80, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v85, v85, v86, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v88, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v107, s44, v107
	v_add_nc_u32_e32 v110, s44, v110
	v_add_nc_u32_e32 v104, s44, v104
	v_add_nc_u32_e32 v103, s44, v103
	v_add_nc_u32_e32 v97, s44, v97
	v_add_nc_u32_e32 v109, s44, v109
	v_add_nc_u32_e32 v106, s44, v106
	v_add_nc_u32_e32 v105, s44, v105
	v_add_nc_u32_e32 v102, s44, v102
	v_add_nc_u32_e32 v101, s44, v101
	v_add_nc_u32_e32 v100, s44, v100
	v_add_nc_u32_e32 v99, s44, v99
	v_add_nc_u32_e32 v98, s44, v98
	v_add_nc_u32_e32 v65, s44, v65
	v_add_nc_u32_e32 v64, s44, v64
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v75, v75, 16, v74
	v_lshl_or_b32 v74, v79, 16, v78
	v_lshl_or_b32 v81, v80, 16, v1
	v_lshl_or_b32 v80, v89, 16, v82
	v_lshl_or_b32 v79, v86, 16, v85
	v_perm_b32 v1, v96, v95, 0xc0c0004
	v_perm_b32 v78, v83, v84, 0xc0c0004
	ds_load_u8 v82, v108
	ds_load_u8 v83, v107
	ds_load_u8 v84, v110
	ds_load_u8 v85, v104
	ds_load_u8 v86, v103
	ds_load_u8 v87, v106
	ds_load_u8 v88, v105
	ds_load_u8 v89, v109
	ds_load_u8 v90, v100
	ds_load_u8 v91, v99
	ds_load_u8 v92, v102
	ds_load_u8 v93, v65
	ds_load_u8 v94, v64
	ds_load_u8 v95, v98
	ds_load_u8 v96, v97
	ds_load_u8 v97, v101
	v_perm_b32 v124, v186, v187, 0xc0c0004
	v_perm_b32 v186, v188, v189, 0xc0c0004
	v_perm_b32 v182, v182, v183, 0xc0c0004
	v_perm_b32 v183, v184, v185, 0xc0c0004
	v_lshl_or_b32 v78, v78, 16, v1
	v_perm_b32 v1, v170, v171, 0xc0c0004
	v_lshl_or_b32 v77, v186, 16, v124
	v_perm_b32 v64, v172, v173, 0xc0c0004
	v_lshl_or_b32 v76, v183, 16, v182
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v101, s44, v62
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v62, v164, v165, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v116, s44, v116
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v65, v64, 16, v1
	v_wmma_i32_16x16x16_iu8 v[66:73], v[78:81], v[74:77], v[66:73] neg_lo:[1,1,0]
	v_perm_b32 v1, v162, v163, 0xc0c0004
	v_perm_b32 v74, v158, v159, 0xc0c0004
	v_perm_b32 v75, v160, v161, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v76, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v77, v89, v84, 0xc0c0004
	v_perm_b32 v78, v86, v85, 0xc0c0004
	v_perm_b32 v79, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v80, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v97, v92, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v115, s44, v115
	v_add_nc_u32_e32 v114, s44, v114
	v_add_nc_u32_e32 v113, s44, v113
	v_add_nc_u32_e32 v112, s44, v112
	v_add_nc_u32_e32 v111, s44, v111
	v_add_nc_u32_e32 v100, s44, v63
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v63, v62, 16, v1
	v_lshl_or_b32 v62, v75, 16, v74
	v_lshl_or_b32 v77, v77, 16, v76
	v_lshl_or_b32 v76, v79, 16, v78
	v_lshl_or_b32 v75, v81, 16, v80
	ds_load_u8 v78, v122
	ds_load_u8 v79, v121
	ds_load_u8 v18, v18
	ds_load_u8 v80, v118
	ds_load_u8 v81, v117
	ds_load_u8 v82, v120
	ds_load_u8 v83, v119
	ds_load_u8 v84, v123
	ds_load_u8 v85, v114
	ds_load_u8 v86, v113
	ds_load_u8 v87, v116
	ds_load_u8 v88, v100
	ds_load_u8 v89, v101
	ds_load_u8 v90, v112
	ds_load_u8 v91, v111
	ds_load_u8 v92, v115
	v_perm_b32 v98, v166, v167, 0xc0c0004
	v_perm_b32 v99, v168, v169, 0xc0c0004
	v_perm_b32 v1, v94, v93, 0xc0c0004
	v_perm_b32 v74, v96, v95, 0xc0c0004
	v_perm_b32 v93, v156, v157, 0xc0c0004
	v_perm_b32 v94, v150, v151, 0xc0c0004
	v_lshl_or_b32 v64, v99, 16, v98
	v_perm_b32 v95, v152, v153, 0xc0c0004
	v_lshl_or_b32 v74, v74, 16, v1
	v_perm_b32 v1, v154, v155, 0xc0c0004
	v_perm_b32 v96, v146, v147, 0xc0c0004
	v_perm_b32 v97, v148, v149, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v84, v18, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[74:77], v[62:65], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v65, v93, 16, v1
	v_perm_b32 v1, v142, v143, 0xc0c0004
	v_perm_b32 v62, v144, v145, 0xc0c0004
	v_perm_b32 v74, v79, v78, 0xc0c0004
	v_perm_b32 v75, v81, v80, 0xc0c0004
	v_perm_b32 v76, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v78, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v92, v87, 0xc0c0004
	v_perm_b32 v80, v89, v88, 0xc0c0004
	v_perm_b32 v81, v91, v90, 0xc0c0004
	v_lshl_or_b32 v64, v95, 16, v94
	v_lshl_or_b32 v63, v97, 16, v96
	v_lshl_or_b32 v62, v62, 16, v1
	v_lshl_or_b32 v77, v18, 16, v74
	v_lshl_or_b32 v76, v76, 16, v75
	v_lshl_or_b32 v75, v79, 16, v78
	v_lshl_or_b32 v74, v81, 16, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[74:77], v[62:65], v[66:73] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v18, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v206, v67
	v_cvt_f32_i32_e32 v209, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v210, v69
	v_cvt_f32_i32_e32 v207, v70
	v_cvt_f32_i32_e32 v208, v71
	v_cvt_f32_i32_e32 v211, v72
	v_cvt_f32_i32_e32 v212, v73
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s35, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s35, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v20.h, v133.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v22.h, v131.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v61, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s34
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v59, v59, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v60, v60, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v58, v58, s0, 1
	v_add_lshl_u32 v61, v57, s0, 1
	v_add_lshl_u32 v56, v56, s0, 1
	v_add_lshl_u32 v55, v55, s0, 1
	v_add_lshl_u32 v53, v53, s0, 1
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	v_add_lshl_u32 v54, v54, s0, 1
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v57, v1, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v1, 0x80000000, v58 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	v_cndmask_b32_e32 v58, 0x80000000, v61, vcc_lo
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v62, 0x80000000, v53
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v63, s0, v52, 1
	v_add_lshl_u32 v64, s0, v51, 1
	v_add_lshl_u32 v65, s0, v50, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v61, 0x80000000, v54, vcc_lo
	s_clause 0x7
	buffer_load_u16 v50, v59, s[24:27], 0 offen
	buffer_load_u16 v51, v60, s[24:27], 0 offen
	buffer_load_u16 v52, v1, s[24:27], 0 offen
	buffer_load_u16 v53, v58, s[24:27], 0 offen
	buffer_load_u16 v54, v56, s[24:27], 0 offen
	buffer_load_u16 v55, v55, s[24:27], 0 offen
	buffer_load_u16 v56, v61, s[24:27], 0 offen
	buffer_load_u16 v58, v62, s[24:27], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.l, 0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v48, s0, v48, 1
	v_add_lshl_u32 v46, s0, v46, 1
	v_add_lshl_u32 v49, s0, v49, 1
	v_add_lshl_u32 v47, s0, v47, 1
	v_add_lshl_u32 v45, s0, v45, 1
	v_dual_cndmask_b32 v1, 0x80000000, v63 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v62.h, v130.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v66.h, v22.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v68.h, v20.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v20.l, v62.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v22.l, v62.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v59, 0x80000000, v64 :: v_dual_cndmask_b32 v46, 0x80000000, v46
	v_cndmask_b32_e32 v60, 0x80000000, v65, vcc_lo
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_and_b32 v0, 16, v0
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_mul_f32 v20, v62, v20
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_mul_f32 v22, v62, v22
	s_clause 0x7
	buffer_load_u16 v61, v1, s[24:27], 0 offen
	buffer_load_u16 v59, v59, s[24:27], 0 offen
	buffer_load_u16 v60, v60, s[24:27], 0 offen
	buffer_load_u16 v48, v48, s[24:27], 0 offen
	buffer_load_u16 v46, v46, s[24:27], 0 offen
	buffer_load_u16 v49, v49, s[24:27], 0 offen
	buffer_load_u16 v47, v47, s[24:27], 0 offen
	buffer_load_u16 v45, v45, s[24:27], 0 offen
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v1, v44, s23
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v19.h, v134.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(17)
	v_mov_b16_e64 v21.h, v132.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v23.h, v129.l
	v_mov_b16_e64 v24.h, v128.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v25.h, v127.l
	v_mov_b16_e32 v26.h, v126.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v44.h, v26.l
	v_mov_b16_e32 v63.h, v25.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v64.h, v24.l
	v_mov_b16_e32 v65.h, v23.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v67.h, v21.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v69.h, v19.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v19.l, v62.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v21.l, v62.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v23.l, v62.l
	v_mov_b16_e32 v24.l, v62.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v25.l, v62.l
	v_mov_b16_e32 v26.l, v62.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v44.l, v62.l
	v_mov_b16_e32 v63.l, v62.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v64.l, v62.l
	v_mov_b16_e32 v65.l, v62.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v66.l, v62.l
	v_mov_b16_e32 v67.l, v62.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v68.l, v62.l
	v_mov_b16_e32 v69.l, v62.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v70, 0x5410 :: v_dual_mul_f32 v19, v62, v19
	v_dual_mov_b32 v71, 0x7632 :: v_dual_mul_f32 v24, v62, v24
	v_mov_b16_e32 v72.h, v62.l
	v_mov_b16_e32 v73.h, v62.l
	v_mov_b16_e32 v74.h, v62.l
	v_mov_b16_e32 v75.h, v62.l
	v_mov_b16_e32 v76.h, v62.l
	v_mov_b16_e32 v77.h, v62.l
	v_mov_b16_e32 v78.h, v62.l
	v_mov_b16_e32 v79.h, v62.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v21, v62, v21
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v23, v62, v23
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v26, v62, v26
	v_mul_f32_e32 v25, v62, v25
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v63, v62, v63
	v_mul_f32_e32 v44, v62, v44
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v62, v65
	v_mul_f32_e32 v64, v62, v64
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v67, v62, v67
	v_mul_f32_e32 v66, v62, v66
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v62, v69
	v_mul_f32_e32 v62, v62, v68
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v8, v19, v8, v28
	v_fma_f32 v16, v24, v16, v40
	v_fma_f32 v14, v67, v14, v32
	v_fma_f32 v17, v20, v17, v43
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v62, v4, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v28, v8, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v22, v10, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v32, v14, s3
	v_cndmask_b32_e64 v17, v43, v17, s3
	v_cndmask_b32_e64 v4, v30, v4, s3
	v_cndmask_b32_e64 v16, v40, v16, s3
	v_cndmask_b32_e64 v10, v42, v10, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v19, 16, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v26, v7, v38
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v20, 16, v50
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v21, v9, v41
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v21, 16, v51
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v22, 16, v52
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v24, 16, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v25, v6, v37
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v25, 16, v55
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v13, v66, v13, v31
	v_fma_f32 v15, v23, v15, v39
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v26, 16, v56
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v12, v63, v12, v36
	v_fma_f32 v11, v44, v11, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v31, v13, s3
	v_cndmask_b32_e64 v15, v39, v15, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v23, 16, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v64, v2, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v36, v12, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v28, 16, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v65, v3, v34
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v19, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v35, v11, s3
	v_cndmask_b32_e64 v2, v33, v2, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v19, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v34, v3, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v30, 16, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v69, v5, v29
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v31, 16, v60
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v32, 16, v48
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v33, 16, v46
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v30, v19, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v29, v5, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v29, 16, v61
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v31, v19, v31 :: v_dual_lshlrev_b32 v36, 16, v45
	v_mul_f32_e32 v32, v19, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v23, v19, v23 :: v_dual_lshlrev_b32 v34, 16, v49
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v29, v19, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v24, v19, v24 :: v_dual_lshlrev_b32 v35, 16, v47
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v36, v19, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v41, v9, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v18, v29, v18, v8
	v_fma_f32 v29, v30, v206, v17
	v_fma_f32 v30, v31, v209, v15
	v_fma_f32 v31, v32, v210, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v38, v7, s3
	v_cndmask_b32_e64 v8, v8, v18, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v21, v19, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v17, v29, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v19, v28
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v19, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v16, v31, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v26, v19, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v30, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v25, v19, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v21, v21, v141, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v37, v6, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v20, v140, v9
	v_fma_f32 v23, v23, v137, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v33, v19, v33
	v_mul_f32_e32 v19, v19, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v21, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v16
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v8
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v32, v33, v207, v11
	v_fma_f32 v19, v19, v211, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v136, v6
	v_fma_f32 v24, v24, v125, v2
	v_fma_f32 v26, v26, v138, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v9, v20, s2
	v_cndmask_b32_e64 v13, v13, v19, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v28, v139, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v32, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v25, v135, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v23, s2
	v_cndmask_b32_e64 v6, v6, v22, s2
	v_cndmask_b32_e64 v3, v3, v25, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v24, s2
	v_cndmask_b32_e64 v5, v5, v28, s2
	v_cndmask_b32_e64 v4, v4, v26, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v22, 0xbfb8aa3b, v11 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v17
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v33, v34, v208, v12
	v_fma_f32 v34, v36, v212, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_mul_f32_e32 v24, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v12, v33, s2
	v_cndmask_b32_e64 v14, v14, v34, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v20
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v22, 0, 0x42800000, s4
	v_mul_f32_e32 v23, 0xbfb8aa3b, v12
	v_mul_f32_e32 v25, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v20, 0, 0x42800000, s2
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v24
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v25
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v15
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v23, 0, 0x42800000, s3
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v24, 0, 0x42800000, s6
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v12 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v11
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v14
	v_ldexp_f32 v18, v18, v28
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v19, v19, v26
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v13
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v21, v21, v29
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v24
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v18, v18, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s6
	v_ldexp_f32 v20, v20, v30
	v_ldexp_f32 v22, v22, v32
	v_ldexp_f32 v25, v25, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v43, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v23, v23, v31
	v_ldexp_f32 v24, v24, v34
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v20
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_add_f32 v25, 1.0, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, null, v19, v19, v17
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v21, v21, v16
	v_div_scale_f32 v33, null, v20, v20, v15
	v_div_scale_f32 v39, null, v25, v25, v14
	v_rcp_f32_e32 v42, v26
	v_fma_f32 v52, -v29, v43, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, null, v22, v22, v11
	v_div_scale_f32 v35, null, v23, v23, v12
	v_rcp_f32_e32 v44, v31
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v48, v39
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v41, null, v24, v24, v13
	v_rcp_f32_e32 v47, v37
	v_rcp_f32_e32 v46, v35
	v_fma_f32 v51, -v26, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v49, v41
	v_fma_f32 v53, -v31, v44, 1.0
	v_div_scale_f32 v28, vcc_lo, v17, v19, v17
	v_fma_f32 v54, -v33, v45, 1.0
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v42, v51, v42
	v_div_scale_f32 v30, s0, v8, v18, v8
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v32, s1, v16, v21, v16
	v_fma_f32 v55, -v35, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v44, v53, v44 :: v_dual_fmac_f32 v47, v56, v47
	v_fma_f32 v58, -v41, v49, 1.0
	v_dual_fmac_f32 v45, v54, v45 :: v_dual_fmac_f32 v48, v57, v48
	v_mul_f32_e32 v51, v28, v42
	v_div_scale_f32 v34, s2, v15, v20, v15
	v_dual_mul_f32 v52, v30, v43 :: v_dual_mul_f32 v53, v32, v44
	v_div_scale_f32 v36, s3, v12, v23, v12
	v_dual_fmac_f32 v46, v55, v46 :: v_dual_fmac_f32 v49, v58, v49
	v_div_scale_f32 v50, s6, v13, v24, v13
	v_fma_f32 v59, -v26, v51, v28
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v54, v34, v45 :: v_dual_mul_f32 v55, v36, v46
	v_fma_f32 v60, -v29, v52, v30
	v_div_scale_f32 v38, s4, v11, v22, v11
	v_fma_f32 v61, -v31, v53, v32
	v_dual_mul_f32 v58, v50, v49 :: v_dual_fmac_f32 v51, v59, v42
	v_div_scale_f32 v40, s5, v14, v25, v14
	v_fma_f32 v62, -v33, v54, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v52, v60, v43 :: v_dual_fmac_f32 v53, v61, v44
	v_dual_mul_f32 v56, v38, v47 :: v_dual_mul_f32 v57, v40, v48
	v_fma_f32 v63, -v35, v55, v36
	v_fma_f32 v26, -v26, v51, v28
	v_fmac_f32_e32 v54, v62, v45
	v_fma_f32 v28, -v29, v52, v30
	v_fma_f32 v64, -v37, v56, v38
	v_fmac_f32_e32 v55, v63, v46
	v_fma_f32 v29, -v31, v53, v32
	v_div_fmas_f32 v26, v26, v42, v51
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v65, -v39, v57, v40
	v_fma_f32 v30, -v33, v54, v34
	v_div_fmas_f32 v28, v28, v43, v52
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v66, -v41, v58, v50
	v_dual_fmac_f32 v56, v64, v47 :: v_dual_fmac_f32 v57, v65, v48
	v_fma_f32 v31, -v35, v55, v36
	v_div_fmas_f32 v29, v29, v44, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v17, v26, v19, v17
	v_div_fmas_f32 v19, v30, v45, v54
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v32, -v37, v56, v38
	v_div_fixup_f32 v8, v28, v18, v8
	v_div_fmas_f32 v18, v31, v46, v55
	v_div_fixup_f32 v16, v29, v21, v16
	v_fmac_f32_e32 v58, v66, v49
	v_fma_f32 v33, -v39, v57, v40
	s_mov_b32 vcc_lo, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v9, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v18, v23, v12
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v17, v32, v47, v56
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v7, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v41, v58, v50
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v19, v20, v15
	v_div_fmas_f32 v9, v33, v48, v57
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v11, v17, v22, v11
	v_div_fmas_f32 v16, v34, v49, v58
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v73.l, v8.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.l, v10.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v15
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v9, v25, v14
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.l, v7.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v16, v24, v13
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v2, v2, v11 :: v_dual_and_b32 v13, 1, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v5, v5, v9
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v73
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s0, v8, v8
	v_mov_b16_e32 v76.l, v3.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v4, v4, v12 :: v_dual_and_b32 v9, 1, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v10, v13, 0x7fff
	v_mov_b16_e32 v77.l, v2.h
	v_add3_u32 v8, v8, v11, 0x7fff
	v_cmp_o_f32_e64 s1, v7, v7
	v_add3_u32 v7, v7, v9, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v10.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v13, 1, v77
	v_cndmask_b16 v9.l, 0x7fff, v8.h, s0
	v_and_b32_e32 v11, 1, v76
	v_mov_b16_e32 v75.l, v6.h
	v_cmp_o_f32_e64 s3, v3, v3
	v_cmp_o_f32_e64 s4, v2, v2
	v_mov_b16_e32 v78.l, v5.h
	v_add3_u32 v3, v3, v11, 0x7fff
	v_mov_b16_e32 v79.l, v4.h
	v_cndmask_b32_e32 v8, 0x1054, v70, vcc_lo
	v_add3_u32 v2, v2, v13, 0x7fff
	v_cndmask_b32_e32 v10, 0x3276, v71, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s3
	v_and_b32_e32 v11, 1, v79
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s1
	v_and_b32_e32 v12, 1, v75
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s4
	v_and_b32_e32 v2, 1, v78
	v_cmp_o_f32_e64 s2, v6, v6
	v_cmp_o_f32_e64 s5, v5, v5
	v_cmp_o_f32_e64 s0, v4, v4
	v_add3_u32 v0, v6, v12, 0x7fff
	v_cndmask_b32_e32 v6, v3, v9, vcc_lo
	v_add3_u32 v4, v4, v11, 0x7fff
	v_cndmask_b32_e32 v3, v9, v3, vcc_lo
	v_add3_u32 v2, v5, v2, 0x7fff
	v_lshl_or_b32 v5, v8, 8, v8
	v_lshl_or_b32 v8, v10, 8, v10
	v_cndmask_b16 v7.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.l, 0x7fff, v4.h, s0
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s5
	v_and_b32_e32 v2, 0x540054, v5
	v_and_b32_e32 v5, 0x760076, v8
	s_mov_b32 s0, 0x76543210
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_and_or_b32 v9, 0x78, v27, s33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v4, v5, 4, v5
	v_dual_cndmask_b32 v5, v7, v0 :: v_dual_cndmask_b32 v0, v0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v7, 0x5040504, v2
	v_and_b32_e32 v8, 0x7060706, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v3, v6, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v3, v3, v6, v8
	v_perm_b32 v4, v5, v0, v7
	v_perm_b32 v5, v5, v0, v8
	v_add_lshl_u32 v0, v9, v1, 1
	buffer_store_b128 v[2:5], v0, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 237
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19896
; TotalNumSgprs: 53
; NumVgprs: 237
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 53
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     237
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
