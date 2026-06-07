	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v102, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v101, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v35, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v36, 15, v0
	v_or_b32_e32 v104, 0x3f0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v41, 0, v102
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v4, 12, v101
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v37, 0x70, v35
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v40, 0, v101
	s_mov_b32 s31, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v105, v37, v36
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v2, s14, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_load_b32 s10, s[0:1], 0x38
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
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
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v102
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s4, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s15, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[33:34], null, s34, v3, v[1:2]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s4, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s10, 63
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s4, s7
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s36, s3, 6
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s28, s4, 7
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v103, s15, 6, v33
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s29, s2, 4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s34, s36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v34, v2, v4, s29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s28, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s4, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s8, s15, 7
	v_add_nc_u32_e32 v3, s4, v103
	s_add_i32 s4, s4, s8
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s6, s14, s36
	s_lshl_b32 s7, s14, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v11, s4, v33
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v1, s6, v34
	v_add3_u32 v4, s6, s7, v34
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v9, s15, v2
	v_add_nc_u32_e32 v10, s15, v3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v12, s4, v103
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v19, s15, v11
	v_add3_u32 v17, s4, s15, v103
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v18, 0x80000000, v4, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v3, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v13, 0x80000000, v10, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v20, 0x80000000, v11, s2
	v_cndmask_b32_e64 v21, 0x80000000, v12, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v25, 0x80000000, v19, s2
	v_cndmask_b32_e64 v29, 0x80000000, v17, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v38, v1, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v5, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v6, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v39, v18, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[17:20], v20, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v29, s[24:27], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(9)
	ds_store_b32 v40, v38 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v41, v[1:4]
	s_waitcnt vmcnt(7)
	ds_store_b128 v41, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v41, v[9:12] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v41, v[13:16] offset:20480
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v40, v39 offset:33792
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v41, v[17:20] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v41, v[21:24] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v41, v[25:28] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v41, v[29:32] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v1, v37, v36
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v2, 0x3f0, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v44, 0x80, v1
	v_or_b32_e32 v45, 0x100, v1
	v_or_b32_e32 v46, 0x180, v1
	v_or_b32_e32 v47, 0x200, v1
	v_or_b32_e32 v48, 0x280, v1
	v_or_b32_e32 v49, 0x300, v1
	v_or_b32_e32 v50, 0x380, v1
	v_or_b32_e32 v51, 0x400, v1
	v_or_b32_e32 v52, 0x480, v1
	v_or_b32_e32 v53, 0x500, v1
	v_or_b32_e32 v54, 0x580, v1
	v_or_b32_e32 v55, 0x600, v1
	v_or_b32_e32 v56, 0x680, v1
	v_or_b32_e32 v57, 0x700, v1
	v_or_b32_e32 v58, 0x780, v1
	v_or_b32_e32 v42, 0x800, v1
	v_or_b32_e32 v43, 0x880, v1
	v_or_b32_e32 v59, 0x900, v1
	v_or_b32_e32 v60, 0x980, v1
	v_or_b32_e32 v61, 0xa00, v1
	v_or_b32_e32 v62, 0xa80, v1
	v_or_b32_e32 v63, 0xb00, v1
	v_or_b32_e32 v64, 0xb80, v1
	v_or_b32_e32 v65, 0xc00, v1
	v_or_b32_e32 v66, 0xc80, v1
	v_or_b32_e32 v67, 0xd00, v1
	v_or_b32_e32 v68, 0xd80, v1
	v_or_b32_e32 v69, 0xe00, v1
	v_or_b32_e32 v70, 0xe80, v1
	v_or_b32_e32 v71, 0xf00, v1
	v_or_b32_e32 v72, 0xf80, v1
	v_or_b32_e32 v40, 0x1000, v1
	v_or_b32_e32 v41, 0x1080, v1
	v_or_b32_e32 v73, 0x1100, v1
	v_or_b32_e32 v74, 0x1180, v1
	v_or_b32_e32 v75, 0x1200, v1
	v_or_b32_e32 v76, 0x1280, v1
	v_or_b32_e32 v77, 0x1300, v1
	v_or_b32_e32 v78, 0x1380, v1
	v_or_b32_e32 v79, 0x1400, v1
	v_or_b32_e32 v80, 0x1480, v1
	v_or_b32_e32 v81, 0x1500, v1
	v_or_b32_e32 v82, 0x1580, v1
	v_or_b32_e32 v83, 0x1600, v1
	v_or_b32_e32 v84, 0x1680, v1
	v_or_b32_e32 v85, 0x1700, v1
	v_or_b32_e32 v86, 0x1780, v1
	v_or_b32_e32 v38, 0x1800, v1
	v_or_b32_e32 v39, 0x1880, v1
	v_or_b32_e32 v87, 0x1900, v1
	v_or_b32_e32 v88, 0x1980, v1
	v_or_b32_e32 v89, 0x1a00, v1
	v_or_b32_e32 v90, 0x1a80, v1
	v_or_b32_e32 v91, 0x1b00, v1
	v_or_b32_e32 v92, 0x1b80, v1
	v_or_b32_e32 v93, 0x1c00, v1
	v_or_b32_e32 v94, 0x1c80, v1
	v_or_b32_e32 v95, 0x1d00, v1
	v_or_b32_e32 v96, 0x1d80, v1
	v_or_b32_e32 v97, 0x1e00, v1
	v_or_b32_e32 v98, 0x1e80, v1
	v_or_b32_e32 v99, 0x1f00, v1
	v_or_b32_e32 v100, 0x1f80, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr60
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr71
                                        ; implicit-def: $vgpr72
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr41
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
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr39
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
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr100
.LBB0_3:                                ; %Flow73
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_or_b32_e32 v44, 0x80, v105
	v_or_b32_e32 v45, 0x100, v105
	v_or_b32_e32 v46, 0x180, v105
	v_or_b32_e32 v47, 0x200, v105
	v_or_b32_e32 v48, 0x280, v105
	v_or_b32_e32 v49, 0x300, v105
	v_or_b32_e32 v50, 0x380, v105
	v_or_b32_e32 v51, 0x400, v105
	v_or_b32_e32 v52, 0x480, v105
	v_or_b32_e32 v53, 0x500, v105
	v_or_b32_e32 v54, 0x580, v105
	v_or_b32_e32 v55, 0x600, v105
	v_or_b32_e32 v56, 0x680, v105
	v_or_b32_e32 v57, 0x700, v105
	v_or_b32_e32 v58, 0x780, v105
	v_or_b32_e32 v42, 0x800, v105
	v_or_b32_e32 v43, 0x880, v105
	v_or_b32_e32 v59, 0x900, v105
	v_or_b32_e32 v60, 0x980, v105
	v_or_b32_e32 v61, 0xa00, v105
	v_or_b32_e32 v62, 0xa80, v105
	v_or_b32_e32 v63, 0xb00, v105
	v_or_b32_e32 v64, 0xb80, v105
	v_or_b32_e32 v65, 0xc00, v105
	v_or_b32_e32 v66, 0xc80, v105
	v_or_b32_e32 v67, 0xd00, v105
	v_or_b32_e32 v68, 0xd80, v105
	v_or_b32_e32 v69, 0xe00, v105
	v_or_b32_e32 v70, 0xe80, v105
	v_or_b32_e32 v71, 0xf00, v105
	v_or_b32_e32 v72, 0xf80, v105
	v_or_b32_e32 v40, 0x1000, v105
	v_or_b32_e32 v41, 0x1080, v105
	v_or_b32_e32 v73, 0x1100, v105
	v_or_b32_e32 v74, 0x1180, v105
	v_or_b32_e32 v75, 0x1200, v105
	v_or_b32_e32 v76, 0x1280, v105
	v_or_b32_e32 v77, 0x1300, v105
	v_or_b32_e32 v78, 0x1380, v105
	v_or_b32_e32 v79, 0x1400, v105
	v_or_b32_e32 v80, 0x1480, v105
	v_or_b32_e32 v81, 0x1500, v105
	v_or_b32_e32 v82, 0x1580, v105
	v_or_b32_e32 v83, 0x1600, v105
	v_or_b32_e32 v84, 0x1680, v105
	v_or_b32_e32 v85, 0x1700, v105
	v_or_b32_e32 v86, 0x1780, v105
	v_or_b32_e32 v38, 0x1800, v105
	v_or_b32_e32 v39, 0x1880, v105
	v_or_b32_e32 v87, 0x1900, v105
	v_or_b32_e32 v88, 0x1980, v105
	v_or_b32_e32 v89, 0x1a00, v105
	v_or_b32_e32 v90, 0x1a80, v105
	v_or_b32_e32 v91, 0x1b00, v105
	v_or_b32_e32 v92, 0x1b80, v105
	v_or_b32_e32 v93, 0x1c00, v105
	v_or_b32_e32 v94, 0x1c80, v105
	v_or_b32_e32 v95, 0x1d00, v105
	v_or_b32_e32 v96, 0x1d80, v105
	v_or_b32_e32 v97, 0x1e00, v105
	v_or_b32_e32 v98, 0x1e80, v105
	v_or_b32_e32 v99, 0x1f00, v105
	v_or_b32_e32 v100, 0x1f80, v105
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s37, s5, 6
	s_addk_i32 s36, 0x80
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s35, 0, 0x8400
	s_add_i32 s33, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s30, 0, 0x6000
	s_add_i32 s37, s37, -3
	s_mov_b32 s38, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_mov_b32 s31, s4
	s_mov_b32 s39, s4
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s40, s0
	s_mov_b32 s0, s35
	s_mov_b32 s35, s31
	s_mov_b32 s31, s33
	s_mov_b32 s33, s1
	s_mov_b32 s1, s30
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s30, s39, 6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v13, s40, v36
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s30, s36, s30
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s35, v105
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[1:2], null, s30, s14, v[34:35]
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s30, s30, s34
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v14, s40, v104
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s30, s30, s28
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v151, s33, v105
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s30, v103
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v106, v1, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v13 offset:208
	ds_load_u8 v10, v13 offset:192
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s30, v33
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s30, s30, s15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:240
	ds_load_u8 v11, v13 offset:224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v10, 16, v9
	ds_load_u8 v9, v13 offset:144
	ds_load_u8 v10, v13 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:176
	ds_load_u8 v11, v13 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v10, 16, v9
	ds_load_u8 v9, v13 offset:80
	ds_load_u8 v10, v13 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:112
	ds_load_u8 v11, v13 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v10, 16, v9
	ds_load_u8 v9, v13
	ds_load_u8 v10, v13 offset:16
	ds_load_u8 v11, v13 offset:32
	ds_load_u8 v12, v13 offset:48
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v10, 16, v9
	ds_load_u8 v9, v15 offset:1664
	ds_load_u8 v10, v15 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v15 offset:1920
	ds_load_u8 v11, v15 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v15 offset:1152
	ds_load_u8 v10, v15 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v15 offset:1408
	ds_load_u8 v11, v15 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v10, 16, v9
	ds_load_u8 v9, v15 offset:640
	ds_load_u8 v10, v15 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v15 offset:896
	ds_load_u8 v16, v15 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v16, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v15 offset:128
	ds_load_u8 v16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v16, v9, 0xc0c0004
	ds_load_u8 v16, v15 offset:384
	ds_load_u8 v107, v15 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v107, v16, 0xc0c0004
	v_dual_mov_b32 v114, s11 :: v_dual_mov_b32 v113, s10
	v_dual_mov_b32 v112, s9 :: v_dual_mov_b32 v111, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v9, v16, 16, v9
	v_dual_mov_b32 v110, s7 :: v_dual_mov_b32 v109, s6
	v_dual_mov_b32 v108, s5 :: v_dual_mov_b32 v107, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[115:122], v[9:12], v[131:134], v[107:114] neg_lo:[1,1,0]
	ds_load_u8 v9, v13 offset:464
	ds_load_u8 v10, v13 offset:448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:496
	ds_load_u8 v11, v13 offset:480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v10, 16, v9
	ds_load_u8 v9, v13 offset:400
	ds_load_u8 v10, v13 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:432
	ds_load_u8 v11, v13 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v10, 16, v9
	ds_load_u8 v9, v13 offset:336
	ds_load_u8 v10, v13 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:368
	ds_load_u8 v11, v13 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v10, 16, v9
	ds_load_u8 v9, v13 offset:272
	ds_load_u8 v10, v13 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:304
	ds_load_u8 v11, v13 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v10, 16, v9
	ds_load_u8 v9, v15 offset:3712
	ds_load_u8 v10, v15 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v15 offset:3968
	ds_load_u8 v11, v15 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v15 offset:3200
	ds_load_u8 v10, v15 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v15 offset:3456
	ds_load_u8 v11, v15 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v10, 16, v9
	ds_load_u8 v9, v15 offset:2688
	ds_load_u8 v10, v15 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v15 offset:2944
	ds_load_u8 v16, v15 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v16, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v15 offset:2176
	ds_load_u8 v16, v15 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v16, v9, 0xc0c0004
	ds_load_u8 v16, v15 offset:2432
	ds_load_u8 v123, v15 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v123, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v16, 16, v9
	v_wmma_i32_16x16x16_iu8 v[115:122], v[9:12], v[135:138], v[115:122] neg_lo:[1,1,0]
	ds_load_u8 v9, v13 offset:720
	ds_load_u8 v10, v13 offset:704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:752
	ds_load_u8 v11, v13 offset:736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v10, 16, v9
	ds_load_u8 v9, v13 offset:656
	ds_load_u8 v10, v13 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:688
	ds_load_u8 v11, v13 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v10, 16, v9
	ds_load_u8 v9, v13 offset:592
	ds_load_u8 v10, v13 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:624
	ds_load_u8 v11, v13 offset:608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v10, 16, v9
	ds_load_u8 v9, v13 offset:528
	ds_load_u8 v10, v13 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:560
	ds_load_u8 v11, v13 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v10, 16, v9
	ds_load_u8 v9, v15 offset:5760
	ds_load_u8 v10, v15 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v15 offset:6016
	ds_load_u8 v11, v15 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v15 offset:5248
	ds_load_u8 v10, v15 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v15 offset:5504
	ds_load_u8 v11, v15 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v10, 16, v9
	ds_load_u8 v9, v15 offset:4736
	ds_load_u8 v10, v15 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v15 offset:4992
	ds_load_u8 v16, v15 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v16, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v15 offset:4224
	ds_load_u8 v16, v15 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v16, v9, 0xc0c0004
	ds_load_u8 v16, v15 offset:4480
	ds_load_u8 v123, v15 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v123, v16, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v123, v151 offset:1664
	ds_load_u8 v124, v151 offset:1536
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v9, v16, 16, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[9:12], v[139:142], v[115:122] neg_lo:[1,1,0]
	ds_load_u8 v9, v13 offset:976
	ds_load_u8 v10, v13 offset:960
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v151 offset:1920
	ds_load_u8 v125, v151 offset:1792
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v14
	ds_load_u8 v11, v13 offset:992
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v124, 16, v123
	ds_load_u8 v123, v151 offset:1152
	ds_load_u8 v124, v151 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v146, v10, 16, v9
	ds_load_u8 v9, v13 offset:912
	ds_load_u8 v10, v13 offset:896
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v151 offset:1408
	ds_load_u8 v125, v151 offset:1280
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:944
	ds_load_u8 v11, v13 offset:928
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v124, 16, v123
	ds_load_u8 v123, v151 offset:640
	ds_load_u8 v124, v151 offset:512
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v145, v10, 16, v9
	ds_load_u8 v9, v13 offset:848
	ds_load_u8 v10, v13 offset:832
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v151 offset:896
	ds_load_u8 v125, v151 offset:768
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:880
	ds_load_u8 v11, v13 offset:864
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v124, 16, v123
	ds_load_u8 v123, v151 offset:128
	ds_load_u8 v124, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v144, v10, 16, v9
	ds_load_u8 v9, v13 offset:784
	ds_load_u8 v10, v13 offset:768
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v151 offset:384
	ds_load_u8 v125, v151 offset:256
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v13 offset:816
	ds_load_u8 v11, v13 offset:800
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v147, v124, 16, v123
	v_wmma_i32_16x16x16_iu8 v[123:130], v[147:150], v[131:134], v[107:114] neg_lo:[1,1,0]
	ds_load_u8 v107, v151 offset:3712
	ds_load_u8 v108, v151 offset:3584
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v10, 16, v9
	ds_load_u8 v9, v15 offset:7808
	ds_load_u8 v10, v15 offset:7680
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v151 offset:3968
	ds_load_u8 v109, v151 offset:3840
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v15 offset:8064
	ds_load_u8 v11, v15 offset:7936
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v108, 16, v107
	ds_load_u8 v107, v151 offset:3200
	ds_load_u8 v108, v151 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v15 offset:7296
	ds_load_u8 v10, v15 offset:7168
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v151 offset:3456
	ds_load_u8 v109, v151 offset:3328
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v15 offset:7552
	ds_load_u8 v11, v15 offset:7424
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v109, v108, 16, v107
	ds_load_u8 v107, v151 offset:2688
	ds_load_u8 v108, v151 offset:2560
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v11, v10, 16, v9
	ds_load_u8 v9, v15 offset:6784
	ds_load_u8 v10, v15 offset:6656
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v151 offset:2944
	ds_load_u8 v111, v151 offset:2816
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v15 offset:7040
	ds_load_u8 v13, v15 offset:6912
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v108, v111, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v108, v108, 16, v107
	ds_load_u8 v107, v151 offset:2176
	ds_load_u8 v111, v151 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v13, v10, 0xc0c0004
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v15 offset:6272
	ds_load_u8 v13, v15 offset:6144
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v107, v111, v107, 0xc0c0004
	ds_load_u8 v111, v151 offset:2432
	ds_load_u8 v112, v151 offset:2304
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v13, v9, 0xc0c0004
	ds_load_u8 v13, v15 offset:6528
	ds_load_u8 v14, v15 offset:6400
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v107, v111, 16, v107
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[123:130], v[107:110], v[135:138], v[123:130] neg_lo:[1,1,0]
	ds_load_u8 v107, v151 offset:5760
	ds_load_u8 v108, v151 offset:5632
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v9, v13, 16, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[9:12], v[143:146], v[115:122] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v151 offset:6016
	ds_load_u8 v109, v151 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v108, 16, v107
	ds_load_u8 v107, v151 offset:5248
	ds_load_u8 v108, v151 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v151 offset:5504
	ds_load_u8 v109, v151 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v108, 16, v107
	ds_load_u8 v107, v151 offset:4736
	ds_load_u8 v108, v151 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v151 offset:4992
	ds_load_u8 v111, v151 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v111, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v108, 16, v107
	ds_load_u8 v107, v151 offset:4224
	ds_load_u8 v111, v151 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v111, v107, 0xc0c0004
	ds_load_u8 v111, v151 offset:4480
	ds_load_u8 v112, v151 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v107, v111, 16, v107
	v_wmma_i32_16x16x16_iu8 v[123:130], v[107:110], v[139:142], v[123:130] neg_lo:[1,1,0]
	ds_load_u8 v107, v151 offset:7808
	ds_load_u8 v108, v151 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v151 offset:8064
	ds_load_u8 v109, v151 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v108, 16, v107
	ds_load_u8 v107, v151 offset:7296
	ds_load_u8 v108, v151 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v151 offset:7552
	ds_load_u8 v109, v151 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v108, 16, v107
	ds_load_u8 v107, v151 offset:6784
	ds_load_u8 v108, v151 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v151 offset:7040
	ds_load_u8 v111, v151 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v111, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v108, 16, v107
	ds_load_u8 v107, v151 offset:6272
	ds_load_u8 v111, v151 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v111, v107, 0xc0c0004
	ds_load_u8 v111, v151 offset:6528
	ds_load_u8 v112, v151 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v112, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v107, v111, 16, v107
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v111, v117
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v32, v32, v112
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[123:130], v[107:110], v[143:146], v[123:130] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v108, v116
	v_cvt_f32_i32_e32 v116, v120
	v_cvt_f32_i32_e32 v120, v122
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v9, s30, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v110, v124
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v13, s30, v103
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s30, s38, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v30, v30, v120
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s30, 2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v18, v18, v110
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s38, s30, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v107, v115
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s30, s38, 10
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v109, v123
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s30, s30, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v113, v125
	v_cvt_f32_i32_e32 v114, v126
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v115, v119
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v117, v127
	v_cvt_f32_i32_e32 v118, v128
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v119, v121
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v121, v129
	v_cvt_f32_i32_e32 v122, v130
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v25, v25, v107 :: v_dual_add_f32 v20, v20, v118
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v107, s30, v101
	s_add_i32 s35, s30, 0x8000
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s30, s38, 13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v26, v26, v108
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s33, s30, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v31, v31, v111 :: v_dual_add_f32 v24, v24, v122
	v_dual_add_f32 v22, v22, v116 :: v_dual_add_f32 v21, v21, v115
	v_add_f32_e32 v29, v29, v119
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v17, v17, v109 :: v_dual_add_f32 v28, v28, v114
	v_add_f32_e32 v27, v27, v113
	v_add_f32_e32 v19, v19, v117
	v_add_f32_e32 v23, v23, v121
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v107, v106 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v106, s33, v102
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s40, s39, 1
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s30, s33, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s39, s37
	s_mov_b32 s39, s40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v106, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v106, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v106, v[9:12] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v106, v[13:16] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v104 :: v_dual_mov_b32 v1, v105
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v17, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s35, 0, 0x8400
	s_add_i32 s33, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	v_mov_b32_e32 v18, v17
	s_add_i32 s30, 0, 0x6000
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v26, v18 :: v_dual_mov_b32 v25, v17
	v_dual_mov_b32 v20, v18 :: v_dual_mov_b32 v19, v17
	v_dual_mov_b32 v22, v18 :: v_dual_mov_b32 v21, v17
	v_dual_mov_b32 v28, v18 :: v_dual_mov_b32 v27, v17
	v_dual_mov_b32 v32, v18 :: v_dual_mov_b32 v31, v17
	v_dual_mov_b32 v24, v18 :: v_dual_mov_b32 v23, v17
	v_dual_mov_b32 v30, v18 :: v_dual_mov_b32 v29, v17
