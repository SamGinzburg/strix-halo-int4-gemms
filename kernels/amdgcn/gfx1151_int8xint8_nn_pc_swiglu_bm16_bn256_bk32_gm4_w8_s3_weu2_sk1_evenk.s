	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v41, 15, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v42, 1, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v115, 4, v0
	v_lshlrev_b32_e32 v112, 5, v0
	v_and_b32_e32 v113, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v2, 1, v41
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v36, 0x17e, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, 0, v115
	s_mov_b32 s29, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s18, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s23
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s22
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, s10, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s11
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_lshl_b32 s30, s19, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v1, s30, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s4, s9
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s34, s3, 5
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s18, s4, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s10, 31
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v109, v41, 4, v1
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s2, 4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 31
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s28, s10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v110, v3, v2, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s30, s34
	v_lshl_add_u32 v111, s19, 5, v109
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s18, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s4, v109
	v_add_nc_u32_e32 v3, s4, v111
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s6, s19, 6
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s34, v110
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s4, s6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s34, 32
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s19, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v12, s4, v109
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v11, s19, v3
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v4, s34, v110
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v13, s4, v111
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 358 39 is_stmt 0              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v21, s19, v12
	v_add3_u32 v19, s4, s19, v111
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v15, 0x80000000, v11, s3
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_cndmask_b32_e64 v20, 0x80000000, v4, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v7, 0x80000000, v3, s3
	v_cndmask_b32_e64 v22, 0x80000000, v12, s2
	v_cndmask_b32_e64 v23, 0x80000000, v13, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[11:14], v2, s[24:27], 0 offen
	buffer_load_b128 v[15:18], v15, s[24:27], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v21, s2
	v_cndmask_b32_e64 v31, 0x80000000, v19, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_u16 v1, v1, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[3:6], v5, s[24:27], 0 offen
	buffer_load_b128 v[7:10], v7, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_u16 v35, v20, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[19:22], v22, s[24:27], 0 offen
	buffer_load_b128 v[23:26], v23, s[24:27], 0 offen
	buffer_load_b128 v[27:30], v2, s[24:27], 0 offen
	buffer_load_b128 v[31:34], v31, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_bfe_i32 v2, v0, 6, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x5f
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 0x90, v2
	v_xor_b32_e32 v114, v2, v36
	v_lshrrev_b32_e32 v2, 1, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v36, 0, v114
	s_waitcnt vmcnt(7)
	ds_store_b16 v36, v1 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	ds_store_b128 v37, v[3:6]
	s_waitcnt vmcnt(5)
	ds_store_b128 v37, v[7:10] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v37, v[11:14] offset:16384
	ds_store_b128 v37, v[15:18] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b16 v36, v35 offset:33280
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v37, v[19:22] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v37, v[23:26] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v37, v[27:30] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v37, v[31:34] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v108, 5, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_or_b32 v43, 0x70, v2, v41
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 4, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v107, 0x160, v108
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v44, 0x100, v43
	v_or_b32_e32 v46, 0x200, v43
	v_or_b32_e32 v48, 0x300, v43
	v_or_b32_e32 v50, 0x400, v43
	v_or_b32_e32 v52, 0x500, v43
	v_or_b32_e32 v54, 0x600, v43
	v_or_b32_e32 v56, 0x700, v43
	v_or_b32_e32 v58, 0x800, v43
	v_or_b32_e32 v60, 0x900, v43
	v_or_b32_e32 v62, 0xa00, v43
	v_or_b32_e32 v64, 0xb00, v43
	v_or_b32_e32 v66, 0xc00, v43
	v_or_b32_e32 v68, 0xd00, v43
	v_or_b32_e32 v70, 0xe00, v43
	v_or_b32_e32 v71, 0xf00, v43
	v_or_b32_e32 v45, 0x1000, v43
	v_or_b32_e32 v47, 0x1100, v43
	v_or_b32_e32 v49, 0x1200, v43
	v_or_b32_e32 v51, 0x1300, v43
	v_or_b32_e32 v53, 0x1400, v43
	v_or_b32_e32 v55, 0x1500, v43
	v_or_b32_e32 v57, 0x1600, v43
	v_or_b32_e32 v59, 0x1700, v43
	v_or_b32_e32 v61, 0x1800, v43
	v_or_b32_e32 v63, 0x1900, v43
	v_or_b32_e32 v65, 0x1a00, v43
	v_or_b32_e32 v67, 0x1b00, v43
	v_or_b32_e32 v69, 0x1c00, v43
	v_or_b32_e32 v72, 0x1d00, v43
	v_or_b32_e32 v73, 0x1e00, v43
	v_or_b32_e32 v74, 0x1f00, v43
	v_or_b32_e32 v75, 0x80, v43
	v_or_b32_e32 v76, 0x180, v43
	v_or_b32_e32 v77, 0x280, v43
	v_or_b32_e32 v78, 0x380, v43
	v_or_b32_e32 v79, 0x480, v43
	v_or_b32_e32 v80, 0x580, v43
	v_or_b32_e32 v81, 0x680, v43
	v_or_b32_e32 v82, 0x780, v43
	v_or_b32_e32 v83, 0x880, v43
	v_or_b32_e32 v84, 0x980, v43
	v_or_b32_e32 v85, 0xa80, v43
	v_or_b32_e32 v86, 0xb80, v43
	v_or_b32_e32 v87, 0xc80, v43
	v_or_b32_e32 v88, 0xd80, v43
	v_or_b32_e32 v89, 0xe80, v43
	v_or_b32_e32 v90, 0xf80, v43
	v_or_b32_e32 v91, 0x1080, v43
	v_or_b32_e32 v92, 0x1180, v43
	v_or_b32_e32 v93, 0x1280, v43
	v_or_b32_e32 v94, 0x1380, v43
	v_or_b32_e32 v95, 0x1480, v43
	v_or_b32_e32 v96, 0x1580, v43
	v_or_b32_e32 v97, 0x1680, v43
	v_or_b32_e32 v98, 0x1780, v43
	v_or_b32_e32 v99, 0x1880, v43
	v_or_b32_e32 v100, 0x1980, v43
	v_or_b32_e32 v101, 0x1a80, v43
	v_or_b32_e32 v102, 0x1b80, v43
	v_or_b32_e32 v103, 0x1c80, v43
	v_or_b32_e32 v104, 0x1d80, v43
	v_or_b32_e32 v105, 0x1e80, v43
	v_or_b32_e32 v106, 0x1f80, v43
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr107
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr60
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr71
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr69
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
.LBB0_3:                                ; %Flow152
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v107, 0x160, v112
	v_bfe_i32 v1, v0, 2, 1
	v_and_or_b32 v43, 0x70, v2, v41
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v12, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_or_b32 v108, 0x90, v1, v107
	v_or_b32_e32 v44, 0x100, v43
	v_or_b32_e32 v46, 0x200, v43
	v_or_b32_e32 v48, 0x300, v43
	v_or_b32_e32 v50, 0x400, v43
	v_xor_b32_e32 v116, 16, v108
	v_or_b32_e32 v52, 0x500, v43
	v_or_b32_e32 v54, 0x600, v43
	v_or_b32_e32 v56, 0x700, v43
	v_or_b32_e32 v58, 0x800, v43
	v_or_b32_e32 v60, 0x900, v43
	v_or_b32_e32 v62, 0xa00, v43
	v_or_b32_e32 v64, 0xb00, v43
	v_or_b32_e32 v66, 0xc00, v43
	v_or_b32_e32 v68, 0xd00, v43
	v_or_b32_e32 v70, 0xe00, v43
	v_or_b32_e32 v71, 0xf00, v43
	v_or_b32_e32 v45, 0x1000, v43
	v_or_b32_e32 v47, 0x1100, v43
	v_or_b32_e32 v49, 0x1200, v43
	v_or_b32_e32 v51, 0x1300, v43
	v_or_b32_e32 v53, 0x1400, v43
	v_or_b32_e32 v55, 0x1500, v43
	v_or_b32_e32 v57, 0x1600, v43
	v_or_b32_e32 v59, 0x1700, v43
	v_or_b32_e32 v61, 0x1800, v43
	v_or_b32_e32 v63, 0x1900, v43
	v_or_b32_e32 v65, 0x1a00, v43
	v_or_b32_e32 v67, 0x1b00, v43
	v_or_b32_e32 v69, 0x1c00, v43
	v_or_b32_e32 v72, 0x1d00, v43
	v_or_b32_e32 v73, 0x1e00, v43
	v_or_b32_e32 v74, 0x1f00, v43
	v_or_b32_e32 v75, 0x80, v43
	v_or_b32_e32 v76, 0x180, v43
	v_or_b32_e32 v77, 0x280, v43
	v_or_b32_e32 v78, 0x380, v43
	v_or_b32_e32 v79, 0x480, v43
	v_or_b32_e32 v80, 0x580, v43
	v_or_b32_e32 v81, 0x680, v43
	v_or_b32_e32 v82, 0x780, v43
	v_or_b32_e32 v83, 0x880, v43
	v_or_b32_e32 v84, 0x980, v43
	v_or_b32_e32 v85, 0xa80, v43
	v_or_b32_e32 v86, 0xb80, v43
	v_or_b32_e32 v87, 0xc80, v43
	v_or_b32_e32 v88, 0xd80, v43
	v_or_b32_e32 v89, 0xe80, v43
	v_or_b32_e32 v90, 0xf80, v43
	v_or_b32_e32 v91, 0x1080, v43
	v_or_b32_e32 v92, 0x1180, v43
	v_or_b32_e32 v93, 0x1280, v43
	v_or_b32_e32 v94, 0x1380, v43
	v_or_b32_e32 v95, 0x1480, v43
	v_or_b32_e32 v96, 0x1580, v43
	v_or_b32_e32 v97, 0x1680, v43
	v_or_b32_e32 v98, 0x1780, v43
	v_or_b32_e32 v99, 0x1880, v43
	v_or_b32_e32 v100, 0x1980, v43
	v_or_b32_e32 v101, 0x1a80, v43
	v_or_b32_e32 v102, 0x1b80, v43
	v_or_b32_e32 v103, 0x1c80, v43
	v_or_b32_e32 v104, 0x1d80, v43
	v_or_b32_e32 v105, 0x1e80, v43
	v_or_b32_e32 v106, 0x1f80, v43
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v33, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s36, s5, 5
	s_add_i32 s34, s34, 32
	s_mov_b32 s38, 1
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s35, 0, 0x8200
	s_add_i32 s33, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s31, 0, 0x6000
	s_add_i32 s36, s36, -3
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_mov_b32 s29, s4
	s_mov_b32 s37, s4
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s39, s0
	s_mov_b32 s0, s35
	s_mov_b32 s35, s29
	s_mov_b32 s29, s33
	s_mov_b32 s33, s1
	s_mov_b32 s1, s31
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s31, s37, 5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v118, s39, v108
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s31, s34, s31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v119, s39, v116
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v117, s31, v110
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v166, s35, v43
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v170, s33, v43
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s33, s31, s30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_u16 v117, v117, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[150:153], v118
	ds_load_b128 v[154:157], v119
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v118, v166 offset:3328
	ds_load_u8 v119, v166 offset:3072
	ds_load_u8 v120, v166 offset:3840
	ds_load_u8 v121, v166 offset:3584
	ds_load_u8 v122, v166 offset:2304
	ds_load_u8 v123, v166 offset:2048
	ds_load_u8 v124, v166 offset:2816
	ds_load_u8 v125, v166 offset:2560
	ds_load_u8 v126, v166 offset:1280
	ds_load_u8 v127, v166 offset:1024
	ds_load_u8 v130, v166 offset:1792
	ds_load_u8 v131, v166 offset:1536
	ds_load_u8 v132, v166 offset:256
	ds_load_u8 v133, v166
	ds_load_u8 v134, v166 offset:768
	ds_load_u8 v135, v166 offset:512
	ds_load_u8 v164, v166 offset:7424
	ds_load_u8 v165, v166 offset:7168
	ds_load_u8 v167, v166 offset:7936
	ds_load_u8 v168, v166 offset:7680
	ds_load_u8 v169, v166 offset:6400
	ds_load_u8 v171, v166 offset:6144
	ds_load_u8 v172, v166 offset:6912
	ds_load_u8 v136, v166 offset:3456
	ds_load_u8 v137, v166 offset:3200
	ds_load_u8 v138, v166 offset:3968
	ds_load_u8 v139, v166 offset:3712
	ds_load_u8 v140, v166 offset:2432
	ds_load_u8 v141, v166 offset:2176
	ds_load_u8 v142, v166 offset:2944
	ds_load_u8 v143, v166 offset:2688
	ds_load_u8 v144, v166 offset:1408
	ds_load_u8 v145, v166 offset:1152
	ds_load_u8 v146, v166 offset:1920
	ds_load_u8 v147, v166 offset:1664
	ds_load_u8 v148, v166 offset:384
	ds_load_u8 v149, v166 offset:128
	ds_load_u8 v158, v166 offset:896
	ds_load_u8 v159, v166 offset:640
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v160, v170 offset:3328
	ds_load_u8 v161, v170 offset:3072
	ds_load_u8 v173, v170 offset:3840
	ds_load_u8 v174, v170 offset:3584
	ds_load_u8 v175, v170 offset:2304
	ds_load_u8 v176, v170 offset:2048
	ds_load_u8 v177, v170 offset:2816
	ds_load_u8 v178, v170 offset:2560
	ds_load_u8 v179, v170 offset:1280
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v123, v125, v124, 0xc0c0004
	v_perm_b32 v118, v119, v118, 0xc0c0004
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v124, v131, v130, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v119, v170 offset:1024
	ds_load_u8 v125, v170 offset:768
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v128, v123, 16, v122
	v_perm_b32 v122, v127, v126, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v121, v170 offset:1792
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v129, v120, 16, v118
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v118, v170 offset:1536
	ds_load_u8 v120, v170 offset:256
	ds_load_u8 v123, v170
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v127, v124, 16, v122
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v122, v170 offset:512
	ds_load_u8 v124, v170 offset:3456
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v126, v133, v132, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v130, v170 offset:3200
	ds_load_u8 v132, v170 offset:3968
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v131, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v133, v137, v136, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v134, v170 offset:3712
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v135, v139, v138, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v136, v170 offset:2432
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v138, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v139, v143, v142, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v140, v170 offset:2944
	ds_load_u8 v142, v170 offset:2688
	ds_load_u8 v137, v170 offset:2176
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v141, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v143, v147, v146, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v144, v170 offset:1408
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v145, v149, v148, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v146, v170 offset:1152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v147, v159, v158, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v148, v170 offset:1920
	ds_load_u8 v158, v170 offset:1664
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v149, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v159, v174, v173, 0xc0c0004
	ds_load_u8 v160, v170 offset:384
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v161, v176, v175, 0xc0c0004
	ds_load_u8 v175, v170 offset:896
	ds_load_u8 v176, v170 offset:640
	ds_load_u8 v173, v170 offset:128
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v174, v178, v177, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v119, v119, v179, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v118, v118, v121, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v120, v123, v120, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v121, v122, v125, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v122, v130, v124, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v123, v134, v132, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v124, v137, v136, 0xc0c0004
	v_perm_b32 v125, v142, v140, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v130, v146, v144, 0xc0c0004
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s31, s33, s18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v132, v158, v148, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v146, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v173, v160, 0xc0c0004
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v162, s31, v109
	v_add_nc_u32_e32 v163, s31, v111
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s31, s31, s19
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v126, v131, 16, v126
	v_lshl_or_b32 v137, v135, 16, v133
	v_lshl_or_b32 v136, v139, 16, v138
	v_lshl_or_b32 v135, v143, 16, v141
	v_lshl_or_b32 v134, v147, 16, v145
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v145, v159, 16, v149
	v_lshl_or_b32 v144, v174, 16, v161
	v_lshl_or_b32 v143, v118, 16, v119
	v_lshl_or_b32 v142, v121, 16, v120
	v_lshl_or_b32 v161, v123, 16, v122
	v_lshl_or_b32 v160, v125, 16, v124
	v_lshl_or_b32 v159, v132, 16, v130
	v_lshl_or_b32 v158, v146, 16, v140
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v173, s31, v109
	v_add_nc_u32_e32 v175, s31, v111
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[118:125], v[126:129], v[150:153], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[134:137], v[150:153], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[134:141], v[142:145], v[150:153], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[158:161], v[150:153], v[1:8] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v162, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v163, s[24:27], 0 offen
	buffer_load_b128 v[150:153], v173, s[24:27], 0 offen
	buffer_load_b128 v[158:161], v175, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v178, v166 offset:5376
	ds_load_u8 v180, v166 offset:5888
	ds_load_u8 v181, v166 offset:5632
	ds_load_u8 v179, v166 offset:5120
	ds_load_u8 v182, v166 offset:4352
	ds_load_u8 v184, v166 offset:4864
	ds_load_u8 v185, v166 offset:4608
	ds_load_u8 v183, v166 offset:4096
	ds_load_u8 v177, v166 offset:6656
	ds_load_u8 v174, v166 offset:7040
	ds_load_u8 v176, v166 offset:6784
	v_perm_b32 v162, v165, v164, 0xc0c0004
	v_perm_b32 v163, v168, v167, 0xc0c0004
	v_perm_b32 v164, v171, v169, 0xc0c0004
	ds_load_u8 v169, v166 offset:8064
	ds_load_u8 v171, v166 offset:7808
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s38, s38, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v165, v163, 16, v162
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s38, 2
	s_cselect_b32 s38, s38, 0
	s_add_i32 s39, s37, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v163, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v162, v179, v178, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s31, s38, 9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s33, s38, 13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v175, v185, v184, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s31, s31, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v167, v177, v172, 0xc0c0004
	v_lshl_or_b32 v163, v163, 16, v162
	v_perm_b32 v162, v183, v182, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s33, s33, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s35, s31, 0x8000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v164, v167, 16, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v175, 16, v162
	v_wmma_i32_16x16x16_iu8 v[118:125], v[162:165], v[154:157], v[118:125] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v171, v169, 0xc0c0004
	v_perm_b32 v171, v176, v174, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v25, v25, v118
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v167, v166 offset:7552
	ds_load_u8 v168, v166 offset:7296
	ds_load_u8 v172, v166 offset:6528
	ds_load_u8 v173, v166 offset:6272
	ds_load_u8 v175, v166 offset:5504
	ds_load_u8 v177, v166 offset:5248
	ds_load_u8 v162, v166 offset:6016
	ds_load_u8 v163, v166 offset:5760
	ds_load_u8 v178, v166 offset:4480
	ds_load_u8 v179, v166 offset:4224
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v37, v37, v120
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v174, v170 offset:6400
	ds_load_u8 v176, v170 offset:6656
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v26, v26, v119
	v_add_f32_e32 v38, v38, v121
	v_dual_add_f32 v16, v16, v123 :: v_dual_add_f32 v15, v15, v122
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v30, v30, v125 :: v_dual_add_f32 v29, v29, v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v164, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v169, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v172, v177, v175, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v167, v166 offset:4992
	ds_load_u8 v166, v166 offset:4736
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v168, v170 offset:7424
	ds_load_u8 v173, v170 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v165, v165, 16, v164
	v_lshl_or_b32 v164, v171, 16, v169
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v169, v170 offset:7168
	ds_load_u8 v171, v170 offset:7936
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v163, v162, 16, v172
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v162, v170 offset:6144
	ds_load_u8 v172, v170 offset:6912
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v175, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v166, v166, v167, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v167, v170 offset:5376
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v169, v173, v171, 0xc0c0004
	ds_load_u8 v171, v170 offset:5888
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v173, v162, v174, 0xc0c0004
	ds_load_u8 v174, v170 offset:5632
	ds_load_u8 v177, v170 offset:5120
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v172, v176, v172, 0xc0c0004
	ds_load_u8 v176, v170 offset:4352
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v162, v166, 16, v175
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v169, v169, 16, v168
	v_lshl_or_b32 v168, v172, 16, v173
	ds_load_u8 v166, v170 offset:4096
	ds_load_u8 v172, v170 offset:4864
	ds_load_u8 v173, v170 offset:4608
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[126:133], v[162:165], v[154:157], v[126:133] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v171, v174, v171, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v167, v177, v167, 0xc0c0004
	ds_load_u8 v174, v170 offset:7552
	ds_load_u8 v177, v170 offset:5504
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v167, v171, 16, v167
	ds_load_u8 v171, v170 offset:7296
	ds_load_u8 v175, v170 offset:8064
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v166, v166, v176, 0xc0c0004
	ds_load_u8 v176, v170 offset:7808
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v170 offset:6528
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v133, v133
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v40, v40, v129 :: v_dual_add_f32 v39, v39, v128
	v_add_f32_e32 v24, v24, v131
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v166, v172, 16, v166
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v23, v23, v130 :: v_dual_add_f32 v34, v34, v133
	v_dual_add_f32 v32, v32, v127 :: v_dual_add_f32 v31, v31, v126
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[134:141], v[166:169], v[154:157], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v136, v136
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	ds_load_u8 v176, v170 offset:7040
	v_perm_b32 v171, v171, v174, 0xc0c0004
	ds_load_u8 v174, v170 offset:6272
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v33, v33, v132 :: v_dual_add_f32 v10, v10, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v9, v9, v134 :: v_dual_add_f32 v28, v28, v137
	v_dual_add_f32 v27, v27, v136 :: v_dual_add_f32 v12, v12, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v11, v11, v138 :: v_dual_add_f32 v20, v20, v141
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v174, v173, 0xc0c0004
	ds_load_u8 v173, v170 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v173, v176, 0xc0c0004
	v_lshl_or_b32 v173, v175, 16, v171
	ds_load_u8 v175, v170 offset:5760
	v_lshl_or_b32 v172, v176, 16, v174
	ds_load_u8 v171, v170 offset:5248
	ds_load_u8 v174, v170 offset:6016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v170 offset:4480
	v_perm_b32 v171, v171, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v174, 16, v171
	ds_load_u8 v174, v170 offset:4224
	ds_load_u8 v176, v170 offset:4992
	ds_load_u8 v170, v170 offset:4736
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v174, v174, v175, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v175, s31, v114
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v170, v170, v176, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v176, s33, v115
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s31, s33, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s37, s36
	s_mov_b32 s37, s39
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v170, v170, 16, v174
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(4)
	ds_store_b16 v175, v117 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v176, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v176, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v176, v[150:153] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v176, v[158:161] offset:20480
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[142:149], v[170:173], v[154:157], v[142:149] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v19, v19, v140 :: v_dual_add_f32 v22, v22, v143
	v_dual_add_f32 v21, v21, v142 :: v_dual_add_f32 v36, v36, v145
	v_dual_add_f32 v35, v35, v144 :: v_dual_add_f32 v14, v14, v147
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v13, v13, v146 :: v_dual_add_f32 v18, v18, v149
	v_add_f32_e32 v17, v17, v148
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v108, v112 :: v_dual_mov_b32 v1, v113
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v9, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s35, 0, 0x8200
	s_add_i32 s33, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	v_mov_b32_e32 v10, v9
	s_add_i32 s31, 0, 0x6000
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v26, v10 :: v_dual_mov_b32 v25, v9
	v_dual_mov_b32 v12, v10 :: v_dual_mov_b32 v11, v9
	v_dual_mov_b32 v16, v10 :: v_dual_mov_b32 v15, v9
	v_dual_mov_b32 v28, v10 :: v_dual_mov_b32 v27, v9
	v_dual_mov_b32 v38, v10 :: v_dual_mov_b32 v37, v9
	v_dual_mov_b32 v20, v10 :: v_dual_mov_b32 v19, v9
	v_dual_mov_b32 v30, v10 :: v_dual_mov_b32 v29, v9
	v_dual_mov_b32 v22, v10 :: v_dual_mov_b32 v21, v9
	v_dual_mov_b32 v32, v10 :: v_dual_mov_b32 v31, v9
	v_dual_mov_b32 v14, v10 :: v_dual_mov_b32 v13, v9
	v_dual_mov_b32 v24, v10 :: v_dual_mov_b32 v23, v9
	v_dual_mov_b32 v36, v10 :: v_dual_mov_b32 v35, v9
	v_dual_mov_b32 v40, v10 :: v_dual_mov_b32 v39, v9
	v_dual_mov_b32 v18, v10 :: v_dual_mov_b32 v17, v9
	v_dual_mov_b32 v34, v10 :: v_dual_mov_b32 v33, v9
.LBB0_8:                                ; %Flow153
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v111, 0, 1, s3
	v_and_b32_e32 v109, 0xf0, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_or_b32_e32 v107, v1, v107
	v_xor_b32_e32 v110, 16, v107
	v_add_nc_u32_e32 v1, s0, v107
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v2, s0, v110
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v111
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[5:8], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v115, s29, v68
	v_add_nc_u32_e32 v116, s29, v66
	v_add_nc_u32_e32 v113, s29, v71
	v_add_nc_u32_e32 v119, s29, v60
	v_add_nc_u32_e32 v114, s29, v70
	v_add_nc_u32_e32 v117, s29, v64
	v_add_nc_u32_e32 v118, s29, v62
	v_add_nc_u32_e32 v120, s29, v58
	v_add_nc_u32_e32 v121, s29, v56
	v_add_nc_u32_e32 v122, s29, v54
	v_add_nc_u32_e32 v123, s29, v52
	v_add_nc_u32_e32 v124, s29, v50
	v_add_nc_u32_e32 v125, s29, v48
	v_add_nc_u32_e32 v126, s29, v46
	v_add_nc_u32_e32 v127, s29, v44
	v_add_nc_u32_e32 v128, s29, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v115, v115
	ds_load_u8 v116, v116
	ds_load_u8 v113, v113
	ds_load_u8 v119, v119
	ds_load_u8 v120, v120
	ds_load_u8 v117, v117
	ds_load_u8 v118, v118
	ds_load_u8 v114, v114
	ds_load_u8 v123, v123
	ds_load_u8 v124, v124
	ds_load_u8 v121, v121
	ds_load_u8 v127, v127
	ds_load_u8 v163, v128
	ds_load_u8 v125, v125
	ds_load_u8 v126, v126
	ds_load_u8 v122, v122
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v128, s29, v72
	v_add_nc_u32_e32 v129, s29, v69
	v_add_nc_u32_e32 v111, s29, v74
	v_add_nc_u32_e32 v165, s29, v63
	v_add_nc_u32_e32 v164, s29, v65
	v_add_nc_u32_e32 v166, s29, v61
	v_add_nc_u32_e32 v167, s29, v59
	v_add_nc_u32_e32 v168, s29, v57
	v_add_nc_u32_e32 v169, s29, v55
	v_add_nc_u32_e32 v170, s29, v53
	v_add_nc_u32_e32 v171, s29, v51
	v_add_nc_u32_e32 v172, s29, v49
	v_add_nc_u32_e32 v173, s29, v47
	v_add_nc_u32_e32 v112, s29, v73
	v_add_nc_u32_e32 v130, s29, v67
	v_add_nc_u32_e32 v174, s29, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	v_perm_b32 v114, v120, v119, 0xc0c0004
	v_perm_b32 v116, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v117, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v122, v121, 0xc0c0004
	ds_load_u8 v119, v128
	ds_load_u8 v120, v129
	ds_load_u8 v121, v111
	ds_load_u8 v122, v165
	ds_load_u8 v123, v166
	ds_load_u8 v124, v130
	ds_load_u8 v164, v164
	ds_load_u8 v165, v112
	ds_load_u8 v166, v169
	ds_load_u8 v169, v170
	ds_load_u8 v167, v167
	ds_load_u8 v170, v173
	ds_load_u8 v173, v174
	ds_load_u8 v171, v171
	ds_load_u8 v172, v172
	ds_load_u8 v168, v168
	v_perm_b32 v111, v163, v127, 0xc0c0004
	v_perm_b32 v112, v126, v125, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v131, s29, v106
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v130, v113, 16, v115
	v_lshl_or_b32 v129, v116, 16, v114
	v_lshl_or_b32 v128, v118, 16, v117
	v_lshl_or_b32 v127, v112, 16, v111
	v_mov_b32_e32 v118, s11
	v_dual_mov_b32 v117, s10 :: v_dual_add_nc_u32 v132, s29, v105
	v_dual_mov_b32 v116, s9 :: v_dual_add_nc_u32 v133, s29, v104
	v_dual_mov_b32 v115, s8 :: v_dual_add_nc_u32 v134, s29, v103
	v_dual_mov_b32 v114, s7 :: v_dual_add_nc_u32 v135, s29, v102
	v_dual_mov_b32 v113, s6 :: v_dual_add_nc_u32 v136, s29, v101
	v_dual_mov_b32 v112, s5 :: v_dual_add_nc_u32 v137, s29, v100
	v_dual_mov_b32 v111, s4 :: v_dual_add_nc_u32 v138, s29, v99
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v163, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v165, v165, v121, 0xc0c0004
	v_perm_b32 v174, v123, v122, 0xc0c0004
	v_perm_b32 v164, v164, v124, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v166, v169, v166, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[119:126], v[127:130], v[5:8], v[111:118] neg_lo:[1,1,0]
	v_lshl_or_b32 v130, v165, 16, v163
	v_perm_b32 v127, v173, v170, 0xc0c0004
	v_perm_b32 v163, v172, v171, 0xc0c0004
	v_lshl_or_b32 v129, v164, 16, v174
	v_lshl_or_b32 v128, v167, 16, v166
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v149, s29, v88
	v_add_nc_u32_e32 v150, s29, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v127, v163, 16, v127
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v147, s29, v90
	v_add_nc_u32_e32 v153, s29, v84
	v_add_nc_u32_e32 v143, s29, v94
	v_add_nc_u32_e32 v144, s29, v93
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[119:126], v[127:130], v[1:4], v[119:126] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v148, s29, v89
	v_add_nc_u32_e32 v151, s29, v86
	v_add_nc_u32_e32 v152, s29, v85
	v_add_nc_u32_e32 v154, s29, v83
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v141, s29, v96
	v_add_nc_u32_e32 v142, s29, v95
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v38, v38, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v122, v124
	v_cvt_f32_i32_e32 v124, v126
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v37, v37, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v121, v125
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s29, v98
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v15, v15, v123 :: v_dual_add_nc_u32 v140, s29, v97
	v_dual_add_f32 v16, v16, v122 :: v_dual_add_nc_u32 v145, s29, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v29, v29, v121 :: v_dual_add_nc_u32 v146, s29, v91
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v155, s29, v82
	v_add_nc_u32_e32 v156, s29, v81
	v_add_nc_u32_e32 v157, s29, v80
	v_add_nc_u32_e32 v158, s29, v79
	v_add_nc_u32_e32 v159, s29, v78
	v_add_nc_u32_e32 v160, s29, v77
	v_add_nc_u32_e32 v161, s29, v76
	v_add_nc_u32_e32 v162, s29, v75
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v30, v30, v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v149, v149
	ds_load_u8 v150, v150
	ds_load_u8 v147, v147
	ds_load_u8 v153, v153
	ds_load_u8 v154, v154
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	ds_load_u8 v148, v148
	ds_load_u8 v157, v157
	ds_load_u8 v158, v158
	ds_load_u8 v155, v155
	ds_load_u8 v161, v161
	ds_load_u8 v162, v162
	ds_load_u8 v159, v159
	ds_load_u8 v160, v160
	ds_load_u8 v156, v156
	ds_load_u8 v133, v133
	ds_load_u8 v134, v134
	ds_load_u8 v131, v131
	ds_load_u8 v137, v137
	ds_load_u8 v138, v138
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	ds_load_u8 v132, v132
	ds_load_u8 v141, v141
	ds_load_u8 v142, v142
	ds_load_u8 v139, v139
	ds_load_u8 v145, v145
	ds_load_u8 v146, v146
	ds_load_u8 v143, v143
	ds_load_u8 v144, v144
	ds_load_u8 v140, v140
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	v_perm_b32 v148, v154, v153, 0xc0c0004
	v_perm_b32 v150, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v151, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v152, v156, v155, 0xc0c0004
	v_perm_b32 v153, v162, v161, 0xc0c0004
	v_perm_b32 v154, v160, v159, 0xc0c0004
	v_lshl_or_b32 v130, v147, 16, v149
	v_lshl_or_b32 v129, v150, 16, v148
	v_lshl_or_b32 v128, v152, 16, v151
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_lshl_or_b32 v127, v154, 16, v153
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_perm_b32 v132, v138, v137, 0xc0c0004
	v_perm_b32 v134, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v135, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v137, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v138, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v140, v139, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[111:118], v[127:130], v[5:8], v[111:118] neg_lo:[1,1,0]
	v_lshl_or_b32 v130, v131, 16, v133
	v_lshl_or_b32 v129, v134, 16, v132
	v_lshl_or_b32 v127, v138, 16, v137
	v_lshl_or_b32 v128, v136, 16, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[127:130], v[1:4], v[111:118] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v112, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v114, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v113, v113
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v32, v32, v112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v112, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v31, v31, v111 :: v_dual_add_f32 v40, v40, v114
	v_add_f32_e32 v39, v39, v113
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v111, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v24, v24, v112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v112, v118
	v_cvt_f32_i32_e32 v113, v117
	v_cvt_f32_i32_e32 v114, v120
	v_cvt_f32_i32_e32 v115, v119
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v23, v23, v111 :: v_dual_add_f32 v34, v34, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v33, v33, v113 :: v_dual_add_f32 v26, v26, v114
	v_add_f32_e32 v25, v25, v115
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v116, s1, v68
	v_add_nc_u32_e32 v117, s1, v66
	v_add_nc_u32_e32 v114, s1, v71
	v_add_nc_u32_e32 v120, s1, v60
	v_add_nc_u32_e32 v115, s1, v70
	v_add_nc_u32_e32 v118, s1, v64
	v_add_nc_u32_e32 v119, s1, v62
	v_add_nc_u32_e32 v121, s1, v58
	v_add_nc_u32_e32 v124, s1, v52
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v116, v116
	ds_load_u8 v117, v117
	ds_load_u8 v114, v114
	ds_load_u8 v120, v120
	ds_load_u8 v121, v121
	ds_load_u8 v118, v118
	ds_load_u8 v119, v119
	ds_load_u8 v115, v115
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v125, s1, v50
	v_add_nc_u32_e32 v122, s1, v56
	v_add_nc_u32_e32 v128, s1, v44
	v_add_nc_u32_e32 v123, s1, v54
	v_add_nc_u32_e32 v126, s1, v48
	v_add_nc_u32_e32 v127, s1, v46
	v_add_nc_u32_e32 v129, s1, v43
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v124, v124
	ds_load_u8 v125, v125
	ds_load_u8 v122, v122
	ds_load_u8 v163, v128
	ds_load_u8 v164, v129
	ds_load_u8 v126, v126
	ds_load_u8 v127, v127
	ds_load_u8 v123, v123
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v113, s1, v72
	v_add_nc_u32_e32 v128, s1, v69
	v_add_nc_u32_e32 v111, s1, v74
	v_add_nc_u32_e32 v166, s1, v63
	v_add_nc_u32_e32 v165, s1, v65
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v167, s1, v61
	v_add_nc_u32_e32 v168, s1, v59
	v_add_nc_u32_e32 v169, s1, v57
	v_add_nc_u32_e32 v170, s1, v55
	v_add_nc_u32_e32 v171, s1, v53
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v172, s1, v47
	v_add_nc_u32_e32 v173, s1, v45
	v_add_nc_u32_e32 v112, s1, v73
	v_add_nc_u32_e32 v129, s1, v67
	v_add_nc_u32_e32 v115, s1, v51
	v_add_nc_u32_e32 v117, s1, v49
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v130, v114, 16, v116
	v_perm_b32 v114, v121, v120, 0xc0c0004
	v_perm_b32 v116, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v118, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v123, v122, 0xc0c0004
	ds_load_u8 v120, v113
	ds_load_u8 v121, v128
	ds_load_u8 v122, v111
	ds_load_u8 v123, v166
	ds_load_u8 v124, v167
	ds_load_u8 v125, v129
	ds_load_u8 v165, v165
	ds_load_u8 v166, v112
	ds_load_u8 v167, v170
	ds_load_u8 v170, v171
	ds_load_u8 v168, v168
	ds_load_u8 v171, v172
	ds_load_u8 v172, v173
	ds_load_u8 v173, v115
	ds_load_u8 v174, v117
	ds_load_u8 v169, v169
	v_perm_b32 v111, v164, v163, 0xc0c0004
	v_perm_b32 v112, v127, v126, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v131, s1, v106
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v129, v116, 16, v114
	v_lshl_or_b32 v128, v119, 16, v118
	v_lshl_or_b32 v127, v112, 16, v111
	v_mov_b32_e32 v118, s11
	v_dual_mov_b32 v117, s10 :: v_dual_add_nc_u32 v132, s1, v105
	v_dual_mov_b32 v116, s9 :: v_dual_add_nc_u32 v133, s1, v104
	v_dual_mov_b32 v115, s8 :: v_dual_add_nc_u32 v134, s1, v103
	v_dual_mov_b32 v114, s7 :: v_dual_add_nc_u32 v135, s1, v102
	v_dual_mov_b32 v113, s6 :: v_dual_add_nc_u32 v136, s1, v101
	v_dual_mov_b32 v112, s5 :: v_dual_add_nc_u32 v137, s1, v100
	v_dual_mov_b32 v111, s4 :: v_dual_add_nc_u32 v138, s1, v99
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v163, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v164, v166, v122, 0xc0c0004
	v_perm_b32 v166, v124, v123, 0xc0c0004
	v_perm_b32 v165, v165, v125, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v167, v170, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[119:126], v[127:130], v[5:8], v[111:118] neg_lo:[1,1,0]
	v_lshl_or_b32 v130, v164, 16, v163
	v_perm_b32 v127, v172, v171, 0xc0c0004
	v_perm_b32 v163, v174, v173, 0xc0c0004
	v_lshl_or_b32 v129, v165, 16, v166
	v_lshl_or_b32 v128, v168, 16, v167
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v149, s1, v88
	v_add_nc_u32_e32 v150, s1, v87
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v127, v163, 16, v127
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v147, s1, v90
	v_add_nc_u32_e32 v153, s1, v84
	v_add_nc_u32_e32 v139, s1, v98
	v_add_nc_u32_e32 v140, s1, v97
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[119:126], v[127:130], v[1:4], v[119:126] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v142, s1, v95
	v_add_nc_u32_e32 v143, s1, v94
	v_add_nc_u32_e32 v144, s1, v93
	v_add_nc_u32_e32 v145, s1, v92
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v141, s1, v96
	v_add_nc_u32_e32 v146, s1, v91
	v_add_nc_u32_e32 v148, s1, v89
	v_add_nc_u32_e32 v151, s1, v86
	v_add_nc_u32_e32 v152, s1, v85
	v_add_nc_u32_e32 v154, s1, v83
	v_add_nc_u32_e32 v155, s1, v82
	v_add_nc_u32_e32 v156, s1, v81
	v_add_nc_u32_e32 v157, s1, v80
	v_add_nc_u32_e32 v158, s1, v79
	v_add_nc_u32_e32 v159, s1, v78
	v_add_nc_u32_e32 v160, s1, v77
	v_add_nc_u32_e32 v161, s1, v76
	v_add_nc_u32_e32 v162, s1, v75
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v28, v28, v122
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v149, v149
	ds_load_u8 v150, v150
	ds_load_u8 v147, v147
	ds_load_u8 v153, v153
	ds_load_u8 v154, v154
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	ds_load_u8 v148, v148
	ds_load_u8 v157, v157
	ds_load_u8 v158, v158
	ds_load_u8 v155, v155
	ds_load_u8 v161, v161
	ds_load_u8 v162, v162
	ds_load_u8 v159, v159
	ds_load_u8 v160, v160
	ds_load_u8 v156, v156
	ds_load_u8 v133, v133
	ds_load_u8 v134, v134
	ds_load_u8 v131, v131
	ds_load_u8 v137, v137
	ds_load_u8 v138, v138
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	ds_load_u8 v132, v132
	ds_load_u8 v141, v141
	ds_load_u8 v142, v142
	ds_load_u8 v139, v139
	ds_load_u8 v145, v145
	ds_load_u8 v146, v146
	ds_load_u8 v143, v143
	ds_load_u8 v144, v144
	ds_load_u8 v140, v140
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	v_perm_b32 v148, v154, v153, 0xc0c0004
	v_perm_b32 v150, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v151, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v152, v156, v155, 0xc0c0004
	v_perm_b32 v153, v162, v161, 0xc0c0004
	v_perm_b32 v154, v160, v159, 0xc0c0004
	v_lshl_or_b32 v130, v147, 16, v149
	v_lshl_or_b32 v129, v150, 16, v148
	v_lshl_or_b32 v128, v152, 16, v151
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_lshl_or_b32 v127, v154, 16, v153
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_perm_b32 v132, v138, v137, 0xc0c0004
	v_perm_b32 v134, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v135, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v137, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v138, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v140, v139, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[111:118], v[127:130], v[5:8], v[111:118] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v131, 16, v133
	v_lshl_or_b32 v7, v134, 16, v132
	v_lshl_or_b32 v5, v138, 16, v137
	v_lshl_or_b32 v6, v136, 16, v135
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[5:8], v[1:4], v[111:118] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v121
	v_cvt_f32_i32_e32 v2, v124
	v_cvt_f32_i32_e32 v3, v123
	v_cvt_f32_i32_e32 v4, v126
	v_cvt_f32_i32_e32 v5, v119
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v27, v27, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v125
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v12, v12, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v112
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v11, v11, v3 :: v_dual_add_f32 v20, v20, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v19, v19, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v111
	v_cvt_f32_i32_e32 v3, v114
	v_cvt_f32_i32_e32 v4, v113
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v22, v22, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v21, v21, v1 :: v_dual_add_f32 v36, v36, v3
	v_add_f32_e32 v35, v35, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v14, v14, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v118
	v_cvt_f32_i32_e32 v3, v117
	v_cvt_f32_i32_e32 v4, v120
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v13, v13, v1
	v_dual_add_f32 v9, v9, v5 :: v_dual_add_f32 v18, v18, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v17, v17, v3 :: v_dual_add_f32 v10, v10, v4