.LBB0_8:                                ; %._crit_edge
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v33, s0, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v34, s0, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v149, 0, 1, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v133, v33
	ds_load_u8_d16 v134, v33 offset:16
	ds_load_u8_d16 v135, v33 offset:32
	ds_load_u8_d16 v136, v33 offset:48
	ds_load_u8_d16 v137, v33 offset:64
	ds_load_u8_d16 v138, v33 offset:80
	ds_load_u8_d16 v139, v33 offset:96
	ds_load_u8_d16 v140, v33 offset:112
	ds_load_u8_d16 v141, v33 offset:128
	ds_load_u8_d16 v142, v33 offset:144
	ds_load_u8_d16 v143, v33 offset:160
	ds_load_u8_d16 v144, v33 offset:176
	ds_load_u8_d16 v145, v33 offset:192
	ds_load_u8_d16 v146, v33 offset:208
	ds_load_u8_d16 v147, v33 offset:224
	ds_load_u8_d16 v148, v33 offset:240
	ds_load_u8_d16 v117, v33 offset:256
	ds_load_u8_d16 v118, v33 offset:272
	ds_load_u8_d16 v119, v33 offset:288
	ds_load_u8_d16 v120, v33 offset:304
	ds_load_u8_d16 v121, v33 offset:320
	ds_load_u8_d16 v122, v33 offset:336
	ds_load_u8_d16 v123, v33 offset:352
	ds_load_u8_d16 v124, v33 offset:368
	ds_load_u8_d16 v125, v33 offset:384
	ds_load_u8_d16 v126, v33 offset:400
	ds_load_u8_d16 v127, v33 offset:416
	ds_load_u8_d16 v128, v33 offset:432
	ds_load_u8_d16 v129, v33 offset:448
	ds_load_u8_d16 v130, v33 offset:464
	ds_load_u8_d16 v131, v33 offset:480
	ds_load_u8_d16 v132, v33 offset:496
	ds_load_u8_d16 v101, v33 offset:512
	ds_load_u8_d16 v102, v33 offset:528
	ds_load_u8_d16 v103, v33 offset:544
	ds_load_u8_d16 v104, v33 offset:560
	ds_load_u8_d16 v105, v33 offset:576
	ds_load_u8_d16 v106, v33 offset:592
	ds_load_u8_d16 v107, v33 offset:608
	ds_load_u8_d16 v108, v33 offset:624
	ds_load_u8_d16 v109, v33 offset:640
	ds_load_u8_d16 v110, v33 offset:656
	ds_load_u8_d16 v111, v33 offset:672
	ds_load_u8_d16 v112, v33 offset:688
	ds_load_u8_d16 v113, v33 offset:704
	ds_load_u8_d16 v114, v33 offset:720
	ds_load_u8_d16 v115, v33 offset:736
	ds_load_u8_d16 v116, v33 offset:752
	ds_load_u8_d16 v3, v33 offset:768
	ds_load_u8_d16 v4, v33 offset:784
	ds_load_u8_d16 v5, v33 offset:800
	ds_load_u8_d16 v6, v33 offset:816
	ds_load_u8_d16 v7, v33 offset:832
	ds_load_u8_d16 v8, v33 offset:848
	ds_load_u8_d16 v9, v33 offset:864
	ds_load_u8_d16 v10, v33 offset:880
	ds_load_u8_d16 v11, v33 offset:896
	ds_load_u8_d16 v12, v33 offset:912
	ds_load_u8_d16 v13, v33 offset:928
	ds_load_u8_d16 v14, v33 offset:944
	ds_load_u8_d16 v15, v33 offset:960
	ds_load_u8_d16 v16, v33 offset:976
	ds_load_u8_d16 v33, v33 offset:992
	ds_load_u8_d16 v34, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	v_cmp_ne_u32_e64 s0, 1, v149
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s31, v56
	v_add_nc_u32_e32 v152, s31, v55
	v_add_nc_u32_e32 v149, s31, v58
	v_add_nc_u32_e32 v155, s31, v52
	v_add_nc_u32_e32 v150, s31, v57
	v_add_nc_u32_e32 v153, s31, v54
	v_add_nc_u32_e32 v154, s31, v53
	v_add_nc_u32_e32 v157, s31, v51
	v_add_nc_u32_e32 v161, s31, v47
	v_add_nc_u32_e32 v162, s31, v46
	v_add_nc_u32_e32 v163, s31, v45
	v_add_nc_u32_e32 v164, s31, v44
	v_add_nc_u32_e32 v206, s31, v1
	v_add_nc_u32_e32 v158, s31, v50
	v_add_nc_u32_e32 v159, s31, v49
	v_add_nc_u32_e32 v160, s31, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	ds_load_u8 v149, v149
	ds_load_u8 v155, v155
	ds_load_u8 v207, v157
	ds_load_u8 v153, v153
	ds_load_u8 v154, v154
	ds_load_u8 v150, v150
	ds_load_u8 v208, v160
	ds_load_u8 v161, v161
	ds_load_u8 v209, v158
	ds_load_u8 v164, v164
	ds_load_u8 v206, v206
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	ds_load_u8 v210, v159
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v194, s31, v70
	v_add_nc_u32_e32 v195, s31, v69
	v_add_nc_u32_e32 v156, s31, v72
	v_add_nc_u32_e32 v198, s31, v66
	v_add_nc_u32_e32 v193, s31, v71
	v_add_nc_u32_e32 v196, s31, v68
	v_add_nc_u32_e32 v197, s31, v67
	v_add_nc_u32_e32 v199, s31, v65
	v_add_nc_u32_e32 v200, s31, v64
	v_add_nc_u32_e32 v201, s31, v63
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v202, s31, v62
	v_add_nc_u32_e32 v203, s31, v61
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v154, v161, v208, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v204, s31, v60
	v_add_nc_u32_e32 v205, s31, v59
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v161, v206, v164, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v211, s31, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v206, v163, v162, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v217, s31, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v151, v152, v151, 0xc0c0004
	v_perm_b32 v152, v207, v155, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v166, s31, v99
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v161, v206, 16, v161
	ds_load_u8 v194, v194
	ds_load_u8 v195, v195
	ds_load_u8 v206, v156
	ds_load_u8 v198, v198
	ds_load_u8 v199, v199
	ds_load_u8 v196, v196
	ds_load_u8 v197, v197
	ds_load_u8 v193, v193
	ds_load_u8 v202, v202
	ds_load_u8 v203, v203
	ds_load_u8 v200, v200
	ds_load_u8 v207, v211
	ds_load_u8 v208, v217
	ds_load_u8 v204, v204
	ds_load_u8 v205, v205
	ds_load_u8 v201, v201
	v_perm_b32 v157, v145, v146, 0xc0c0004
	v_perm_b32 v158, v147, v148, 0xc0c0004
	v_perm_b32 v159, v141, v142, 0xc0c0004
	v_perm_b32 v212, v143, v144, 0xc0c0004
	v_perm_b32 v213, v137, v138, 0xc0c0004
	v_perm_b32 v214, v139, v140, 0xc0c0004
	v_perm_b32 v215, v133, v134, 0xc0c0004
	v_perm_b32 v216, v135, v136, 0xc0c0004
	v_perm_b32 v150, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v155, v210, v209, 0xc0c0004
	v_mov_b32_e32 v149, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v165, s31, v100
	v_add_nc_u32_e32 v167, s31, v98
	v_add_nc_u32_e32 v168, s31, v97
	v_add_nc_u32_e32 v169, s31, v96
	v_add_nc_u32_e32 v170, s31, v95
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v156, v149 :: v_dual_add_nc_u32 v171, s31, v94
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v172, s31, v93
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v160, v158, 16, v157
	v_lshl_or_b32 v159, v212, 16, v159
	v_lshl_or_b32 v158, v214, 16, v213
	v_lshl_or_b32 v157, v216, 16, v215
	v_lshl_or_b32 v164, v150, 16, v151
	v_lshl_or_b32 v163, v153, 16, v152
	v_lshl_or_b32 v162, v155, 16, v154
	v_mov_b32_e32 v150, v149
	v_mov_b32_e32 v151, v149
	v_mov_b32_e32 v152, v149
	v_mov_b32_e32 v153, v149
	v_mov_b32_e32 v154, v149
	v_mov_b32_e32 v155, v149
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v181, s31, v84
	v_add_nc_u32_e32 v182, s31, v83
	v_add_nc_u32_e32 v179, s31, v86
	v_add_nc_u32_e32 v185, s31, v80
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[149:156], v[161:164], v[157:160], v[149:156] neg_lo:[1,1,0]
	v_perm_b32 v157, v121, v122, 0xc0c0004
	v_perm_b32 v158, v123, v124, 0xc0c0004
	v_perm_b32 v161, v117, v118, 0xc0c0004
	v_perm_b32 v162, v119, v120, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v163, v195, v194, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v164, v193, v206, 0xc0c0004
	v_perm_b32 v193, v199, v198, 0xc0c0004
	v_perm_b32 v194, v197, v196, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v195, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v196, v201, v200, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v180, s31, v85
	v_add_nc_u32_e32 v183, s31, v82
	v_add_nc_u32_e32 v184, s31, v81
	v_add_nc_u32_e32 v186, s31, v79
	v_add_nc_u32_e32 v187, s31, v78
	v_add_nc_u32_e32 v188, s31, v77
	v_add_nc_u32_e32 v189, s31, v76
	v_add_nc_u32_e32 v190, s31, v75
	v_add_nc_u32_e32 v191, s31, v74
	v_add_nc_u32_e32 v192, s31, v73
	v_add_nc_u32_e32 v213, s31, v41
	v_add_nc_u32_e32 v214, s31, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v158, v158, 16, v157
	v_lshl_or_b32 v157, v162, 16, v161
	v_lshl_or_b32 v164, v164, 16, v163
	v_lshl_or_b32 v163, v194, 16, v193
	v_lshl_or_b32 v162, v196, 16, v195
	ds_load_u8 v181, v181
	ds_load_u8 v182, v182
	ds_load_u8 v179, v179
	ds_load_u8 v185, v185
	ds_load_u8 v186, v186
	ds_load_u8 v183, v183
	ds_load_u8 v184, v184
	ds_load_u8 v180, v180
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	ds_load_u8 v187, v187
	ds_load_u8 v194, v213
	ds_load_u8 v195, v214
	ds_load_u8 v191, v191
	ds_load_u8 v192, v192
	ds_load_u8 v188, v188
	v_perm_b32 v209, v129, v130, 0xc0c0004
	v_perm_b32 v210, v131, v132, 0xc0c0004
	v_perm_b32 v211, v125, v126, 0xc0c0004
	v_perm_b32 v212, v127, v128, 0xc0c0004
	v_perm_b32 v161, v208, v207, 0xc0c0004
	v_perm_b32 v193, v205, v204, 0xc0c0004
	v_lshl_or_b32 v160, v210, 16, v209
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v173, s31, v92
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v159, v212, 16, v211
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v174, s31, v91
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v161, v193, 16, v161
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v175, s31, v90
	v_add_nc_u32_e32 v176, s31, v89
	v_add_nc_u32_e32 v177, s31, v88
	v_add_nc_u32_e32 v178, s31, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[149:156], v[161:164], v[157:160], v[149:156] neg_lo:[1,1,0]
	v_perm_b32 v157, v105, v106, 0xc0c0004
	v_perm_b32 v158, v107, v108, 0xc0c0004
	v_perm_b32 v161, v101, v102, 0xc0c0004
	v_perm_b32 v162, v103, v104, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v163, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v164, v180, v179, 0xc0c0004
	v_perm_b32 v179, v186, v185, 0xc0c0004
	v_perm_b32 v180, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v181, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v188, v187, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v199, s31, v39
	v_add_nc_u32_e32 v200, s31, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v158, v158, 16, v157
	v_lshl_or_b32 v157, v162, 16, v161
	v_lshl_or_b32 v164, v164, 16, v163
	v_lshl_or_b32 v163, v180, 16, v179
	v_lshl_or_b32 v162, v182, 16, v181
	ds_load_u8 v167, v167
	ds_load_u8 v168, v168
	ds_load_u8 v165, v165
	ds_load_u8 v171, v171
	ds_load_u8 v172, v172
	ds_load_u8 v169, v169
	ds_load_u8 v170, v170
	ds_load_u8 v166, v166
	ds_load_u8 v175, v175
	ds_load_u8 v176, v176
	ds_load_u8 v173, v173
	ds_load_u8 v180, v199
	ds_load_u8 v181, v200
	ds_load_u8 v177, v177
	ds_load_u8 v178, v178
	ds_load_u8 v174, v174
	v_perm_b32 v193, v113, v114, 0xc0c0004
	v_perm_b32 v196, v115, v116, 0xc0c0004
	v_perm_b32 v197, v109, v110, 0xc0c0004
	v_perm_b32 v198, v111, v112, 0xc0c0004
	v_perm_b32 v161, v195, v194, 0xc0c0004
	v_perm_b32 v179, v192, v191, 0xc0c0004
	v_lshl_or_b32 v160, v196, 16, v193
	v_perm_b32 v182, v33, v34, 0xc0c0004
	v_lshl_or_b32 v159, v198, 16, v197
	v_perm_b32 v183, v11, v12, 0xc0c0004
	v_lshl_or_b32 v161, v179, 16, v161
	v_perm_b32 v179, v15, v16, 0xc0c0004
	v_perm_b32 v184, v13, v14, 0xc0c0004
	v_perm_b32 v185, v7, v8, 0xc0c0004
	v_perm_b32 v186, v9, v10, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[149:156], v[161:164], v[157:160], v[149:156] neg_lo:[1,1,0]
	v_perm_b32 v157, v3, v4, 0xc0c0004
	v_perm_b32 v161, v5, v6, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v162, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v163, v166, v165, 0xc0c0004
	v_perm_b32 v165, v172, v171, 0xc0c0004
	v_perm_b32 v166, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v167, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v174, v173, 0xc0c0004
	v_perm_b32 v169, v181, v180, 0xc0c0004
	v_perm_b32 v170, v178, v177, 0xc0c0004
	v_lshl_or_b32 v160, v182, 16, v179
	v_lshl_or_b32 v159, v184, 16, v183
	v_lshl_or_b32 v158, v186, 16, v185
	v_lshl_or_b32 v157, v161, 16, v157
	v_lshl_or_b32 v164, v163, 16, v162
	v_lshl_or_b32 v163, v166, 16, v165
	v_lshl_or_b32 v162, v168, 16, v167
	v_lshl_or_b32 v161, v170, 16, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[149:156], v[161:164], v[157:160], v[149:156] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v152, v152
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v154, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v149, v149
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v32, v32, v152 :: v_dual_add_f32 v31, v31, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v151, v153
	v_cvt_f32_i32_e32 v152, v156
	v_cvt_f32_i32_e32 v153, v155
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v22, v22, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v26, v26, v150 :: v_dual_add_f32 v21, v21, v151
	v_dual_add_f32 v30, v30, v152 :: v_dual_add_f32 v29, v29, v153
	v_add_f32_e32 v25, v25, v149
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v193, s1, v56
	v_add_nc_u32_e32 v194, s1, v55
	v_add_nc_u32_e32 v191, s1, v58
	v_add_nc_u32_e32 v197, s1, v52
	v_add_nc_u32_e32 v192, s1, v57
	v_add_nc_u32_e32 v195, s1, v54
	v_add_nc_u32_e32 v196, s1, v53
	v_add_nc_u32_e32 v198, s1, v51
	v_add_nc_u32_e32 v199, s1, v50
	v_add_nc_u32_e32 v200, s1, v49
	v_add_nc_u32_e32 v201, s1, v48
	v_add_nc_u32_e32 v202, s1, v47
	v_add_nc_u32_e32 v203, s1, v46
	v_add_nc_u32_e32 v204, s1, v45
	v_add_nc_u32_e32 v205, s1, v44
	v_add_nc_u32_e32 v206, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v193, v193
	ds_load_u8 v194, v194
	ds_load_u8 v191, v191
	ds_load_u8 v197, v197
	ds_load_u8 v198, v198
	ds_load_u8 v195, v195
	ds_load_u8 v196, v196
	ds_load_u8 v192, v192
	ds_load_u8 v201, v201
	ds_load_u8 v202, v202
	ds_load_u8 v199, v199
	ds_load_u8 v205, v205
	ds_load_u8 v206, v206
	ds_load_u8 v203, v203
	ds_load_u8 v204, v204
	ds_load_u8 v200, v200
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v145, v145, v146, 0xc0c0004
	v_perm_b32 v146, v147, v148, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v179, s1, v70
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v141, v141, v142, 0xc0c0004
	v_perm_b32 v142, v143, v144, 0xc0c0004
	v_perm_b32 v133, v133, v134, 0xc0c0004
	v_perm_b32 v134, v135, v136, 0xc0c0004
	v_lshl_or_b32 v144, v146, 16, v145
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v180, s1, v69
	v_add_nc_u32_e32 v177, s1, v72
	v_add_nc_u32_e32 v183, s1, v66
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v135, v192, v191, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v178, s1, v71
	v_add_nc_u32_e32 v181, s1, v68
	v_add_nc_u32_e32 v182, s1, v67
	v_add_nc_u32_e32 v184, s1, v65
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v145, v206, v205, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v185, s1, v64
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v191, v204, v203, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v186, s1, v63
	v_add_nc_u32_e32 v187, s1, v62
	v_add_nc_u32_e32 v188, s1, v61
	v_add_nc_u32_e32 v189, s1, v60
	v_add_nc_u32_e32 v190, s1, v59
	v_add_nc_u32_e32 v207, s1, v43
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v137, v137, v138, 0xc0c0004
	v_perm_b32 v138, v139, v140, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v140, s1, v42
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v145, v191, 16, v145
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v177, v177
	ds_load_u8 v183, v183
	ds_load_u8 v184, v184
	ds_load_u8 v181, v181
	ds_load_u8 v182, v182
	ds_load_u8 v178, v178
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v185, v185
	ds_load_u8 v191, v207
	ds_load_u8 v192, v140
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	ds_load_u8 v186, v186
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v150, s1, v99
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v143, v142, 16, v141
	v_lshl_or_b32 v142, v138, 16, v137
	v_lshl_or_b32 v141, v134, 16, v133
	v_perm_b32 v134, v194, v193, 0xc0c0004
	v_perm_b32 v136, v198, v197, 0xc0c0004
	v_perm_b32 v137, v196, v195, 0xc0c0004
	v_perm_b32 v138, v202, v201, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v139, v200, v199, 0xc0c0004
	v_mov_b32_e32 v133, 0
	v_perm_b32 v129, v129, v130, 0xc0c0004
	v_perm_b32 v130, v131, v132, 0xc0c0004
	v_perm_b32 v125, v125, v126, 0xc0c0004
	v_perm_b32 v127, v127, v128, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v149, s1, v100
	v_add_nc_u32_e32 v151, s1, v98
	v_add_nc_u32_e32 v152, s1, v97
	v_add_nc_u32_e32 v153, s1, v96
	v_add_nc_u32_e32 v154, s1, v95
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v140, v133 :: v_dual_add_nc_u32 v155, s1, v94
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v156, s1, v93
	v_add_nc_u32_e32 v165, s1, v84
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v148, v135, 16, v134
	v_lshl_or_b32 v147, v137, 16, v136
	v_lshl_or_b32 v146, v139, 16, v138
	v_mov_b32_e32 v134, v133
	v_mov_b32_e32 v135, v133
	v_mov_b32_e32 v136, v133
	v_mov_b32_e32 v137, v133
	v_mov_b32_e32 v138, v133
	v_mov_b32_e32 v139, v133
	v_lshl_or_b32 v126, v130, 16, v129
	v_lshl_or_b32 v125, v127, 16, v125
	v_perm_b32 v121, v121, v122, 0xc0c0004
	v_perm_b32 v122, v123, v124, 0xc0c0004
	v_perm_b32 v117, v117, v118, 0xc0c0004
	v_perm_b32 v118, v119, v120, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v119, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v120, v178, v177, 0xc0c0004
	v_perm_b32 v127, v184, v183, 0xc0c0004
	v_perm_b32 v129, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v130, v188, v187, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v186, v185, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v166, s1, v83
	v_add_nc_u32_e32 v163, s1, v86
	v_add_nc_u32_e32 v169, s1, v80
	v_add_nc_u32_e32 v170, s1, v79
	v_add_nc_u32_e32 v128, s1, v41
	v_add_nc_u32_e32 v131, s1, v40
	v_add_nc_u32_e32 v164, s1, v85
	v_add_nc_u32_e32 v167, s1, v82
	v_add_nc_u32_e32 v168, s1, v81
	v_add_nc_u32_e32 v171, s1, v78
	v_add_nc_u32_e32 v172, s1, v77
	v_add_nc_u32_e32 v173, s1, v76
	v_add_nc_u32_e32 v174, s1, v75
	v_add_nc_u32_e32 v175, s1, v74
	v_add_nc_u32_e32 v176, s1, v73
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[133:140], v[145:148], v[141:144], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v124, v122, 16, v121
	v_lshl_or_b32 v123, v118, 16, v117
	v_lshl_or_b32 v120, v120, 16, v119
	v_lshl_or_b32 v119, v129, 16, v127
	v_lshl_or_b32 v118, v132, 16, v130
	ds_load_u8 v122, v165
	ds_load_u8 v127, v166
	ds_load_u8 v129, v163
	ds_load_u8 v130, v169
	ds_load_u8 v132, v170
	ds_load_u8 v141, v167
	ds_load_u8 v142, v168
	ds_load_u8 v143, v164
	ds_load_u8 v144, v173
	ds_load_u8 v145, v174
	ds_load_u8 v146, v171
	ds_load_u8 v128, v128
	ds_load_u8 v131, v131
	ds_load_u8 v147, v175
	ds_load_u8 v148, v176
	ds_load_u8 v163, v172
	v_perm_b32 v117, v192, v191, 0xc0c0004
	v_perm_b32 v121, v190, v189, 0xc0c0004
	v_perm_b32 v113, v113, v114, 0xc0c0004
	v_perm_b32 v114, v115, v116, 0xc0c0004
	v_perm_b32 v109, v109, v110, 0xc0c0004
	v_perm_b32 v111, v111, v112, 0xc0c0004
	v_lshl_or_b32 v117, v121, 16, v117
	v_perm_b32 v105, v105, v106, 0xc0c0004
	v_lshl_or_b32 v110, v114, 16, v113
	v_perm_b32 v106, v107, v108, 0xc0c0004
	v_lshl_or_b32 v109, v111, 16, v109
	v_perm_b32 v101, v101, v102, 0xc0c0004
	v_perm_b32 v102, v103, v104, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v103, v127, v122, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v104, v143, v129, 0xc0c0004
	v_perm_b32 v111, v132, v130, 0xc0c0004
	v_perm_b32 v113, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v114, v145, v144, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v112, s1, v39
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v163, v146, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v115, s1, v38
	v_add_nc_u32_e32 v157, s1, v92
	v_add_nc_u32_e32 v158, s1, v91
	v_add_nc_u32_e32 v159, s1, v90
	v_add_nc_u32_e32 v160, s1, v89
	v_add_nc_u32_e32 v161, s1, v88
	v_add_nc_u32_e32 v162, s1, v87
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[133:140], v[117:120], v[123:126], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v108, v106, 16, v105
	v_lshl_or_b32 v107, v102, 16, v101
	v_lshl_or_b32 v104, v104, 16, v103
	v_lshl_or_b32 v103, v113, 16, v111
	v_lshl_or_b32 v102, v116, 16, v114
	ds_load_u8 v106, v151
	ds_load_u8 v111, v152
	ds_load_u8 v113, v149
	ds_load_u8 v114, v155
	ds_load_u8 v116, v156
	ds_load_u8 v117, v153
	ds_load_u8 v118, v154
	ds_load_u8 v119, v150
	ds_load_u8 v120, v159
	ds_load_u8 v121, v160
	ds_load_u8 v122, v157
	ds_load_u8 v112, v112
	ds_load_u8 v115, v115
	ds_load_u8 v123, v161
	ds_load_u8 v124, v162
	ds_load_u8 v125, v158
	v_perm_b32 v101, v131, v128, 0xc0c0004
	v_perm_b32 v105, v148, v147, 0xc0c0004
	v_perm_b32 v15, v15, v16, 0xc0c0004
	v_perm_b32 v16, v33, v34, 0xc0c0004
	v_perm_b32 v11, v11, v12, 0xc0c0004
	v_perm_b32 v12, v13, v14, 0xc0c0004
	v_perm_b32 v7, v7, v8, 0xc0c0004
	v_perm_b32 v10, v9, v10, 0xc0c0004
	v_lshl_or_b32 v101, v105, 16, v101
	v_lshl_or_b32 v9, v16, 16, v15
	v_lshl_or_b32 v8, v12, 16, v11
	v_perm_b32 v3, v3, v4, 0xc0c0004
	v_lshl_or_b32 v7, v10, 16, v7
	v_perm_b32 v4, v5, v6, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v5, v111, v106, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v119, v113, 0xc0c0004
	v_perm_b32 v11, v116, v114, 0xc0c0004
	v_perm_b32 v12, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v14, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v125, v122, 0xc0c0004
	v_perm_b32 v16, v115, v112, 0xc0c0004
	v_perm_b32 v33, v124, v123, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[133:140], v[101:104], v[107:110], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v4, 16, v3
	v_lshl_or_b32 v13, v10, 16, v5
	v_lshl_or_b32 v12, v12, 16, v11
	v_lshl_or_b32 v11, v15, 16, v14
	v_lshl_or_b32 v10, v33, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[10:13], v[6:9], v[133:140] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v4, v135
	v_cvt_f32_i32_e32 v5, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v6, v134
	v_cvt_f32_i32_e32 v7, v133
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v28, v28, v3 :: v_dual_add_f32 v27, v27, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v137
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v20, v20, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v140
	v_cvt_f32_i32_e32 v5, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v18, v18, v6 :: v_dual_add_f32 v19, v19, v3
	v_dual_add_f32 v17, v17, v7 :: v_dual_add_f32 v24, v24, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v23, v23, v5
.LBB0_12:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(2)
	v_add_nc_u32_e32 v16, s35, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v149, 0, 1, s2
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v33, s35, v2
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v151, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v149
	v_mov_b32_e32 v149, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v132, v16
	ds_load_u8_d16 v133, v16 offset:16
	ds_load_u8_d16 v134, v16 offset:32
	ds_load_u8_d16 v135, v16 offset:48
	ds_load_u8_d16 v136, v16 offset:64
	ds_load_u8_d16 v137, v16 offset:80
	ds_load_u8_d16 v138, v16 offset:96
	ds_load_u8_d16 v139, v16 offset:112
	ds_load_u8_d16 v140, v16 offset:128
	ds_load_u8_d16 v141, v16 offset:144
	ds_load_u8_d16 v142, v16 offset:160
	ds_load_u8_d16 v143, v16 offset:176
	ds_load_u8_d16 v144, v16 offset:192
	ds_load_u8_d16 v145, v16 offset:208
	ds_load_u8_d16 v146, v16 offset:224
	ds_load_u8_d16 v147, v16 offset:240
	ds_load_u8_d16 v116, v16 offset:256
	ds_load_u8_d16 v117, v16 offset:272
	ds_load_u8_d16 v118, v16 offset:288
	ds_load_u8_d16 v119, v16 offset:304
	ds_load_u8_d16 v120, v16 offset:320
	ds_load_u8_d16 v121, v16 offset:336
	ds_load_u8_d16 v122, v16 offset:352
	ds_load_u8_d16 v123, v16 offset:368
	ds_load_u8_d16 v124, v16 offset:384
	ds_load_u8_d16 v125, v16 offset:400
	ds_load_u8_d16 v126, v16 offset:416
	ds_load_u8_d16 v127, v16 offset:432
	ds_load_u8_d16 v128, v16 offset:448
	ds_load_u8_d16 v129, v16 offset:464
	ds_load_u8_d16 v130, v16 offset:480
	ds_load_u8_d16 v131, v16 offset:496
	s_waitcnt lgkmcnt(32)
	ds_load_u8_d16 v34, v16 offset:512
	ds_load_u8_d16 v101, v16 offset:528
	ds_load_u8_d16 v102, v16 offset:544
	ds_load_u8_d16 v103, v16 offset:560
	ds_load_u8_d16 v104, v16 offset:576
	ds_load_u8_d16 v105, v16 offset:592
	ds_load_u8_d16 v106, v16 offset:608
	ds_load_u8_d16 v107, v16 offset:624
	ds_load_u8_d16 v108, v16 offset:640
	ds_load_u8_d16 v109, v16 offset:656
	ds_load_u8_d16 v110, v16 offset:672
	ds_load_u8_d16 v111, v16 offset:688
	ds_load_u8_d16 v112, v16 offset:704
	ds_load_u8_d16 v113, v16 offset:720
	ds_load_u8_d16 v114, v16 offset:736
	ds_load_u8_d16 v115, v16 offset:752
	ds_load_u8_d16 v3, v16 offset:768
	ds_load_u8_d16 v4, v16 offset:784
	ds_load_u8_d16 v5, v16 offset:800
	ds_load_u8_d16 v6, v16 offset:816
	ds_load_u8_d16 v7, v16 offset:832
	ds_load_u8_d16 v8, v16 offset:848
	ds_load_u8_d16 v9, v16 offset:864
	ds_load_u8_d16 v10, v16 offset:880
	ds_load_u8_d16 v2, v16 offset:896
	ds_load_u8_d16 v11, v16 offset:912
	ds_load_u8_d16 v12, v16 offset:928
	ds_load_u8_d16 v13, v16 offset:944
	ds_load_u8_d16 v14, v16 offset:960
	ds_load_u8_d16 v15, v16 offset:976
	ds_load_u8_d16 v16, v16 offset:992
	ds_load_u8_d16 v33, v33
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v155, 0
	v_mov_b32_e32 v152, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s33, v56
	v_add_nc_u32_e32 v152, s33, v55
	v_add_nc_u32_e32 v149, s33, v58
	v_add_nc_u32_e32 v158, s33, v52
	v_add_nc_u32_e32 v156, s33, v54
	v_add_nc_u32_e32 v157, s33, v53
	v_add_nc_u32_e32 v159, s33, v51
	v_add_nc_u32_e32 v160, s33, v50
	v_add_nc_u32_e32 v161, s33, v49
	v_add_nc_u32_e32 v162, s33, v48
	v_add_nc_u32_e32 v164, s33, v47
	v_add_nc_u32_e32 v165, s33, v46
	v_add_nc_u32_e32 v166, s33, v45
	v_add_nc_u32_e32 v167, s33, v44
	v_add_nc_u32_e32 v206, s33, v1
	v_add_nc_u32_e32 v150, s33, v57
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v207, v151
	ds_load_u8 v208, v152
	ds_load_u8 v209, v149
	ds_load_u8 v158, v158
	ds_load_u8 v159, v159
	ds_load_u8 v156, v156
	ds_load_u8 v157, v157
	ds_load_u8 v210, v150
	ds_load_u8 v162, v162
	ds_load_u8 v164, v164
	ds_load_u8 v160, v160
	ds_load_u8 v167, v167
	ds_load_u8 v206, v206
	ds_load_u8 v165, v165
	ds_load_u8 v166, v166
	ds_load_u8 v161, v161
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v194, s33, v70
	v_add_nc_u32_e32 v195, s33, v69
	v_add_nc_u32_e32 v163, s33, v72
	v_add_nc_u32_e32 v198, s33, v66
	v_add_nc_u32_e32 v193, s33, v71
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v207, v208, v207, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v196, s33, v68
	v_add_nc_u32_e32 v197, s33, v67
	v_add_nc_u32_e32 v199, s33, v65
	v_add_nc_u32_e32 v200, s33, v64
	v_add_nc_u32_e32 v201, s33, v63
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v208, v210, v209, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v202, s33, v62
	v_add_nc_u32_e32 v203, s33, v61
	v_add_nc_u32_e32 v204, s33, v60
	v_add_nc_u32_e32 v205, s33, v59
	v_add_nc_u32_e32 v211, s33, v43
	v_add_nc_u32_e32 v217, s33, v42
	v_add_nc_u32_e32 v153, s33, v100
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	v_perm_b32 v161, v206, v167, 0xc0c0004
	v_lshl_or_b32 v167, v208, 16, v207
	ds_load_u8 v194, v194
	ds_load_u8 v195, v195
	ds_load_u8 v206, v163
	ds_load_u8 v198, v198
	ds_load_u8 v199, v199
	ds_load_u8 v196, v196
	ds_load_u8 v197, v197
	ds_load_u8 v193, v193
	ds_load_u8 v202, v202
	ds_load_u8 v203, v203
	ds_load_u8 v200, v200
	ds_load_u8 v207, v211
	ds_load_u8 v208, v217
	ds_load_u8 v204, v204
	ds_load_u8 v205, v205
	ds_load_u8 v201, v201
	v_perm_b32 v149, v144, v145, 0xc0c0004
	v_perm_b32 v150, v146, v147, 0xc0c0004
	v_perm_b32 v151, v140, v141, 0xc0c0004
	v_perm_b32 v212, v142, v143, 0xc0c0004
	v_perm_b32 v213, v136, v137, 0xc0c0004
	v_perm_b32 v214, v138, v139, 0xc0c0004
	v_perm_b32 v215, v132, v133, 0xc0c0004
	v_perm_b32 v216, v134, v135, 0xc0c0004
	v_perm_b32 v158, v159, v158, 0xc0c0004
	v_perm_b32 v157, v157, v156, 0xc0c0004
	v_perm_b32 v159, v164, v162, 0xc0c0004
	v_perm_b32 v162, v166, v165, 0xc0c0004
	v_mov_b32_e32 v156, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v154, s33, v99
	v_add_nc_u32_e32 v155, s33, v98
	v_add_nc_u32_e32 v168, s33, v97
	v_add_nc_u32_e32 v169, s33, v96
	v_add_nc_u32_e32 v170, s33, v95
	v_add_nc_u32_e32 v171, s33, v94
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v163, v156 :: v_dual_add_nc_u32 v172, s33, v93
	v_lshl_or_b32 v152, v150, 16, v149
	v_lshl_or_b32 v151, v212, 16, v151
	v_lshl_or_b32 v150, v214, 16, v213
	v_lshl_or_b32 v149, v216, 16, v215
	v_lshl_or_b32 v166, v157, 16, v158
	v_lshl_or_b32 v165, v160, 16, v159
	v_lshl_or_b32 v164, v162, 16, v161
	v_mov_b32_e32 v157, v156
	v_mov_b32_e32 v158, v156
	v_mov_b32_e32 v159, v156
	v_mov_b32_e32 v160, v156
	v_mov_b32_e32 v161, v156
	v_dual_mov_b32 v162, v156 :: v_dual_add_nc_u32 v181, s33, v84
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v182, s33, v83
	v_add_nc_u32_e32 v179, s33, v86
	v_add_nc_u32_e32 v185, s33, v80
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[156:163], v[164:167], v[149:152], v[156:163] neg_lo:[1,1,0]
	v_perm_b32 v149, v120, v121, 0xc0c0004
	v_perm_b32 v150, v122, v123, 0xc0c0004
	v_perm_b32 v164, v116, v117, 0xc0c0004
	v_perm_b32 v165, v118, v119, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v166, v195, v194, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v167, v193, v206, 0xc0c0004
	v_perm_b32 v193, v199, v198, 0xc0c0004
	v_perm_b32 v194, v197, v196, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v195, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v196, v201, v200, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v180, s33, v85
	v_add_nc_u32_e32 v183, s33, v82
	v_add_nc_u32_e32 v184, s33, v81
	v_add_nc_u32_e32 v186, s33, v79
	v_add_nc_u32_e32 v187, s33, v78
	v_add_nc_u32_e32 v188, s33, v77
	v_add_nc_u32_e32 v189, s33, v76
	v_add_nc_u32_e32 v190, s33, v75
	v_add_nc_u32_e32 v191, s33, v74
	v_add_nc_u32_e32 v192, s33, v73
	v_add_nc_u32_e32 v213, s33, v41
	v_add_nc_u32_e32 v214, s33, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v150, v150, 16, v149
	v_lshl_or_b32 v149, v165, 16, v164
	v_lshl_or_b32 v167, v167, 16, v166
	v_lshl_or_b32 v166, v194, 16, v193
	v_lshl_or_b32 v165, v196, 16, v195
	ds_load_u8 v181, v181
	ds_load_u8 v182, v182
	ds_load_u8 v179, v179
	ds_load_u8 v185, v185
	ds_load_u8 v186, v186
	ds_load_u8 v183, v183
	ds_load_u8 v184, v184
	ds_load_u8 v180, v180
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	ds_load_u8 v187, v187
	ds_load_u8 v194, v213
	ds_load_u8 v195, v214
	ds_load_u8 v191, v191
	ds_load_u8 v192, v192
	ds_load_u8 v188, v188
	v_perm_b32 v209, v128, v129, 0xc0c0004
	v_perm_b32 v210, v130, v131, 0xc0c0004
	v_perm_b32 v211, v124, v125, 0xc0c0004
	v_perm_b32 v212, v126, v127, 0xc0c0004
	v_perm_b32 v164, v208, v207, 0xc0c0004
	v_perm_b32 v193, v205, v204, 0xc0c0004
	v_lshl_or_b32 v152, v210, 16, v209
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v173, s33, v92
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v151, v212, 16, v211
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v174, s33, v91
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v164, v193, 16, v164
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v175, s33, v90
	v_add_nc_u32_e32 v176, s33, v89
	v_add_nc_u32_e32 v177, s33, v88
	v_add_nc_u32_e32 v178, s33, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[156:163], v[164:167], v[149:152], v[156:163] neg_lo:[1,1,0]
	v_perm_b32 v149, v104, v105, 0xc0c0004
	v_perm_b32 v150, v106, v107, 0xc0c0004
	v_perm_b32 v164, v34, v101, 0xc0c0004
	v_perm_b32 v165, v102, v103, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v166, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v167, v180, v179, 0xc0c0004
	v_perm_b32 v179, v186, v185, 0xc0c0004
	v_perm_b32 v180, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v181, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v188, v187, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v199, s33, v39
	v_add_nc_u32_e32 v200, s33, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v150, v150, 16, v149
	v_lshl_or_b32 v149, v165, 16, v164
	v_lshl_or_b32 v167, v167, 16, v166
	v_lshl_or_b32 v166, v180, 16, v179
	v_lshl_or_b32 v165, v182, 16, v181
	ds_load_u8 v155, v155
	ds_load_u8 v168, v168
	ds_load_u8 v153, v153
	ds_load_u8 v171, v171
	ds_load_u8 v172, v172
	ds_load_u8 v169, v169
	ds_load_u8 v170, v170
	ds_load_u8 v154, v154
	ds_load_u8 v175, v175
	ds_load_u8 v176, v176
	ds_load_u8 v173, v173
	ds_load_u8 v180, v199
	ds_load_u8 v181, v200
	ds_load_u8 v177, v177
	ds_load_u8 v178, v178
	ds_load_u8 v174, v174
	v_perm_b32 v193, v112, v113, 0xc0c0004
	v_perm_b32 v196, v114, v115, 0xc0c0004
	v_perm_b32 v197, v108, v109, 0xc0c0004
	v_perm_b32 v198, v110, v111, 0xc0c0004
	v_perm_b32 v164, v195, v194, 0xc0c0004
	v_perm_b32 v179, v192, v191, 0xc0c0004
	v_lshl_or_b32 v152, v196, 16, v193
	v_perm_b32 v182, v16, v33, 0xc0c0004
	v_lshl_or_b32 v151, v198, 16, v197
	v_perm_b32 v183, v2, v11, 0xc0c0004
	v_lshl_or_b32 v164, v179, 16, v164
	v_perm_b32 v179, v14, v15, 0xc0c0004
	v_perm_b32 v184, v12, v13, 0xc0c0004
	v_perm_b32 v185, v7, v8, 0xc0c0004
	v_perm_b32 v186, v9, v10, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[156:163], v[164:167], v[149:152], v[156:163] neg_lo:[1,1,0]
	v_perm_b32 v149, v3, v4, 0xc0c0004
	v_perm_b32 v164, v5, v6, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v155, v168, v155, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	v_perm_b32 v154, v172, v171, 0xc0c0004
	v_perm_b32 v165, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v168, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v174, v173, 0xc0c0004
	v_perm_b32 v170, v181, v180, 0xc0c0004
	v_perm_b32 v171, v178, v177, 0xc0c0004
	v_lshl_or_b32 v152, v182, 16, v179
	v_lshl_or_b32 v151, v184, 16, v183
	v_lshl_or_b32 v150, v186, 16, v185
	v_lshl_or_b32 v149, v164, 16, v149
	v_lshl_or_b32 v167, v153, 16, v155
	v_lshl_or_b32 v166, v165, 16, v154
	v_lshl_or_b32 v165, v169, 16, v168
	v_lshl_or_b32 v164, v171, 16, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[156:163], v[164:167], v[149:152], v[156:163] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v150, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v153, v159
	v_cvt_f32_i32_e32 v149, v160
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v151, v161
	v_cvt_f32_i32_e32 v152, v162
	v_cvt_f32_i32_e32 v155, v163
	v_cvt_f32_i32_e32 v154, v156
	v_cvt_f32_i32_e32 v156, v157
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_mov_b32_e32 v163, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v56, s30, v56
	v_add_nc_u32_e32 v55, s30, v55
	v_add_nc_u32_e32 v58, s30, v58
	v_add_nc_u32_e32 v52, s30, v52
	v_add_nc_u32_e32 v57, s30, v57
	v_add_nc_u32_e32 v54, s30, v54
	v_add_nc_u32_e32 v51, s30, v51
	v_add_nc_u32_e32 v49, s30, v49
	v_add_nc_u32_e32 v48, s30, v48
	v_add_nc_u32_e32 v47, s30, v47
	v_add_nc_u32_e32 v46, s30, v46
	v_add_nc_u32_e32 v45, s30, v45
	v_add_nc_u32_e32 v44, s30, v44
	v_add_nc_u32_e32 v1, s30, v1
	v_add_nc_u32_e32 v53, s30, v53
	v_add_nc_u32_e32 v50, s30, v50
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v56, v56
	ds_load_u8 v55, v55
	ds_load_u8 v58, v58
	ds_load_u8 v148, v52
	ds_load_u8 v157, v51
	ds_load_u8 v54, v54
	ds_load_u8 v158, v53
	ds_load_u8 v57, v57
	ds_load_u8 v48, v48
	ds_load_u8 v47, v47
	ds_load_u8 v159, v50
	ds_load_u8 v44, v44
	ds_load_u8 v1, v1
	ds_load_u8 v46, v46
	ds_load_u8 v45, v45
	ds_load_u8 v49, v49
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v160, s30, v43
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v43, v144, v145, 0xc0c0004
	v_perm_b32 v50, v146, v147, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v70, s30, v70
	v_add_nc_u32_e32 v69, s30, v69
	v_add_nc_u32_e32 v72, s30, v72
	v_add_nc_u32_e32 v66, s30, v66
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v53, v50, 16, v43
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v43, v55, v56, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v56, v157, v148, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v54, v158, v54, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v71, s30, v71
	v_add_nc_u32_e32 v68, s30, v68
	v_add_nc_u32_e32 v67, s30, v67
	v_add_nc_u32_e32 v65, s30, v65
	v_add_nc_u32_e32 v64, s30, v64
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v1, v44, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v63, s30, v63
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v44, v45, v46, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v62, s30, v62
	v_add_nc_u32_e32 v61, s30, v61
	v_add_nc_u32_e32 v60, s30, v60
	v_add_nc_u32_e32 v59, s30, v59
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v132, v132, v133, 0xc0c0004
	v_perm_b32 v133, v134, v135, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v134, s30, v42
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v55, v57, v58, 0xc0c0004
	v_lshl_or_b32 v56, v54, 16, v56
	v_lshl_or_b32 v54, v44, 16, v1
	ds_load_u8 v1, v70
	ds_load_u8 v58, v69
	ds_load_u8 v69, v72
	ds_load_u8 v66, v66
	ds_load_u8 v65, v65
	ds_load_u8 v68, v68
	ds_load_u8 v67, v67
	ds_load_u8 v70, v71
	ds_load_u8 v62, v62
	ds_load_u8 v61, v61
	ds_load_u8 v64, v64
	ds_load_u8 v71, v160
	ds_load_u8 v72, v134
	ds_load_u8 v60, v60
	ds_load_u8 v59, v59
	ds_load_u8 v63, v63
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v99, s30, v99
	v_perm_b32 v51, v140, v141, 0xc0c0004
	v_perm_b32 v52, v142, v143, 0xc0c0004
	v_perm_b32 v136, v136, v137, 0xc0c0004
	v_perm_b32 v137, v138, v139, 0xc0c0004
	v_perm_b32 v47, v47, v48, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v48, v49, v159, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v100, s30, v100
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v45, v42 :: v_dual_add_nc_u32 v98, s30, v98
	v_dual_mov_b32 v44, v42 :: v_dual_add_nc_u32 v97, s30, v97
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v96, s30, v96
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v46, v42 :: v_dual_add_nc_u32 v95, s30, v95
	v_dual_mov_b32 v49, v42 :: v_dual_add_nc_u32 v94, s30, v94
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v93, s30, v93
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v52, v52, 16, v51
	v_lshl_or_b32 v51, v137, 16, v136
	v_lshl_or_b32 v50, v133, 16, v132
	v_lshl_or_b32 v57, v55, 16, v43
	v_lshl_or_b32 v55, v48, 16, v47
	v_mov_b32_e32 v43, v42
	v_mov_b32_e32 v47, v42
	v_mov_b32_e32 v48, v42
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v84, s30, v84
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v58, v1, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v58, v65, v66, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v65, v67, v68, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[42:49], v[54:57], v[50:53], v[42:49] neg_lo:[1,1,0]
	v_perm_b32 v50, v120, v121, 0xc0c0004
	v_perm_b32 v51, v122, v123, 0xc0c0004
	v_perm_b32 v54, v116, v117, 0xc0c0004
	v_perm_b32 v55, v118, v119, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v56, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v61, v61, v62, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v64, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v83, s30, v83
	v_add_nc_u32_e32 v86, s30, v86
	v_add_nc_u32_e32 v80, s30, v80
	v_add_nc_u32_e32 v79, s30, v79
	v_add_nc_u32_e32 v73, s30, v73
	v_add_nc_u32_e32 v85, s30, v85
	v_add_nc_u32_e32 v82, s30, v82
	v_add_nc_u32_e32 v81, s30, v81
	v_add_nc_u32_e32 v78, s30, v78
	v_add_nc_u32_e32 v77, s30, v77
	v_add_nc_u32_e32 v76, s30, v76
	v_add_nc_u32_e32 v75, s30, v75
	v_add_nc_u32_e32 v74, s30, v74
	v_add_nc_u32_e32 v41, s30, v41
	v_add_nc_u32_e32 v40, s30, v40
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v51, v51, 16, v50
	v_lshl_or_b32 v50, v55, 16, v54
	v_lshl_or_b32 v57, v56, 16, v1
	v_lshl_or_b32 v56, v65, 16, v58
	v_lshl_or_b32 v55, v62, 16, v61
	v_perm_b32 v1, v72, v71, 0xc0c0004
	v_perm_b32 v54, v59, v60, 0xc0c0004
	ds_load_u8 v58, v84
	ds_load_u8 v59, v83
	ds_load_u8 v60, v86
	ds_load_u8 v61, v80
	ds_load_u8 v62, v79
	ds_load_u8 v63, v82
	ds_load_u8 v64, v81
	ds_load_u8 v65, v85
	ds_load_u8 v66, v76
	ds_load_u8 v67, v75
	ds_load_u8 v68, v78
	ds_load_u8 v69, v41
	ds_load_u8 v70, v40
	ds_load_u8 v71, v74
	ds_load_u8 v72, v73
	ds_load_u8 v73, v77
	v_perm_b32 v128, v128, v129, 0xc0c0004
	v_perm_b32 v129, v130, v131, 0xc0c0004
	v_perm_b32 v124, v124, v125, 0xc0c0004
	v_perm_b32 v125, v126, v127, 0xc0c0004
	v_lshl_or_b32 v54, v54, 16, v1
	v_perm_b32 v1, v112, v113, 0xc0c0004
	v_lshl_or_b32 v53, v129, 16, v128
	v_perm_b32 v40, v114, v115, 0xc0c0004
	v_lshl_or_b32 v52, v125, 16, v124
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v77, s30, v38
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v38, v106, v107, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v92, s30, v92
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v41, v40, 16, v1
	v_wmma_i32_16x16x16_iu8 v[42:49], v[54:57], v[50:53], v[42:49] neg_lo:[1,1,0]
	v_perm_b32 v1, v104, v105, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v51, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v52, v65, v60, 0xc0c0004
	v_perm_b32 v54, v62, v61, 0xc0c0004
	v_perm_b32 v55, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v56, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v73, v68, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v91, s30, v91
	v_add_nc_u32_e32 v90, s30, v90
	v_add_nc_u32_e32 v89, s30, v89
	v_add_nc_u32_e32 v88, s30, v88
	v_add_nc_u32_e32 v87, s30, v87
	v_add_nc_u32_e32 v76, s30, v39
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v39, v38, 16, v1
	v_lshl_or_b32 v53, v52, 16, v51
	v_lshl_or_b32 v52, v55, 16, v54
	v_lshl_or_b32 v51, v57, 16, v56
	v_perm_b32 v1, v70, v69, 0xc0c0004
	ds_load_u8 v54, v98
	ds_load_u8 v55, v97
	ds_load_u8 v56, v100
	ds_load_u8 v57, v94
	ds_load_u8 v58, v93
	ds_load_u8 v59, v96
	ds_load_u8 v60, v95
	ds_load_u8 v61, v99
	ds_load_u8 v62, v90
	ds_load_u8 v63, v89
	ds_load_u8 v64, v92
	ds_load_u8 v65, v76
	ds_load_u8 v66, v77
	ds_load_u8 v67, v88
	ds_load_u8 v68, v87
	ds_load_u8 v69, v91
	v_perm_b32 v34, v34, v101, 0xc0c0004
	v_perm_b32 v50, v102, v103, 0xc0c0004
	v_perm_b32 v74, v108, v109, 0xc0c0004
	v_perm_b32 v75, v110, v111, 0xc0c0004
	v_perm_b32 v2, v2, v11, 0xc0c0004
	v_perm_b32 v11, v12, v13, 0xc0c0004
	v_lshl_or_b32 v38, v50, 16, v34
	v_perm_b32 v34, v72, v71, 0xc0c0004
	v_perm_b32 v7, v7, v8, 0xc0c0004
	v_perm_b32 v10, v9, v10, 0xc0c0004
	v_lshl_or_b32 v40, v75, 16, v74
	v_lshl_or_b32 v8, v11, 16, v2
	v_lshl_or_b32 v50, v34, 16, v1
	v_perm_b32 v1, v14, v15, 0xc0c0004
	v_perm_b32 v14, v16, v33, 0xc0c0004
	v_lshl_or_b32 v7, v10, 16, v7
	v_perm_b32 v2, v5, v6, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v5, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v10, v60, v59, 0xc0c0004
	v_lshl_or_b32 v9, v14, 16, v1
	v_perm_b32 v1, v3, v4, 0xc0c0004
	v_perm_b32 v3, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v61, v56, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v69, v64, 0xc0c0004
	v_perm_b32 v13, v66, v65, 0xc0c0004
	v_perm_b32 v14, v68, v67, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[42:49], v[50:53], v[38:41], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v2, 16, v1
	v_lshl_or_b32 v4, v4, 16, v3
	v_lshl_or_b32 v3, v10, 16, v5
	v_lshl_or_b32 v2, v12, 16, v11
	v_lshl_or_b32 v1, v14, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[1:4], v[6:9], v[42:49] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v148, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v157, v43
	v_cvt_f32_i32_e32 v159, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v162, v45
	v_cvt_f32_i32_e32 v158, v46
	v_cvt_f32_i32_e32 v160, v47
	v_cvt_f32_i32_e32 v161, v48
	v_cvt_f32_i32_e32 v163, v49