.LBB0_12:
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v1, s35, v107
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v2, s35, v110
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v110, 0, 1, s2
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v114, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v110
	v_mov_b32_e32 v110, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[5:8], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v2
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v124, 0
	v_mov_b32_e32 v121, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v120, s33, v68
	v_add_nc_u32_e32 v121, s33, v66
	v_add_nc_u32_e32 v113, s33, v71
	v_add_nc_u32_e32 v124, s33, v60
	v_add_nc_u32_e32 v119, s33, v70
	v_add_nc_u32_e32 v122, s33, v64
	v_add_nc_u32_e32 v123, s33, v62
	v_add_nc_u32_e32 v125, s33, v58
	v_add_nc_u32_e32 v128, s33, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v120, v120
	ds_load_u8 v121, v121
	ds_load_u8 v113, v113
	ds_load_u8 v124, v124
	ds_load_u8 v125, v125
	ds_load_u8 v122, v122
	ds_load_u8 v123, v123
	ds_load_u8 v119, v119
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v129, s33, v50
	v_add_nc_u32_e32 v126, s33, v56
	v_add_nc_u32_e32 v132, s33, v44
	v_add_nc_u32_e32 v127, s33, v54
	v_add_nc_u32_e32 v130, s33, v48
	v_add_nc_u32_e32 v131, s33, v46
	v_add_nc_u32_e32 v133, s33, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v128, v128
	ds_load_u8 v129, v129
	ds_load_u8 v126, v126
	ds_load_u8 v132, v132
	ds_load_u8 v133, v133
	ds_load_u8 v130, v130
	ds_load_u8 v131, v131
	ds_load_u8 v127, v127
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v112, s33, v72
	v_add_nc_u32_e32 v134, s33, v69
	v_add_nc_u32_e32 v110, s33, v74
	v_add_nc_u32_e32 v164, s33, v63
	v_add_nc_u32_e32 v162, s33, v67
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v163, s33, v65
	v_add_nc_u32_e32 v165, s33, v61
	v_add_nc_u32_e32 v166, s33, v59
	v_add_nc_u32_e32 v167, s33, v57
	v_add_nc_u32_e32 v168, s33, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v113, v119, v113, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v169, s33, v53
	v_add_nc_u32_e32 v170, s33, v47
	v_add_nc_u32_e32 v171, s33, v45
	v_add_nc_u32_e32 v111, s33, v73
	v_add_nc_u32_e32 v119, s33, v51
	v_add_nc_u32_e32 v121, s33, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v113, v113, 16, v120
	v_perm_b32 v120, v125, v124, 0xc0c0004
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v123, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v127, v126, 0xc0c0004
	ds_load_u8 v127, v112
	ds_load_u8 v128, v134
	ds_load_u8 v129, v110
	ds_load_u8 v134, v164
	ds_load_u8 v164, v165
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	ds_load_u8 v165, v111
	ds_load_u8 v168, v168
	ds_load_u8 v169, v169
	ds_load_u8 v166, v166
	ds_load_u8 v170, v170
	ds_load_u8 v171, v171
	ds_load_u8 v172, v119
	ds_load_u8 v173, v121
	ds_load_u8 v167, v167
	v_perm_b32 v110, v133, v132, 0xc0c0004
	v_perm_b32 v119, v131, v130, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v115, s33, v105
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v112, v122, 16, v120
	v_lshl_or_b32 v111, v124, 16, v123
	v_lshl_or_b32 v110, v119, 16, v110
	v_mov_b32_e32 v126, s11
	v_dual_mov_b32 v125, s10 :: v_dual_add_nc_u32 v114, s33, v106
	v_dual_mov_b32 v123, s8 :: v_dual_add_nc_u32 v116, s33, v104
	v_dual_mov_b32 v124, s9 :: v_dual_add_nc_u32 v117, s33, v103
	v_dual_mov_b32 v121, s6 :: v_dual_add_nc_u32 v118, s33, v102
	v_dual_mov_b32 v122, s7 :: v_dual_add_nc_u32 v135, s33, v101
	v_dual_mov_b32 v119, s4 :: v_dual_add_nc_u32 v136, s33, v100
	v_dual_mov_b32 v120, s5 :: v_dual_add_nc_u32 v137, s33, v99
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v148, s33, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v174, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v165, v165, v129, 0xc0c0004
	v_perm_b32 v164, v164, v134, 0xc0c0004
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v163, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v149, s33, v87
	v_add_nc_u32_e32 v146, s33, v90
	v_add_nc_u32_e32 v152, s33, v84
	v_add_nc_u32_e32 v138, s33, v98
	v_add_nc_u32_e32 v139, s33, v97
	v_add_nc_u32_e32 v140, s33, v96
	v_add_nc_u32_e32 v141, s33, v95
	v_add_nc_u32_e32 v142, s33, v94
	v_add_nc_u32_e32 v143, s33, v93
	v_add_nc_u32_e32 v144, s33, v92
	v_add_nc_u32_e32 v145, s33, v91
	v_add_nc_u32_e32 v147, s33, v89
	v_add_nc_u32_e32 v150, s33, v86
	v_add_nc_u32_e32 v151, s33, v85
	v_add_nc_u32_e32 v153, s33, v83
	v_add_nc_u32_e32 v154, s33, v82
	v_add_nc_u32_e32 v155, s33, v81
	v_add_nc_u32_e32 v156, s33, v80
	v_add_nc_u32_e32 v157, s33, v79
	v_add_nc_u32_e32 v158, s33, v78
	v_add_nc_u32_e32 v159, s33, v77
	v_add_nc_u32_e32 v160, s33, v76
	v_add_nc_u32_e32 v161, s33, v75
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[127:134], v[110:113], v[5:8], v[119:126] neg_lo:[1,1,0]
	v_lshl_or_b32 v113, v165, 16, v174
	v_lshl_or_b32 v112, v162, 16, v164
	v_lshl_or_b32 v111, v166, 16, v163
	ds_load_u8 v148, v148
	ds_load_u8 v149, v149
	ds_load_u8 v146, v146
	ds_load_u8 v152, v152
	ds_load_u8 v153, v153
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v147, v147
	ds_load_u8 v156, v156
	ds_load_u8 v157, v157
	ds_load_u8 v154, v154
	ds_load_u8 v160, v160
	ds_load_u8 v161, v161
	ds_load_u8 v158, v158
	ds_load_u8 v159, v159
	ds_load_u8 v155, v155
	ds_load_u8 v162, v116
	ds_load_u8 v163, v117
	ds_load_u8 v164, v114
	ds_load_u8 v136, v136
	ds_load_u8 v137, v137
	ds_load_u8 v118, v118
	ds_load_u8 v135, v135
	ds_load_u8 v165, v115
	ds_load_u8 v140, v140
	ds_load_u8 v141, v141
	ds_load_u8 v138, v138
	ds_load_u8 v144, v144
	ds_load_u8 v145, v145
	ds_load_u8 v142, v142
	ds_load_u8 v143, v143
	ds_load_u8 v139, v139
	v_perm_b32 v110, v171, v170, 0xc0c0004
	v_perm_b32 v114, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v115, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v116, v147, v146, 0xc0c0004
	v_perm_b32 v146, v153, v152, 0xc0c0004
	v_perm_b32 v147, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v148, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v149, v155, v154, 0xc0c0004
	v_perm_b32 v150, v161, v160, 0xc0c0004
	v_perm_b32 v151, v159, v158, 0xc0c0004
	v_lshl_or_b32 v110, v114, 16, v110
	v_lshl_or_b32 v117, v116, 16, v115
	v_lshl_or_b32 v116, v147, 16, v146
	v_lshl_or_b32 v115, v149, 16, v148
	v_lshl_or_b32 v114, v151, 16, v150
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v146, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v147, v165, v164, 0xc0c0004
	v_perm_b32 v136, v137, v136, 0xc0c0004
	v_perm_b32 v118, v135, v118, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v135, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v139, v138, 0xc0c0004
	v_perm_b32 v138, v145, v144, 0xc0c0004
	v_perm_b32 v139, v143, v142, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[119:126], v[114:117], v[5:8], v[119:126] neg_lo:[1,1,0]
	v_lshl_or_b32 v117, v147, 16, v146
	v_lshl_or_b32 v116, v118, 16, v136
	v_lshl_or_b32 v115, v137, 16, v135
	v_lshl_or_b32 v114, v139, 16, v138
	v_wmma_i32_16x16x16_iu8 v[127:134], v[110:113], v[1:4], v[127:134] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[114:117], v[1:4], v[119:126] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v111, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v114, v130
	v_cvt_f32_i32_e32 v110, v131
	v_cvt_f32_i32_e32 v112, v132
	v_cvt_f32_i32_e32 v113, v133
	v_cvt_f32_i32_e32 v116, v134
	v_cvt_f32_i32_e32 v115, v119
	v_cvt_f32_i32_e32 v118, v120
	v_cvt_f32_i32_e32 v119, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v117, v123
	v_cvt_f32_i32_e32 v120, v124
	v_cvt_f32_i32_e32 v121, v125
	v_cvt_f32_i32_e32 v124, v126
	v_cvt_f32_i32_e32 v123, v127
	v_cvt_f32_i32_e32 v125, v128
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_mov_b32_e32 v140, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v68, s31, v68
	v_add_nc_u32_e32 v66, s31, v66
	v_add_nc_u32_e32 v71, s31, v71
	v_add_nc_u32_e32 v60, s31, v60
	v_add_nc_u32_e32 v64, s31, v64
	v_add_nc_u32_e32 v62, s31, v62
	v_add_nc_u32_e32 v58, s31, v58
	v_add_nc_u32_e32 v70, s31, v70
	v_add_nc_u32_e32 v52, s31, v52
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v68, v68
	ds_load_u8 v66, v66
	ds_load_u8 v71, v71
	ds_load_u8 v60, v60
	ds_load_u8 v58, v58
	ds_load_u8 v64, v64
	ds_load_u8 v107, v62
	ds_load_u8 v62, v70
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v50, s31, v50
	v_add_nc_u32_e32 v56, s31, v56
	v_add_nc_u32_e32 v44, s31, v44
	v_add_nc_u32_e32 v54, s31, v54
	v_add_nc_u32_e32 v48, s31, v48
	v_add_nc_u32_e32 v46, s31, v46
	v_add_nc_u32_e32 v43, s31, v43
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v52, v52
	ds_load_u8 v50, v50
	ds_load_u8 v56, v56
	ds_load_u8 v44, v44
	ds_load_u8 v43, v43
	ds_load_u8 v48, v48
	ds_load_u8 v46, v46
	ds_load_u8 v54, v54
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v72, s31, v72
	v_add_nc_u32_e32 v69, s31, v69
	v_add_nc_u32_e32 v74, s31, v74
	v_add_nc_u32_e32 v63, s31, v63
	v_add_nc_u32_e32 v73, s31, v73
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v66, v66, v68, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v67, s31, v67
	v_add_nc_u32_e32 v65, s31, v65
	v_add_nc_u32_e32 v61, s31, v61
	v_add_nc_u32_e32 v55, s31, v55
	v_add_nc_u32_e32 v53, s31, v53
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v62, v62, v71, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v51, s31, v51
	v_add_nc_u32_e32 v59, s31, v59
	v_add_nc_u32_e32 v57, s31, v57
	v_add_nc_u32_e32 v49, s31, v49
	v_add_nc_u32_e32 v47, s31, v47
	v_add_nc_u32_e32 v45, s31, v45
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v62, v62, 16, v66
	v_perm_b32 v58, v58, v60, 0xc0c0004
	v_perm_b32 v60, v107, v64, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v50, v50, v52, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v54, v56, 0xc0c0004
	ds_load_u8 v54, v72
	ds_load_u8 v56, v69
	ds_load_u8 v64, v74
	ds_load_u8 v63, v63
	ds_load_u8 v66, v61
	ds_load_u8 v67, v67
	ds_load_u8 v65, v65
	ds_load_u8 v68, v73
	ds_load_u8 v55, v55
	ds_load_u8 v53, v53
	ds_load_u8 v69, v59
	ds_load_u8 v70, v47
	ds_load_u8 v71, v45
	ds_load_u8 v72, v51
	ds_load_u8 v73, v49
	ds_load_u8 v51, v57
	v_perm_b32 v43, v43, v44, 0xc0c0004
	v_perm_b32 v44, v46, v48, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v105, s31, v105
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v61, v60, 16, v58
	v_lshl_or_b32 v60, v52, 16, v50
	v_lshl_or_b32 v59, v44, 16, v43
	v_mov_b32_e32 v50, s11
	v_dual_mov_b32 v49, s10 :: v_dual_add_nc_u32 v106, s31, v106
	v_dual_mov_b32 v47, s8 :: v_dual_add_nc_u32 v104, s31, v104
	v_dual_mov_b32 v48, s9 :: v_dual_add_nc_u32 v103, s31, v103
	v_dual_mov_b32 v45, s6 :: v_dual_add_nc_u32 v102, s31, v102
	v_dual_mov_b32 v46, s7 :: v_dual_add_nc_u32 v101, s31, v101
	v_dual_mov_b32 v43, s4 :: v_dual_add_nc_u32 v100, s31, v100
	v_dual_mov_b32 v44, s5 :: v_dual_add_nc_u32 v99, s31, v99
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v88, s31, v88
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v74, v56, v54, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v64, v68, v64, 0xc0c0004
	v_perm_b32 v63, v66, v63, 0xc0c0004
	v_perm_b32 v65, v65, v67, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v66, v53, v55, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v51, v69, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v87, s31, v87
	v_add_nc_u32_e32 v90, s31, v90
	v_add_nc_u32_e32 v84, s31, v84
	v_add_nc_u32_e32 v96, s31, v96
	v_add_nc_u32_e32 v95, s31, v95
	v_add_nc_u32_e32 v94, s31, v94
	v_add_nc_u32_e32 v93, s31, v93
	v_add_nc_u32_e32 v92, s31, v92
	v_add_nc_u32_e32 v91, s31, v91
	v_add_nc_u32_e32 v89, s31, v89
	v_add_nc_u32_e32 v86, s31, v86
	v_add_nc_u32_e32 v85, s31, v85
	v_add_nc_u32_e32 v83, s31, v83
	v_add_nc_u32_e32 v82, s31, v82
	v_add_nc_u32_e32 v81, s31, v81
	v_add_nc_u32_e32 v80, s31, v80
	v_add_nc_u32_e32 v79, s31, v79
	v_add_nc_u32_e32 v78, s31, v78
	v_add_nc_u32_e32 v77, s31, v77
	v_add_nc_u32_e32 v76, s31, v76
	v_add_nc_u32_e32 v75, s31, v75
	v_add_nc_u32_e32 v98, s31, v98
	v_add_nc_u32_e32 v97, s31, v97
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[51:58], v[59:62], v[5:8], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v64, 16, v74
	v_lshl_or_b32 v61, v65, 16, v63
	v_lshl_or_b32 v60, v67, 16, v66
	v_perm_b32 v59, v71, v70, 0xc0c0004
	ds_load_u8 v63, v88
	ds_load_u8 v64, v87
	ds_load_u8 v65, v90
	ds_load_u8 v66, v84
	ds_load_u8 v67, v83
	ds_load_u8 v68, v86
	ds_load_u8 v69, v85
	ds_load_u8 v70, v89
	ds_load_u8 v71, v80
	ds_load_u8 v74, v79
	ds_load_u8 v79, v82
	ds_load_u8 v76, v76
	ds_load_u8 v75, v75
	ds_load_u8 v78, v78
	ds_load_u8 v77, v77
	ds_load_u8 v80, v81
	ds_load_u8 v81, v104
	ds_load_u8 v82, v103
	ds_load_u8 v83, v106
	ds_load_u8 v84, v100
	ds_load_u8 v85, v99
	ds_load_u8 v86, v102
	ds_load_u8 v87, v101
	ds_load_u8 v88, v105
	ds_load_u8 v89, v96
	ds_load_u8 v90, v95
	ds_load_u8 v95, v98
	ds_load_u8 v92, v92
	ds_load_u8 v91, v91
	ds_load_u8 v94, v94
	ds_load_u8 v93, v93
	ds_load_u8 v96, v97
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v64, v70, v65, 0xc0c0004
	v_perm_b32 v65, v67, v66, 0xc0c0004
	v_perm_b32 v67, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v68, v74, v71, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v69, v80, v79, 0xc0c0004
	v_perm_b32 v70, v75, v76, 0xc0c0004
	v_perm_b32 v71, v77, v78, 0xc0c0004
	v_lshl_or_b32 v59, v72, 16, v59
	v_lshl_or_b32 v66, v64, 16, v63
	v_lshl_or_b32 v65, v67, 16, v65
	v_lshl_or_b32 v64, v69, 16, v68
	v_lshl_or_b32 v63, v71, 16, v70
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v67, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v68, v88, v83, 0xc0c0004
	v_perm_b32 v69, v85, v84, 0xc0c0004
	v_perm_b32 v70, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v71, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v96, v95, 0xc0c0004
	v_perm_b32 v73, v91, v92, 0xc0c0004
	v_perm_b32 v74, v93, v94, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[63:66], v[5:8], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v68, 16, v67
	v_lshl_or_b32 v7, v70, 16, v69
	v_lshl_or_b32 v6, v72, 16, v71
	v_lshl_or_b32 v5, v74, 16, v73
	v_wmma_i32_16x16x16_iu8 v[51:58], v[59:62], v[1:4], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[5:8], v[1:4], v[43:50] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v107, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v127, v52
	v_cvt_f32_i32_e32 v128, v53
	v_cvt_f32_i32_e32 v131, v54
	v_cvt_f32_i32_e32 v126, v55
	v_cvt_f32_i32_e32 v129, v56
	v_cvt_f32_i32_e32 v130, v57
	v_cvt_f32_i32_e32 v133, v58
	v_cvt_f32_i32_e32 v132, v43
	v_cvt_f32_i32_e32 v135, v44
	v_cvt_f32_i32_e32 v136, v45
	v_cvt_f32_i32_e32 v139, v46
	v_cvt_f32_i32_e32 v134, v47
	v_cvt_f32_i32_e32 v137, v48
	v_cvt_f32_i32_e32 v138, v49
	v_cvt_f32_i32_e32 v140, v50
.LBB0_16:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, s28, v41
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v2, s18, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v56, v38, v114 :: v_dual_lshlrev_b32 v1, 1, v1
	v_dual_add_f32 v59, v26, v125 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s20, s12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v54, v15, v110 :: v_dual_and_b32 v3, 32, v108
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	buffer_load_u16 v6, v1, s[20:23], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v4, v109, 2, 0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v1, v2, s[20:23], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v61, v25, v123 :: v_dual_and_b32 v2, 28, v42
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s0, s18, s19
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v2, v4, v3, v2
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v3, s0, v0, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v57, v37, v111 :: v_dual_add_f32 v46, v32, v118
	v_dual_add_f32 v49, v30, v116 :: v_dual_add_f32 v48, v31, v115
	v_dual_add_f32 v51, v29, v113 :: v_dual_add_f32 v44, v40, v122
	v_dual_add_f32 v45, v39, v119 :: v_dual_add_f32 v42, v24, v120
	v_dual_add_f32 v43, v23, v117 :: v_dual_add_f32 v70, v10, v127
	v_dual_add_f32 v7, v34, v124 :: v_dual_add_f32 v8, v33, v121
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v71, v9, v107 :: v_dual_add_f32 v66, v12, v129
	v_dual_add_f32 v67, v11, v126 :: v_dual_add_f32 v64, v20, v133
	v_dual_add_f32 v65, v19, v130 :: v_dual_add_f32 v62, v22, v135
	v_dual_add_f32 v63, v21, v132 :: v_dual_add_f32 v58, v36, v139
	v_dual_add_f32 v60, v35, v136 :: v_dual_add_f32 v53, v14, v137
	v_dual_add_f32 v55, v13, v134 :: v_dual_and_b32 v0, 16, v0
	v_dual_add_f32 v47, v18, v140 :: v_dual_add_f32 v50, v17, v138
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v4, v109, 1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v10, v70, s2
	v_cndmask_b32_e64 v37, v37, v57, s2
	v_cndmask_b32_e64 v54, v15, v54, s2
	v_cndmask_b32_e64 v57, v11, v67, s2
	v_cndmask_b32_e64 v66, v12, v66, s2
	v_cndmask_b32_e64 v29, v29, v51, s2
	v_cndmask_b32_e64 v30, v30, v49, s2
	v_cndmask_b32_e64 v49, v19, v65, s2
	v_cndmask_b32_e64 v51, v20, v64, s2
	v_cndmask_b32_e64 v31, v31, v48, s2
	v_cndmask_b32_e64 v32, v32, v46, s2
	v_cndmask_b32_e64 v46, v21, v63, s2
	v_cndmask_b32_e64 v48, v22, v62, s2
	v_cndmask_b32_e64 v39, v39, v45, s2
	v_cndmask_b32_e64 v45, v13, v55, s2
	v_cndmask_b32_e64 v53, v14, v53, s2
	v_cndmask_b32_e64 v8, v33, v8, s2
	v_cndmask_b32_e64 v33, v17, v50, s2
	v_cndmask_b32_e64 v61, v25, v61, s2
	v_cndmask_b32_e64 v59, v26, v59, s2
	v_cndmask_b32_e64 v43, v23, v43, s2
	v_cndmask_b32_e64 v42, v24, v42, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v41, s19, v41
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v73, 0x7632
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s28, s28, s19
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v44, s2
	v_cndmask_b32_e64 v7, v34, v7, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v5, 1, v109
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v68, v28, v131 :: v_dual_add_f32 v69, v27, v128
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v34, s28, s18, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v18, v47, s2
	v_cndmask_b32_e64 v38, v38, v56, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v28, v28, v68, s2
	v_cndmask_b32_e64 v35, v35, v60, s2
	v_cndmask_b32_e64 v36, v36, v58, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v5, v34, v5, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v69, s2
	v_cndmask_b32_e64 v71, v9, v71, s2
	s_mov_b32 s15, 0x76543210
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v52, v16, v112
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v16, v52, s2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[19:22], v4
	ds_load_b128 v[23:26], v4 offset:16
	ds_load_b128 v[10:13], v4 offset:512
	ds_load_b128 v[14:17], v4 offset:528
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v72, 0x5410
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v74.h, v1.h
	v_mov_b16_e32 v56.h, v1.h
	v_mov_b16_e32 v67.h, v1.h
	v_mov_b16_e32 v64.h, v1.h
	v_mov_b16_e32 v62.h, v1.h
	v_mov_b16_e32 v44.h, v1.h
	v_mov_b16_e32 v9.h, v1.h
	v_mov_b16_e32 v47.h, v1.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v18, v19, v6
	v_mul_f32_e32 v19, v20, v6
	v_mul_f32_e32 v34, v11, v6
	v_mul_f32_e32 v65, v17, v6
	v_mul_f32_e32 v20, v21, v6
	v_mul_f32_e32 v21, v22, v6
	v_mul_f32_e32 v50, v12, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v58, v14, v6 :: v_dual_mul_f32 v7, v7, v65
	v_dual_mul_f32 v22, v23, v6 :: v_dual_mul_f32 v37, v37, v20
	v_mul_f32_e32 v60, v15, v6
	v_mul_f32_e32 v63, v16, v6
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v54, v54, v22 :: v_dual_lshlrev_b32 v3, 16, v3
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	ds_store_b32 v2, v3
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v2, v59, v19 :: v_dual_mul_f32 v23, v24, v6
	v_mul_f32_e32 v38, v38, v21
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v24, v25, v6
	v_mul_f32_e32 v25, v26, v6
	v_mul_f32_e32 v26, v10, v6
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v4 offset:16
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v52, v52, v23 :: v_dual_mul_f32 v55, v13, v6
	v_mul_f32_e32 v30, v30, v25
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	ds_load_b128 v[10:13], v4
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v61, v18
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	ds_load_b128 v[18:21], v4 offset:512
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v17, v17, v6
	v_mul_f32_e32 v15, v15, v6
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v17, v51, v17 :: v_dual_mul_f32 v12, v12, v6
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v13, v13, v6
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v15, v66, v15 :: v_dual_mul_f32 v12, v27, v12
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v11, v11, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v13, v28, v13 :: v_dual_mul_f32 v10, v10, v6
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v28, 0xbfb8aa3b, v12 :: v_dual_mul_f32 v11, v70, v11
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v29, v29, v24
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	ds_load_b128 v[22:25], v4 offset:528
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v4, v31, v26
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v19, v19, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v27, 0xbfb8aa3b, v11
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v28
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v26, v40, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v28, 0, 0x42800000, s2
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v20, v20, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v28, 0xbfb8aa3b, v12 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v11
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v20, v35, v20
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v22, v22, v6
	v_mul_f32_e32 v24, v24, v6
	v_mul_f32_e32 v16, v16, v6
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v27, v27
	v_exp_f32_e32 v28, v28
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v22, v45, v22
	v_mul_f32_e32 v24, v33, v24
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v21, v21, v6
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v20
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v31, v39, v50 :: v_dual_mul_f32 v16, v49, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v39, v43, v58 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v24
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v21, v36, v21
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v23, v23, v6
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v32, v32, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v36, 0xbfb8aa3b, v15
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v19, v48, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v13
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v23, v53, v23 :: v_dual_mul_f32 v14, v14, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v18, v18, v6 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v19
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v45
	v_mul_f32_e32 v49, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v33
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v36
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v43
	v_cndmask_b32_e64 v45, 0, 0x42800000, s10
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v10, v71, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v49
	v_cndmask_b32_e64 v33, 0, 0x42800000, s1
	v_cndmask_b32_e64 v43, 0, 0x42800000, s7
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v6, v25, v6 :: v_dual_fmac_f32 v45, 0xbfb8aa3b, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v10
	v_cndmask_b32_e64 v49, 0, 0x42800000, s11
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v14, v57, v14 :: v_dual_fmac_f32 v33, 0xbfb8aa3b, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v25
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v35, 0xbfb8aa3b, v14
	v_exp_f32_e32 v33, v33
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v15
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v35
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v50
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v19
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v10
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v35, 0, 0x42800000, s4
	v_ldexp_f32 v33, v33, v57
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v6, v41, v6 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s14
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v14
	v_exp_f32_e32 v25, v25
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v34, v42, v60
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v41
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v24
	v_exp_f32_e32 v35, v35
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0x42800000, s5
	v_exp_f32_e32 v43, v43
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s5
	v_ldexp_f32 v25, v25, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v18, v46, v18 :: v_dual_fmac_f32 v41, 0xbfb8aa3b, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v27, v27, v53
	v_ldexp_f32 v35, v35, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v25, 1.0, v25 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v46, 0xbfb8aa3b, v21 :: v_dual_add_f32 v35, 1.0, v35
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s7
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v42
	v_mul_f32_e32 v40, 0xbfb8aa3b, v16
	v_exp_f32_e32 v36, v36
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v46
	v_cndmask_b32_e64 v42, 0, 0x42800000, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v41, v41, v61
	v_mul_f32_e32 v48, 0xbfb8aa3b, v22
	v_ldexp_f32 v43, v43, v65
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v18
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s3
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v49, v49
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v48
	v_cndmask_b32_e64 v46, 0, 0x42800000, s9
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v53, null, v27, v27, v11
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, s6
	v_cndmask_b32_e64 v48, 0, 0x42800000, s12
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s11
	v_ldexp_f32 v36, v36, v59
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v51, 0xbfb8aa3b, v6 :: v_dual_fmac_f32 v40, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s8
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v93, v53
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v51
	v_ldexp_f32 v45, v45, v69
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v22
	v_ldexp_f32 v49, v49, v70
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s2
	v_exp_f32_e32 v46, v46
	v_ldexp_f32 v42, v42, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v59, null, v33, v33, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, s13
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v48, v48
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v65, null, v36, v36, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s9
	v_ldexp_f32 v28, v28, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v95, v59
	v_fma_f32 v109, -v53, v93, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s12
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v6 :: v_dual_add_f32 v28, 1.0, v28
	v_exp_f32_e32 v40, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v97, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v46, v46, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v57, null, v25, v25, v10
	v_fmac_f32_e32 v93, v109, v93
	v_div_scale_f32 v79, null, v42, v42, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v50, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v41, v41, v17
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v8, v8, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s6
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v48, v48, v71
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v61, null, v28, v28, v12
	v_div_scale_f32 v77, null, v43, v43, v19
	v_rcp_f32_e32 v94, v57
	v_rcp_f32_e32 v102, v79
	v_fma_f32 v111, -v59, v95, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v99, v70
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s13
	v_ldexp_f32 v40, v40, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v113, -v65, v97, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v96, v61
	v_rcp_f32_e32 v101, v77
	v_fmac_f32_e32 v95, v111, v95
	v_div_scale_f32 v81, null, v46, v46, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v50, v50, v76
	v_ldexp_f32 v51, v51, v75
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v40, 1.0, v40 :: v_dual_fmac_f32 v97, v113, v97
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v87, null, v48, v48, v22
	v_div_scale_f32 v55, vcc_lo, v11, v27, v11
	v_div_scale_f32 v68, null, v35, v35, v14
	v_rcp_f32_e32 v103, v81
	v_fma_f32 v110, -v57, v94, 1.0
	v_fma_f32 v118, -v79, v102, 1.0
	v_fma_f32 v115, -v70, v99, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v83, null, v45, v45, v20
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v75, null, v40, v40, v16
	v_rcp_f32_e32 v106, v87
	v_div_scale_f32 v58, s0, v10, v25, v10
	v_div_scale_f32 v85, null, v49, v49, v23
	v_rcp_f32_e32 v98, v68
	v_fma_f32 v112, -v61, v96, 1.0
	v_fma_f32 v117, -v77, v101, 1.0
	v_fmac_f32_e32 v94, v110, v94
	v_dual_fmac_f32 v102, v118, v102 :: v_dual_mul_f32 v109, v55, v93
	v_fmac_f32_e32 v99, v115, v99
	v_div_scale_f32 v91, null, v50, v50, v24
	v_rcp_f32_e32 v104, v83
	v_div_scale_f32 v89, null, v51, v51, v6
	v_rcp_f32_e32 v100, v75
	v_div_scale_f32 v63, s2, v12, v28, v12
	v_div_scale_f32 v78, s7, v19, v43, v19
	v_rcp_f32_e32 v105, v85
	v_fma_f32 v119, -v81, v103, 1.0
	v_dual_fmac_f32 v96, v112, v96 :: v_dual_fmac_f32 v101, v117, v101
	v_fma_f32 v125, -v53, v109, v55
	v_mul_f32_e32 v110, v58, v94
	v_rcp_f32_e32 v108, v91
	v_div_scale_f32 v60, s1, v13, v33, v13
	v_rcp_f32_e32 v107, v89
	v_fma_f32 v122, -v87, v106, 1.0
	v_fma_f32 v114, -v68, v98, 1.0
	v_fmac_f32_e32 v103, v119, v103
	v_dual_mul_f32 v112, v63, v96 :: v_dual_mul_f32 v117, v78, v101
	v_fmac_f32_e32 v109, v125, v93
	v_fma_f32 v126, -v57, v110, v58
	v_div_scale_f32 v66, s3, v15, v36, v15
	v_fma_f32 v120, -v83, v104, 1.0
	v_fma_f32 v116, -v75, v100, 1.0
	v_dual_fmac_f32 v106, v122, v106 :: v_dual_mul_f32 v111, v60, v95
	v_div_scale_f32 v69, s4, v14, v35, v14
	v_fma_f32 v121, -v85, v105, 1.0
	v_fmac_f32_e32 v98, v114, v98
	v_fma_f32 v133, -v77, v117, v78
	v_fmac_f32_e32 v110, v126, v94
	v_div_scale_f32 v82, s9, v21, v46, v21
	v_div_scale_f32 v71, s5, v17, v41, v17
	v_fma_f32 v124, -v91, v108, 1.0
	v_dual_fmac_f32 v104, v120, v104 :: v_dual_mul_f32 v113, v66, v97
	v_fma_f32 v53, -v53, v109, v55
	v_div_scale_f32 v76, s6, v16, v40, v16
	v_div_scale_f32 v84, s10, v20, v45, v20
	v_fma_f32 v123, -v89, v107, 1.0
	v_fmac_f32_e32 v100, v116, v100
	v_fma_f32 v127, -v59, v111, v60
	v_div_scale_f32 v86, s11, v23, v49, v23
	v_fmac_f32_e32 v105, v121, v105
	v_dual_mul_f32 v114, v69, v98 :: v_dual_mul_f32 v119, v82, v103
	v_fmac_f32_e32 v117, v133, v101
	v_fma_f32 v55, -v57, v110, v58
	v_fma_f32 v128, -v61, v112, v63
	v_dual_fmac_f32 v108, v124, v108 :: v_dual_mul_f32 v115, v71, v99
	v_div_scale_f32 v88, s12, v22, v48, v22
	v_fma_f32 v129, -v65, v113, v66
	v_div_fmas_f32 v53, v53, v93, v109
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v80, s8, v18, v42, v18
	v_div_scale_f32 v90, s13, v6, v51, v6
	v_dual_fmac_f32 v107, v123, v107 :: v_dual_mul_f32 v116, v76, v100
	v_dual_mul_f32 v121, v86, v105 :: v_dual_mul_f32 v120, v84, v104
	v_fmac_f32_e32 v111, v127, v95
	v_fma_f32 v130, -v68, v114, v69
	v_div_fmas_f32 v55, v55, v94, v110
	v_fma_f32 v135, -v81, v119, v82
	v_fmac_f32_e32 v112, v128, v96
	v_div_scale_f32 v92, s14, v24, v50, v24
	v_fma_f32 v131, -v70, v115, v71
	v_dual_mul_f32 v122, v88, v106 :: v_dual_fmac_f32 v113, v129, v97
	v_dual_mul_f32 v118, v80, v102 :: v_dual_mul_f32 v123, v90, v107
	v_fma_f32 v132, -v75, v116, v76
	v_fma_f32 v57, -v59, v111, v60
	v_fma_f32 v136, -v83, v120, v84
	v_fma_f32 v137, -v85, v121, v86
	v_fmac_f32_e32 v114, v130, v98
	v_div_fixup_f32 v10, v55, v25, v10
	v_fmac_f32_e32 v119, v135, v103
	v_fma_f32 v58, -v61, v112, v63
	v_dual_mul_f32 v124, v92, v108 :: v_dual_fmac_f32 v115, v131, v99
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v59, -v65, v113, v66
	v_fma_f32 v139, -v89, v123, v90
	v_fmac_f32_e32 v116, v132, v100
	v_div_fmas_f32 v57, v57, v95, v111
	s_mov_b32 vcc_lo, s2
	v_dual_fmac_f32 v120, v136, v104 :: v_dual_mul_f32 v3, v3, v10
	v_fmac_f32_e32 v121, v137, v105
	v_fma_f32 v60, -v68, v114, v69
	v_div_fixup_f32 v11, v53, v27, v11
	v_div_fmas_f32 v27, v58, v96, v112
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v61, -v70, v115, v71
	v_div_fmas_f32 v25, v59, v97, v113
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v123, v139, v107
	v_fma_f32 v63, -v75, v116, v76
	v_fma_f32 v134, -v79, v118, v80
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.l, v3.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v11
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v11, v60, v98, v114
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v65, -v77, v117, v78
	v_div_fmas_f32 v10, v61, v99, v115
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v15, v25, v36, v15
	v_div_fmas_f32 v25, v63, v100, v116
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v118, v134, v102
	v_fma_f32 v140, -v91, v124, v92
	v_div_fixup_f32 v13, v57, v33, v13
	v_div_fixup_f32 v11, v11, v35, v14
	v_div_fmas_f32 v14, v65, v101, v117
	v_fma_f32 v138, -v87, v122, v88
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v15, v52, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v79, v118, v80
	v_dual_fmac_f32 v124, v140, v108 :: v_dual_mul_f32 v13, v38, v13
	v_div_fixup_f32 v12, v27, v28, v12
	v_div_fixup_f32 v14, v14, v43, v19
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v19, 1, v74
	v_mov_b16_e32 v1.l, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v81, v119, v82
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v122, v138, v106
	v_fma_f32 v69, -v83, v120, v84
	v_div_fixup_f32 v10, v10, v41, v17
	v_div_fmas_f32 v17, v66, v102, v118
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v70, -v85, v121, v86
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v12, v37, v12 :: v_dual_mul_f32 v11, v54, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v25, v40, v16
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v25, 1, v1
	v_mov_b16_e32 v1.l, v13.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v68, v103, v119
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v71, -v87, v122, v88
	v_div_fmas_f32 v28, v69, v104, v120
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v75, -v89, v123, v90
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v2, v2
	v_mov_b16_e32 v56.l, v12.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v30, v10
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v17, v42, v18
	v_div_fmas_f32 v18, v70, v105, v121
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v2, v25, 0x7fff
	v_and_b32_e32 v25, 1, v1
	v_mov_b16_e32 v1.l, v15.h
	v_mov_b16_e32 v67.l, v11.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v16, v29, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v76, -v91, v124, v92
	v_div_fmas_f32 v29, v71, v106, v122
	s_mov_b32 vcc_lo, s13
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v21, v27, v46, v21
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v14, v32, v14 :: v_dual_and_b32 v27, 1, v56
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v3, v19, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v19, v28, v45, v20
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v17, v75, v107, v123
	v_div_fixup_f32 v18, v18, v49, v23
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v20, 1, v1
	v_and_b32_e32 v23, 1, v67
	v_mov_b16_e32 v64.l, v16.h
	v_mov_b16_e32 v1.l, v10.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v13, v13
	v_cmp_o_f32_e64 s3, v12, v12
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v13, v13, v25, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v76, v108, v124
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v12, v27, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v29, v48, v22
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v26, v21
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v31, v19
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v17, v51, v6
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v18, v34, v18 :: v_dual_and_b32 v17, 1, v64
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v11, v11, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v6, v7, v6 :: v_dual_and_b32 v19, 1, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v14.h
	v_cmp_o_f32_e64 s4, v15, v15
	v_add3_u32 v15, v15, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v10, v10
	v_cmp_o_f32_e64 s7, v16, v16
	v_mov_b16_e32 v62.l, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v20, v25, v50, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.l, 0x7fff, v12.h, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v39, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.l, v3.h
	v_add3_u32 v7, v16, v17, 0x7fff
	v_cndmask_b16 v15.l, 0x7fff, v11.h, s5
	v_add3_u32 v10, v10, v19, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v8, v8, v20 :: v_dual_and_b32 v11, 1, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v21.h
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s0
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_and_b32_e32 v22, 1, v62
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s4
	v_cmp_eq_u32_e64 s4, 0, v0
	v_and_b32_e32 v0, 1, v44
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s7
	v_cndmask_b16 v7.h, 0x7fff, v10.h, s6
	v_add3_u32 v10, v14, v11, 0x7fff
	v_and_b32_e32 v11, 1, v1
	v_mov_b16_e32 v1.l, v18.h
	v_cmp_o_f32_e64 s0, v4, v4
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s2
	v_cmp_o_f32_e64 s2, v3, v3
	v_mov_b16_e32 v9.l, v12.h
	v_add3_u32 v4, v4, v22, 0x7fff
	v_mov_b16_e32 v47.l, v8.h
	v_cndmask_b32_e64 v14, v15, v2, s4
	v_cndmask_b32_e64 v2, v2, v15, s4
	v_cndmask_b32_e64 v15, 0x1054, v72, s4
	v_add3_u32 v0, v3, v0, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v10.h, vcc_lo
	v_and_b32_e32 v10, 1, v1
	v_mov_b16_e32 v1.l, v6.h
	v_cndmask_b32_e64 v16, 0x3276, v73, s4
	v_cmp_o_f32_e64 s1, v21, v21
	v_and_b32_e32 v9, 1, v9
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s0
	v_add3_u32 v4, v21, v11, 0x7fff
	v_and_b32_e32 v11, 1, v47
	v_cndmask_b32_e64 v17, v7, v13, s4
	v_cndmask_b32_e64 v7, v13, v7, s4
	v_lshl_or_b32 v13, v15, 8, v15
	v_and_b32_e32 v1, 1, v1
	v_lshl_or_b32 v15, v16, 8, v16
	v_cmp_o_f32_e64 s3, v18, v18
	v_cmp_o_f32_e64 s5, v12, v12
	v_cmp_o_f32_e64 s8, v6, v6
	v_cmp_o_f32_e64 s6, v8, v8
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s1
	v_add3_u32 v4, v18, v10, 0x7fff
	v_add3_u32 v8, v8, v11, 0x7fff
	v_and_b32_e32 v10, 0x540054, v13
	v_add3_u32 v1, v6, v1, 0x7fff
	v_and_b32_e32 v11, 0x760076, v15
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s5
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s3
	v_cndmask_b16 v1.l, 0x7fff, v8.h, s6
	v_lshl_or_b32 v6, v10, 4, v10
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s8
	v_lshl_or_b32 v8, v11, 4, v11
	v_cndmask_b32_e64 v9, v4, v3, s4
	v_cndmask_b32_e64 v3, v3, v4, s4
	v_and_b32_e32 v4, 0x5040504, v6
	v_cndmask_b32_e64 v6, v0, v1, s4
	v_permlanex16_b32 v2, v2, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x7060706, v8
	v_cndmask_b32_e64 v11, v1, v0, s4
	v_permlanex16_b32 v8, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v6, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v14, v4
	v_perm_b32 v1, v2, v14, v10
	v_perm_b32 v2, v7, v17, v4
	v_perm_b32 v3, v7, v17, v10
	v_perm_b32 v6, v8, v9, v4
	v_perm_b32 v7, v8, v9, v10
	v_perm_b32 v8, v12, v11, v4
	v_perm_b32 v9, v12, v11, v10
	s_clause 0x1
	buffer_store_b128 v[0:3], v5, s[16:19], 0 offen
	buffer_store_b128 v[6:9], v5, s[16:19], 0 offen offset:256
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 186
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16380
; TotalNumSgprs: 42
; NumVgprs: 186
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 42
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     186
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