.LBB0_16:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s0, s28, s15
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt lgkmcnt(7)
	v_and_or_b32 v2, v1, 1, v37
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v1, s29, v36
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_mov_b32 s8, s16
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v43, v30, v155 :: v_dual_add_f32 v50, v19, v158
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 2, v2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	s_waitcnt lgkmcnt(6)
	v_or_b32_e32 v11, s28, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v38, v26, v156 :: v_dual_lshlrev_b32 v9, 1, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v3, 14, v2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v12, s28, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v40, v31, v150 :: v_dual_lshlrev_b32 v11, 1, v11
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 12, v2
	v_or_b32_e32 v5, 10, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v37, v25, v154 :: v_dual_lshlrev_b32 v12, 1, v12
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 8, v2
	v_or_b32_e32 v7, 4, v2
	v_or_b32_e32 v10, 6, v2
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v2, s0, v2, 1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	s_clause 0x2
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v34, v2, s[8:11], 0 offen
	.loc	1 379 22 is_stmt 0              ; generate_amdgcn.py:379:22
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v14, s28, v10
	.loc	1 382 23 is_stmt 1              ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v2, s0, v8, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v13, s28, v7
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v7, s0, v7, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	s_waitcnt lgkmcnt(2)
	v_or_b32_e32 v15, s28, v6
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v16, s28, v5
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v8, s0, v10, 1
	v_add_lshl_u32 v6, s0, v6, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v33, s28, v4
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v5, s0, v5, 1
	v_add_lshl_u32 v4, s0, v4, 1
	v_add_lshl_u32 v10, s0, v3, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v3, s28, v3
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_clause 0x6
	buffer_load_u16 v36, v2, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v39, v32, v153 :: v_dual_lshlrev_b32 v2, 1, v14
	v_dual_add_f32 v44, v29, v152 :: v_dual_lshlrev_b32 v13, 1, v13
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v45, v17, v148 :: v_dual_lshlrev_b32 v14, 1, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v42, v21, v149 :: v_dual_lshlrev_b32 v15, 1, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v46, v18, v157 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x1
	buffer_load_u16 v16, v2, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v41, v22, v151 :: v_dual_lshlrev_b32 v2, 1, v33
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x3
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	buffer_load_u16 v33, v2, s[8:11], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v53, 0x5410
	v_mov_b32_e32 v54, 0x7632
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v17, v45, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v47, v28, v162 :: v_dual_add_f32 v48, v27, v159
	v_dual_add_f32 v49, v20, v160 :: v_dual_add_f32 v52, v23, v161
	v_dual_add_f32 v51, v24, v163 :: v_dual_and_b32 v0, 16, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v37, s2
	v_cndmask_b32_e64 v18, v18, v46, s2
	v_cndmask_b32_e64 v26, v26, v38, s2
	v_cndmask_b32_e64 v27, v27, v48, s2
	v_cndmask_b32_e64 v28, v28, v47, s2
	v_cndmask_b32_e64 v19, v19, v50, s2
	v_cndmask_b32_e64 v23, v23, v52, s2
	v_cndmask_b32_e64 v24, v24, v51, s2
	v_cndmask_b32_e64 v31, v31, v40, s2
	v_cndmask_b32_e64 v21, v21, v42, s2
	v_cndmask_b32_e64 v22, v22, v41, s2
	v_cndmask_b32_e64 v20, v20, v49, s2
	v_cndmask_b32_e64 v29, v29, v44, s2
	v_cndmask_b32_e64 v32, v32, v39, s2
	v_cndmask_b32_e64 v30, v30, v43, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.h, 0
	s_mov_b32 s7, 0x76543210
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s10
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v37.h, v2.h
	v_mov_b16_e32 v38.h, v2.h
	v_mov_b16_e32 v39.h, v2.h
	v_mov_b16_e32 v40.h, v2.h
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v34, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v34, v9, v34 :: v_dual_lshlrev_b32 v11, 16, v11
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v11, v9, v11 :: v_dual_lshlrev_b32 v36, 16, v36
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v17, v17, v34 :: v_dual_lshlrev_b32 v8, 16, v8
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v11, v25, v11 :: v_dual_lshlrev_b32 v4, 16, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v25, 0xbfb8aa3b, v17 :: v_dual_lshlrev_b32 v12, 16, v12
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v36, v9, v36
	v_dual_mul_f32 v7, v9, v7 :: v_dual_lshlrev_b32 v6, 16, v6
	v_mul_f32_e32 v8, v9, v8
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v5, v9, v5 :: v_dual_lshlrev_b32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v6, v9, v6
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v4, v9, v4 :: v_dual_lshlrev_b32 v15, 16, v15
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v13, 16, v13
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v7, v27, v7 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v10, v9, v10 :: v_dual_lshlrev_b32 v3, 16, v3
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v9, v12 :: v_dual_lshlrev_b32 v33, 16, v33
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v18, v18, v36 :: v_dual_mul_f32 v15, v9, v15
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v13, v9, v13
	v_dual_mul_f32 v16, v9, v16 :: v_dual_mul_f32 v5, v20, v5
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v8, v28, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v14, v9, v14 :: v_dual_mul_f32 v13, v31, v13
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v6, v19, v6 :: v_dual_mul_f32 v3, v9, v3
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v19, v9, v33
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v9, v24, v10 :: v_dual_mul_f32 v4, v23, v4
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v10, v26, v12 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v12, 0xbfb8aa3b, v18 :: v_dual_mul_f32 v15, v22, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v14, v21, v14 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v22, 0xbfb8aa3b, v5 :: v_dual_mul_f32 v19, v29, v19
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v25
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v22
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v16, v32, v16 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v23
	v_cndmask_b32_e64 v22, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v21
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_mul_f32_e32 v26, 0xbfb8aa3b, v9
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v12, v12
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v5
	v_exp_f32_e32 v25, v25
	v_dual_mul_f32 v24, 0xbfb8aa3b, v8 :: v_dual_mul_f32 v3, v30, v3
	v_cndmask_b32_e64 v21, 0, 0x42800000, s3
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v7
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v26
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v12, v12, v28
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	v_cndmask_b32_e64 v26, 0, 0x42800000, s4
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v6
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v25, v25, v33
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v22, v22, v31
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, s0, v18, v12, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v9
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	v_ldexp_f32 v20, v20, v27
	v_ldexp_f32 v23, v23, v30
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v8
	v_exp_f32_e32 v26, v26
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s4
	v_ldexp_f32 v21, v21, v32
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_add_f32 v23, 1.0, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v12, v12, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, vcc_lo, v17, v20, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v26, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v20, v20, v17
	v_div_scale_f32 v34, null, v23, v23, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v24, v24, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v29, v27
	v_div_scale_f32 v47, null, v25, v25, v4
	v_rcp_f32_e32 v48, v30
	v_div_scale_f32 v43, null, v21, v21, v6
	v_rcp_f32_e32 v50, v34
	v_rcp_f32_e32 v57, v47
	v_div_scale_f32 v36, s2, v7, v23, v7
	v_fma_f32 v55, -v27, v29, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v52, v43
	v_div_scale_f32 v44, s4, v6, v21, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v55, v29
	v_div_scale_f32 v32, null, v24, v24, v8
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v30, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v65, v28, v29
	v_rcp_f32_e32 v49, v32
	v_fma_f32 v60, -v34, v50, 1.0
	v_div_scale_f32 v41, null, v22, v22, v5
	v_fma_f32 v64, -v47, v57, 1.0
	v_fmac_f32_e32 v48, v55, v48
	v_div_scale_f32 v33, s1, v8, v24, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v51, v41
	v_fma_f32 v62, -v43, v52, 1.0
	v_fma_f32 v59, -v32, v49, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v27, v65, v28
	v_fmac_f32_e32 v50, v60, v50
	v_fmac_f32_e32 v57, v64, v57
	v_fmac_f32_e32 v49, v59, v49
	v_div_scale_f32 v45, null, v26, v26, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v41, v51, 1.0
	v_mul_f32_e32 v59, v31, v48
	v_fmac_f32_e32 v65, v55, v29
	v_rcp_f32_e32 v56, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v52, v62, v52 :: v_dual_fmac_f32 v51, v61, v51
	v_dual_mul_f32 v61, v36, v50 :: v_dual_mul_f32 v60, v33, v49
	v_div_scale_f32 v42, s3, v5, v22, v5
	v_fma_f32 v55, -v30, v59, v31
	v_fma_f32 v68, -v34, v61, v36
	v_fma_f32 v27, -v27, v65, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v45, v56, 1.0
	v_dual_mul_f32 v62, v42, v51 :: v_dual_fmac_f32 v59, v55, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v61, v68, v50
	v_div_fmas_f32 v27, v27, v29, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v56, v63, v56
	v_mul_f32_e32 v63, v44, v52
	v_fma_f32 v67, -v32, v60, v33
	v_fma_f32 v28, -v30, v59, v31
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v46, s5, v9, v26, v9
	v_fma_f32 v70, -v43, v63, v44
	v_fmac_f32_e32 v60, v67, v49
	v_fma_f32 v30, -v34, v61, v36
	v_div_fixup_f32 v17, v27, v20, v17
	v_div_fmas_f32 v20, v28, v48, v59
	v_fmac_f32_e32 v63, v70, v52
	v_fma_f32 v29, -v32, v60, v33
	s_mov_b32 vcc_lo, s1
	v_dual_mul_f32 v64, v46, v56 :: v_dual_mul_f32 v11, v11, v17
	v_fma_f32 v69, -v41, v62, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v27, v29, v49, v60
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v58, s6, v4, v25, v4
	v_div_fmas_f32 v28, v30, v50, v61
	v_div_fixup_f32 v8, v27, v24, v8
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v11.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v62, v69, v51
	v_fma_f32 v71, -v45, v64, v46
	v_div_fixup_f32 v7, v28, v23, v7
	v_mul_f32_e32 v66, v58, v57
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v16, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v12, v20, v12, v18
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v13, v7
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v13, 1, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v41, v62, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v8.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v64, v71, v56
	v_fma_f32 v32, -v43, v63, v44
	v_fma_f32 v72, -v47, v66, v58
	v_div_fmas_f32 v17, v31, v51, v62
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v33, -v45, v64, v46
	v_div_fmas_f32 v18, v32, v52, v63
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v17, v22, v5
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v12, v33, v56, v64
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v7.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v66, v72, v57
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v15, v5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v10.h
	v_cmp_o_f32_e64 s0, v11, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v12, v26, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v11, v11, v13, 0x7fff
	v_and_b32_e32 v13, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v47, v66, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v12, 1, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s6
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v9
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v9, 1, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v16, v34, v57, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_mov_b16_e32 v2.l, v5.h
	v_add3_u32 v10, v10, v12, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v18, v21, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v8, v8
	v_cmp_o_f32_e64 s2, v7, v7
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s0
	v_add3_u32 v8, v8, v9, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v12, 1, v2
	v_mov_b16_e32 v2.l, v3.h
	v_add3_u32 v0, v7, v13, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v4, v16, v25, v4
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v6, v14, v6 :: v_dual_cndmask_b32 v7, 0x1054, v53
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v9, 0x3276, v54, vcc_lo
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s1
	v_cndmask_b16 v8.l, 0x7fff, v0.h, s2
	v_and_b32_e32 v2, 1, v2
	v_cmp_o_f32_e64 s0, v3, v3
	v_cmp_o_f32_e64 s3, v5, v5
	v_add3_u32 v5, v5, v12, 0x7fff
	v_mov_b16_e32 v39.l, v6.h
	v_add3_u32 v2, v3, v2, 0x7fff
	v_lshl_or_b32 v3, v7, 8, v7
	v_lshl_or_b32 v7, v9, 8, v9
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v19, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s3
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s0
	v_and_b32_e32 v2, 0x540054, v3
	v_and_b32_e32 v3, 0x760076, v7
	v_mov_b16_e32 v40.l, v4.h
	v_cmp_o_f32_e64 s3, v4, v4
	v_cmp_o_f32_e64 s4, v6, v6
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v3, v3, 4, v3
	v_and_b32_e32 v11, 1, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v2, 0x5040504, v2
	v_and_b32_e32 v3, 0x7060706, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v4, v11, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v4.h, s3
	v_and_b32_e32 v14, 1, v39
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v4, v1, s15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s15, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v7, v0, v8, vcc_lo
	v_add3_u32 v6, v6, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s4
	v_dual_cndmask_b32 v6, v5, v10 :: v_dual_cndmask_b32 v1, v10, v5
	v_cndmask_b32_e32 v5, v8, v0, vcc_lo
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_and_or_b32 v8, 0x78, v35, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v1, v1, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v4, v8, v4, 1
	v_perm_b32 v0, v1, v6, v2
	v_perm_b32 v1, v1, v6, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v2, v5, v7, v2
	v_perm_b32 v3, v5, v7, v3
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 41
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 218
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18304
; TotalNumSgprs: 43
; NumVgprs: 218
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 43
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     218
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
