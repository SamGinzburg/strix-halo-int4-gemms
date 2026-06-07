	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v66, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v65, 15, v0
	s_mov_b32 s29, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v67, 0x70, v66
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
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
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v4, s10, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	v_readfirstlane_b32 s9, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 7, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v3, 3, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
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
	s_lshl_b32 s30, s15, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v2, s30, v2
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s4, s9
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s34, s3, 6
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s14, s4, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s10, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v11, v1, 4, v2
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s2, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s28, s10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v12, v4, v3, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s30, s34
	v_lshl_add_u32 v13, s15, 6, v11
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s14, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s4, v11
	v_add_nc_u32_e32 v3, s4, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s6, s15, 7
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s34, v12
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s4, s6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s34, 64
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v10, s15, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v15, s4, v11
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v14, s15, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v4, s34, v12
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v16, s4, v13
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 358 39 is_stmt 0              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v26, s15, v15
	v_add3_u32 v25, s4, s15, v13
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[41:42], v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v3, s3
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[17:20], v10, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v14, s[24:27], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v26, s2
	v_cndmask_b32_e64 v14, 0x80000000, v25, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[2:5], v5, s[24:27], 0 offen
	buffer_load_b128 v[6:9], v6, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[43:44], v1, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[25:28], v15, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v16, s[24:27], 0 offen
	buffer_load_b128 v[33:36], v10, s[24:27], 0 offen
	buffer_load_b128 v[37:40], v14, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v1, 3, v0
	v_and_b32_e32 v10, 48, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v16, 4, v0
	v_or_b32_e32 v14, v67, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xbf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v15, v1, v10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v45, 0, v16
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v10, 0, v15
	s_waitcnt vmcnt(9)
	ds_store_b64 v10, v[41:42] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	ds_store_b128 v45, v[2:5]
	s_waitcnt vmcnt(5)
	ds_store_b128 v45, v[6:9] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v45, v[17:20] offset:16384
	ds_store_b128 v45, v[21:24] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v10, v[43:44] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v45, v[25:28] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v45, v[29:32] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v45, v[33:36] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v45, v[37:40] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 48, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v135, v67, v65
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v131, v65, 6, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v68, 0x80, v135
	v_or_b32_e32 v70, 0x100, v135
	v_or_b32_e32 v72, 0x180, v135
	v_or_b32_e32 v73, 0x200, v135
	v_or_b32_e32 v76, 0x280, v135
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v132, 16, v131
	v_xor_b32_e32 v133, 32, v131
	v_xor_b32_e32 v134, 48, v131
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v78, 0x300, v135
	v_or_b32_e32 v80, 0x380, v135
	v_or_b32_e32 v82, 0x400, v135
	v_or_b32_e32 v84, 0x480, v135
	v_or_b32_e32 v86, 0x500, v135
	v_or_b32_e32 v88, 0x580, v135
	v_or_b32_e32 v90, 0x600, v135
	v_or_b32_e32 v92, 0x680, v135
	v_or_b32_e32 v94, 0x700, v135
	v_or_b32_e32 v96, 0x780, v135
	v_or_b32_e32 v69, 0x800, v135
	v_or_b32_e32 v71, 0x880, v135
	v_or_b32_e32 v74, 0x900, v135
	v_or_b32_e32 v75, 0x980, v135
	v_or_b32_e32 v77, 0xa00, v135
	v_or_b32_e32 v79, 0xa80, v135
	v_or_b32_e32 v81, 0xb00, v135
	v_or_b32_e32 v83, 0xb80, v135
	v_or_b32_e32 v85, 0xc00, v135
	v_or_b32_e32 v87, 0xc80, v135
	v_or_b32_e32 v89, 0xd00, v135
	v_or_b32_e32 v91, 0xd80, v135
	v_or_b32_e32 v93, 0xe00, v135
	v_or_b32_e32 v95, 0xe80, v135
	v_or_b32_e32 v97, 0xf00, v135
	v_or_b32_e32 v98, 0xf80, v135
	v_or_b32_e32 v99, 0x1000, v135
	v_or_b32_e32 v100, 0x1080, v135
	v_or_b32_e32 v101, 0x1100, v135
	v_or_b32_e32 v102, 0x1180, v135
	v_or_b32_e32 v103, 0x1200, v135
	v_or_b32_e32 v104, 0x1280, v135
	v_or_b32_e32 v105, 0x1300, v135
	v_or_b32_e32 v106, 0x1380, v135
	v_or_b32_e32 v107, 0x1400, v135
	v_or_b32_e32 v108, 0x1480, v135
	v_or_b32_e32 v109, 0x1500, v135
	v_or_b32_e32 v110, 0x1580, v135
	v_or_b32_e32 v111, 0x1600, v135
	v_or_b32_e32 v112, 0x1680, v135
	v_or_b32_e32 v113, 0x1700, v135
	v_or_b32_e32 v114, 0x1780, v135
	v_or_b32_e32 v115, 0x1800, v135
	v_or_b32_e32 v116, 0x1880, v135
	v_or_b32_e32 v117, 0x1900, v135
	v_or_b32_e32 v118, 0x1980, v135
	v_or_b32_e32 v119, 0x1a00, v135
	v_or_b32_e32 v120, 0x1a80, v135
	v_or_b32_e32 v121, 0x1b00, v135
	v_or_b32_e32 v122, 0x1b80, v135
	v_or_b32_e32 v123, 0x1c00, v135
	v_or_b32_e32 v124, 0x1c80, v135
	v_or_b32_e32 v125, 0x1d00, v135
	v_or_b32_e32 v126, 0x1d80, v135
	v_or_b32_e32 v127, 0x1e00, v135
	v_or_b32_e32 v128, 0x1e80, v135
	v_or_b32_e32 v129, 0x1f00, v135
	v_or_b32_e32 v130, 0x1f80, v135
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr131
                                        ; implicit-def: $vgpr132
                                        ; implicit-def: $vgpr133
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr135
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr72
                                        ; implicit-def: $vgpr73
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr71
                                        ; implicit-def: $vgpr74
                                        ; implicit-def: $vgpr75
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr95
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
.LBB0_3:                                ; %Flow176
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v54, 0 :: v_dual_and_b32 v1, 48, v1
	v_or_b32_e32 v68, 0x80, v14
	v_or_b32_e32 v70, 0x100, v14
	v_or_b32_e32 v72, 0x180, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v131, v65, 6, v1
	v_or_b32_e32 v73, 0x200, v14
	v_or_b32_e32 v76, 0x280, v14
	v_or_b32_e32 v78, 0x300, v14
	v_or_b32_e32 v80, 0x380, v14
	v_xor_b32_e32 v132, 16, v131
	v_xor_b32_e32 v133, 32, v131
	v_xor_b32_e32 v134, 48, v131
	v_or_b32_e32 v82, 0x400, v14
	v_or_b32_e32 v84, 0x480, v14
	v_or_b32_e32 v86, 0x500, v14
	v_or_b32_e32 v88, 0x580, v14
	v_or_b32_e32 v90, 0x600, v14
	v_or_b32_e32 v92, 0x680, v14
	v_or_b32_e32 v94, 0x700, v14
	v_or_b32_e32 v96, 0x780, v14
	v_or_b32_e32 v69, 0x800, v14
	v_or_b32_e32 v71, 0x880, v14
	v_or_b32_e32 v74, 0x900, v14
	v_or_b32_e32 v75, 0x980, v14
	v_or_b32_e32 v77, 0xa00, v14
	v_or_b32_e32 v79, 0xa80, v14
	v_or_b32_e32 v81, 0xb00, v14
	v_or_b32_e32 v83, 0xb80, v14
	v_or_b32_e32 v85, 0xc00, v14
	v_or_b32_e32 v87, 0xc80, v14
	v_or_b32_e32 v89, 0xd00, v14
	v_or_b32_e32 v91, 0xd80, v14
	v_or_b32_e32 v93, 0xe00, v14
	v_or_b32_e32 v95, 0xe80, v14
	v_or_b32_e32 v97, 0xf00, v14
	v_or_b32_e32 v98, 0xf80, v14
	v_or_b32_e32 v99, 0x1000, v14
	v_or_b32_e32 v100, 0x1080, v14
	v_or_b32_e32 v101, 0x1100, v14
	v_or_b32_e32 v102, 0x1180, v14
	v_or_b32_e32 v103, 0x1200, v14
	v_or_b32_e32 v104, 0x1280, v14
	v_or_b32_e32 v105, 0x1300, v14
	v_or_b32_e32 v106, 0x1380, v14
	v_or_b32_e32 v107, 0x1400, v14
	v_or_b32_e32 v108, 0x1480, v14
	v_or_b32_e32 v109, 0x1500, v14
	v_or_b32_e32 v110, 0x1580, v14
	v_or_b32_e32 v111, 0x1600, v14
	v_or_b32_e32 v112, 0x1680, v14
	v_or_b32_e32 v113, 0x1700, v14
	v_or_b32_e32 v114, 0x1780, v14
	v_or_b32_e32 v115, 0x1800, v14
	v_or_b32_e32 v116, 0x1880, v14
	v_or_b32_e32 v117, 0x1900, v14
	v_or_b32_e32 v118, 0x1980, v14
	v_or_b32_e32 v119, 0x1a00, v14
	v_or_b32_e32 v120, 0x1a80, v14
	v_or_b32_e32 v121, 0x1b00, v14
	v_or_b32_e32 v122, 0x1b80, v14
	v_or_b32_e32 v123, 0x1c00, v14
	v_or_b32_e32 v124, 0x1c80, v14
	v_or_b32_e32 v125, 0x1d00, v14
	v_or_b32_e32 v126, 0x1d80, v14
	v_or_b32_e32 v127, 0x1e00, v14
	v_or_b32_e32 v128, 0x1e80, v14
	v_or_b32_e32 v129, 0x1f00, v14
	v_or_b32_e32 v130, 0x1f80, v14
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v35, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s35, s5, 6
	s_add_i32 s34, s34, 64
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s36, 0, 0x8800
	s_add_i32 s33, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s31, 0, 0x6000
	s_add_i32 s35, s35, -3
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
	s_mov_b32 s29, s4
	s_mov_b32 s37, s4
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s39, s0
	s_mov_b32 s0, s36
	s_mov_b32 s36, s29
	s_mov_b32 s29, s33
	s_mov_b32 s33, s1
	s_mov_b32 s1, s31
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s31, s37, 6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v17, s39, v131
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s31, s34, s31
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v172, s33, v14
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v9, s31, v12
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v163, s39, v132
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v171, s36, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[9:10], v9, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[143:146], v17
	ds_load_b128 v[151:154], v17 offset:1024
	ds_load_b128 v[155:158], v163
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v17, v171 offset:1664
	ds_load_u8 v18, v171 offset:1536
	ds_load_u8 v19, v171 offset:1920
	ds_load_u8 v20, v171 offset:1792
	ds_load_u8 v21, v171 offset:1152
	ds_load_u8 v22, v171 offset:1024
	ds_load_u8 v23, v171 offset:1408
	ds_load_u8 v24, v171 offset:1280
	ds_load_u8 v25, v171 offset:640
	ds_load_u8 v26, v171 offset:512
	ds_load_u8 v27, v171 offset:896
	ds_load_u8 v28, v171 offset:768
	ds_load_u8 v29, v171 offset:128
	ds_load_u8 v30, v171
	ds_load_u8 v31, v171 offset:384
	ds_load_u8 v32, v171 offset:256
	ds_load_u8 v167, v171 offset:3712
	ds_load_u8 v168, v171 offset:3584
	ds_load_u8 v169, v171 offset:3968
	ds_load_u8 v170, v171 offset:3840
	ds_load_u8 v173, v171 offset:3200
	ds_load_u8 v174, v171 offset:3072
	ds_load_u8 v175, v171 offset:3456
	ds_load_u8 v176, v171 offset:3328
	ds_load_u8 v177, v171 offset:2688
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v135, v172 offset:1664
	ds_load_u8 v136, v172 offset:1536
	ds_load_u8 v137, v172 offset:1920
	ds_load_u8 v138, v172 offset:1792
	ds_load_u8 v139, v172 offset:1152
	ds_load_u8 v140, v172 offset:1024
	ds_load_u8 v141, v172 offset:1408
	ds_load_u8 v142, v172 offset:1280
	ds_load_u8 v147, v172 offset:640
	ds_load_u8 v148, v172 offset:512
	ds_load_u8 v149, v172 offset:896
	ds_load_u8 v150, v172 offset:768
	ds_load_u8 v159, v172 offset:128
	ds_load_u8 v160, v172
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v18, v172 offset:384
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v20, v172 offset:256
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v22, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v23, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v24, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v25, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v26, v32, v31, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v27, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v28, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v29, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v30, v142, v141, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v31, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v32, v150, v149, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v160, v159, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v138, v19, 16, v17
	v_lshl_or_b32 v137, v22, 16, v21
	v_lshl_or_b32 v136, v24, 16, v23
	v_lshl_or_b32 v135, v26, 16, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v162, v28, 16, v27
	v_lshl_or_b32 v161, v30, 16, v29
	v_lshl_or_b32 v160, v32, 16, v31
	v_lshl_or_b32 v159, v18, 16, v139
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[135:138], v[143:146], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[135:138], v[151:154], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[135:142], v[159:162], v[143:146], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[159:162], v[151:154], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v171 offset:2304
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v172 offset:3712
	ds_load_u8 v151, v172 offset:3584
	ds_load_u8 v152, v172 offset:3968
	ds_load_u8 v153, v172 offset:3840
	ds_load_u8 v154, v172 offset:3200
	ds_load_u8 v159, v172 offset:3072
	ds_load_u8 v160, v172 offset:3456
	ds_load_u8 v161, v172 offset:3328
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v4, v170, v169, 0xc0c0004
	v_perm_b32 v5, v174, v173, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v170, v172 offset:2944
	ds_load_u8 v173, v172 offset:2816
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v178, v171 offset:2560
	ds_load_u8 v179, v171 offset:2944
	ds_load_u8 v181, v171 offset:2176
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v164, s39, v133
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v3, v168, v167, 0xc0c0004
	v_perm_b32 v6, v176, v175, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v174, v172 offset:2176
	ds_load_u8 v176, v172 offset:2432
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s33, s31, s30
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v151, v151, v2, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v4, v4, 16, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v3, v6, 16, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v153, v159, v154, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[5:8], v163 offset:1024
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v159, v161, v160, 0xc0c0004
	v_lshl_or_b32 v154, v152, 16, v151
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s31, s33, s14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s38, s38, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v152, v173, v170, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v170, v171 offset:5120
	ds_load_u8 v180, v171 offset:2816
	ds_load_u8 v183, v171 offset:2432
	ds_load_u8 v182, v171 offset:2048
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v162, v178, v177, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v153, v159, 16, v153
	ds_load_u8 v177, v172 offset:2304
	ds_load_u8 v175, v172 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v167, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v1, v183, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v183, v172 offset:5120
	ds_load_u8 v168, v172 offset:2560
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v169, v182, v181, 0xc0c0004
	v_lshl_or_b32 v2, v167, 16, v162
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[159:162], v164
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v163, v172 offset:2688
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v173, v177, v176, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v167, v171 offset:6016
	v_lshl_or_b32 v1, v1, 16, v169
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[1:4], v[5:8], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[1:4], v[155:158], v[17:24] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[1:4], v164 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v164, v171 offset:5760
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v151, v168, v163, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v163, v171 offset:5632
	ds_load_u8 v168, v171 offset:5888
	ds_load_u8 v169, v171 offset:5248
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v152, v152, 16, v151
	v_perm_b32 v151, v175, v174, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v174, v171 offset:5504
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v151, v173, 16, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v173, v171 offset:5376
	ds_load_u8 v175, v171 offset:4736
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[143:150], v[151:154], v[5:8], v[143:150] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v171 offset:4096
	ds_load_u8 v176, v171 offset:4480
	ds_load_u8 v177, v171 offset:4352
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v178, v172 offset:5760
	ds_load_u8 v179, v172 offset:5632
	ds_load_u8 v180, v172 offset:6016
	ds_load_u8 v181, v172 offset:5888
	ds_load_u8 v182, v172 offset:5248
	v_wmma_i32_16x16x16_iu8 v[135:142], v[151:154], v[155:158], v[135:142] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v155, v171 offset:4608
	ds_load_u8 v156, v171 offset:4992
	ds_load_u8 v157, v171 offset:4864
	ds_load_u8 v158, v171 offset:4224
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v7, v168, v167, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v167, v172 offset:5504
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v151, v170, v169, 0xc0c0004
	v_perm_b32 v6, v163, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v8, v7, 16, v6
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v152, v173, v174, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v168, v172 offset:5376
	ds_load_u8 v173, v172 offset:4736
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v169, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v170, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v174, v183, v182, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v7, v152, 16, v151
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v6, v155, v175, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v151, v157, v156, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v170, v170, 16, v169
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v5, v5, v158, 0xc0c0004
	v_perm_b32 v155, v177, v176, 0xc0c0004
	v_lshl_or_b32 v6, v151, 16, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v5, v155, 16, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[5:8], v[159:162], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[5:8], v[1:4], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v169, v167, 16, v174
	ds_load_u8 v167, v172 offset:4608
	ds_load_u8 v168, v172 offset:4992
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v167, v167, v173, 0xc0c0004
	ds_load_u8 v173, v172 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v173, v168, 0xc0c0004
	ds_load_u8 v173, v172 offset:4224
	v_lshl_or_b32 v168, v168, 16, v167
	ds_load_u8 v167, v172 offset:4096
	ds_load_u8 v174, v172 offset:4480
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v167, v167, v173, 0xc0c0004
	ds_load_u8 v173, v172 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v173, v174, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v174, v171 offset:7808
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v167, v173, 16, v167
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v173, v171 offset:7680
	ds_load_u8 v175, v171 offset:8064
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[135:142], v[167:170], v[159:162], v[135:142] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v159, v171 offset:7936
	ds_load_u8 v160, v171 offset:7296
	ds_load_u8 v161, v171 offset:7168
	ds_load_u8 v162, v171 offset:7552
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[143:150], v[167:170], v[1:4], v[143:150] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v171 offset:7424
	ds_load_u8 v2, v171 offset:6784
	ds_load_u8 v167, v171 offset:6656
	ds_load_u8 v168, v171 offset:7040
	ds_load_u8 v169, v171 offset:6912
	ds_load_u8 v170, v171 offset:6272
	ds_load_u8 v176, v171 offset:6144
	ds_load_u8 v177, v171 offset:6528
	ds_load_u8 v171, v171 offset:6400
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v173, v174, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v173, v172 offset:7808
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v2, v167, v2, 0xc0c0004
	v_perm_b32 v4, v159, v175, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v159, v172 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v160, v161, v160, 0xc0c0004
	v_perm_b32 v1, v1, v162, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v161, v172 offset:7296
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v4, v4, 16, v3
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v162, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v168, v176, v170, 0xc0c0004
	v_lshl_or_b32 v3, v1, 16, v160
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v172 offset:8064
	ds_load_u8 v160, v172 offset:7936
	ds_load_u8 v169, v172 offset:7552
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v170, v171, v177, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v171, v172 offset:7424
	ds_load_u8 v167, v172 offset:7168
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v175, s39, v134
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v2, v162, 16, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v159, v159, v173, 0xc0c0004
	ds_load_u8 v173, v172 offset:6784
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v160, v160, v1, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v169, v171, v169, 0xc0c0004
	ds_load_u8 v171, v172 offset:6912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v161, v167, v161, 0xc0c0004
	ds_load_u8 v167, v172 offset:7040
	ds_load_u8 v1, v172 offset:6656
	v_lshl_or_b32 v162, v160, 16, v159
	v_lshl_or_b32 v161, v169, 16, v161
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v1, v173, 0xc0c0004
	ds_load_u8 v1, v172 offset:6272
	v_perm_b32 v171, v171, v167, 0xc0c0004
	ds_load_u8 v167, v172 offset:6144
	v_lshl_or_b32 v160, v171, 16, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v167, v1, 0xc0c0004
	ds_load_u8 v1, v172 offset:6528
	ds_load_u8 v167, v172 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v167, v1, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v1, v170, 16, v168
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[167:170], v175
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v159, v172, 16, v174
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v175 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[1:4], v[167:170], v[17:24] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[135:142], v[159:162], v[167:170], v[135:142] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[1:4], v[171:174], v[25:32] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[143:150], v[159:162], v[171:174], v[143:150] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v17
	v_cvt_f32_i32_e32 v2, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v135
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v165, s31, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v166, s31, v13
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s31, s31, s15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v163, s31, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v164, s31, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v64, v64, v26
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[151:154], v165, s[24:27], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v59, v59, v27
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[155:158], v166, s[24:27], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v60, v60, v28
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	buffer_load_b128 v[5:8], v163, s[24:27], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v35, v35, v31
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	buffer_load_b128 v[163:166], v164, s[24:27], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s38, 2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v136
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s38, s38, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v17, v19
	v_cvt_f32_i32_e32 v18, v20
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v19, v137
	v_cvt_f32_i32_e32 v20, v138
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v135, v139
	v_cvt_f32_i32_e32 v136, v140
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v137, v141
	v_cvt_f32_i32_e32 v138, v142
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v139, v143
	v_cvt_f32_i32_e32 v140, v144
	v_cvt_f32_i32_e32 v141, v145
	v_cvt_f32_i32_e32 v142, v146
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v143, v147
	v_cvt_f32_i32_e32 v144, v148
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v145, v149
	v_cvt_f32_i32_e32 v146, v150
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s31, s38, 11
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s33, s38, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s31, s31, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s33, s33, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v48, v48, v30 :: v_dual_add_nc_u32 v175, s31, v15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v38, v38, v138 :: v_dual_add_nc_u32 v167, s33, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v58, v58, v2 :: v_dual_add_f32 v57, v57, v1
	v_dual_add_f32 v52, v52, v18 :: v_dual_add_f32 v51, v51, v17
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v54, v54, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v42, v42, v22 :: v_dual_add_f32 v41, v41, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v50, v50, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v34, v34, v24 :: v_dual_add_f32 v33, v33, v23
	v_dual_add_f32 v63, v63, v25 :: v_dual_add_f32 v44, v44, v136
	v_dual_add_f32 v47, v47, v29 :: v_dual_add_f32 v62, v62, v140
	v_dual_add_f32 v36, v36, v32 :: v_dual_add_f32 v53, v53, v3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v56, v56, v142 :: v_dual_add_f32 v49, v49, v19
	v_dual_add_f32 v46, v46, v144 :: v_dual_add_f32 v43, v43, v135
	v_dual_add_f32 v40, v40, v146 :: v_dual_add_f32 v37, v37, v137
	v_add_f32_e32 v61, v61, v139
	v_add_f32_e32 v55, v55, v141
	v_add_f32_e32 v45, v45, v143
	v_add_f32_e32 v39, v39, v145
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s39, s37, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s36, s31, 0x8000
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s31, s33, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s37, s35
	s_mov_b32 s37, s39
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v175, v[9:10] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v167, v[151:154]
	s_waitcnt vmcnt(2)
	ds_store_b128 v167, v[155:158] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v167, v[5:8] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v167, v[163:166] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v135, v14
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v53, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s36, 0, 0x8800
	s_add_i32 s33, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	v_mov_b32_e32 v54, v53
	v_mov_b32_e32 v43, v53
	v_mov_b32_e32 v41, v53
	v_mov_b32_e32 v49, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v51, v53 :: v_dual_mov_b32 v52, v54
	v_dual_mov_b32 v58, v54 :: v_dual_mov_b32 v57, v53
	v_mov_b32_e32 v44, v54
	v_mov_b32_e32 v42, v54
	v_dual_mov_b32 v50, v54 :: v_dual_mov_b32 v37, v53
	v_dual_mov_b32 v38, v54 :: v_dual_mov_b32 v33, v53
	v_mov_b32_e32 v34, v54
	v_dual_mov_b32 v62, v54 :: v_dual_mov_b32 v61, v53
	v_dual_mov_b32 v64, v54 :: v_dual_mov_b32 v63, v53
	v_dual_mov_b32 v45, v53 :: v_dual_mov_b32 v46, v54
	v_dual_mov_b32 v47, v53 :: v_dual_mov_b32 v48, v54
	v_dual_mov_b32 v56, v54 :: v_dual_mov_b32 v55, v53
	v_dual_mov_b32 v60, v54 :: v_dual_mov_b32 v59, v53
	v_dual_mov_b32 v39, v53 :: v_dual_mov_b32 v40, v54
	v_dual_mov_b32 v35, v53 :: v_dual_mov_b32 v36, v54
	s_add_i32 s31, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s0, v131
	v_add_nc_u32_e32 v2, s0, v132
	v_add_nc_u32_e32 v3, s0, v133
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[5:8], v1 offset:1024
	v_add_nc_u32_e32 v1, s0, v134
	ds_load_b128 v[25:28], v2
	ds_load_b128 v[13:16], v2 offset:1024
	ds_load_b128 v[21:24], v3
	ds_load_b128 v[9:12], v3 offset:1024
	ds_load_b128 v[17:20], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v1 offset:1024
	v_cndmask_b32_e64 v136, 0, 1, s3
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v136
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v146, s29, v92
	v_add_nc_u32_e32 v147, s29, v90
	v_add_nc_u32_e32 v144, s29, v96
	v_add_nc_u32_e32 v150, s29, v84
	v_add_nc_u32_e32 v145, s29, v94
	v_add_nc_u32_e32 v148, s29, v88
	v_add_nc_u32_e32 v149, s29, v86
	v_add_nc_u32_e32 v151, s29, v82
	v_add_nc_u32_e32 v152, s29, v80
	v_add_nc_u32_e32 v153, s29, v78
	v_add_nc_u32_e32 v154, s29, v76
	v_add_nc_u32_e32 v155, s29, v73
	v_add_nc_u32_e32 v156, s29, v72
	v_add_nc_u32_e32 v157, s29, v70
	v_add_nc_u32_e32 v158, s29, v68
	v_add_nc_u32_e32 v159, s29, v135
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v146, v146
	ds_load_u8 v147, v147
	ds_load_u8 v144, v144
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v148, v148
	ds_load_u8 v149, v149
	ds_load_u8 v145, v145
	ds_load_u8 v154, v154
	ds_load_u8 v155, v155
	ds_load_u8 v152, v152
	ds_load_u8 v158, v158
	ds_load_u8 v159, v159
	ds_load_u8 v156, v156
	ds_load_u8 v157, v157
	ds_load_u8 v153, v153
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v186, s29, v95
	v_add_nc_u32_e32 v187, s29, v93
	v_add_nc_u32_e32 v184, s29, v98
	v_add_nc_u32_e32 v190, s29, v87
	v_add_nc_u32_e32 v185, s29, v97
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v188, s29, v91
	v_add_nc_u32_e32 v189, s29, v89
	v_add_nc_u32_e32 v191, s29, v85
	v_add_nc_u32_e32 v192, s29, v83
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v147, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	v_perm_b32 v145, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v148, v155, v154, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v150, s29, v71
	v_add_nc_u32_e32 v151, s29, v69
	v_add_nc_u32_e32 v193, s29, v81
	v_add_nc_u32_e32 v194, s29, v79
	v_add_nc_u32_e32 v195, s29, v77
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v153, v152, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v196, s29, v75
	v_add_nc_u32_e32 v197, s29, v74
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v155, v144, 16, v146
	v_lshl_or_b32 v154, v147, 16, v145
	v_lshl_or_b32 v153, v149, 16, v148
	v_perm_b32 v144, v159, v158, 0xc0c0004
	v_perm_b32 v145, v157, v156, 0xc0c0004
	ds_load_u8 v146, v186
	ds_load_u8 v147, v187
	ds_load_u8 v148, v184
	ds_load_u8 v149, v190
	ds_load_u8 v156, v191
	ds_load_u8 v157, v188
	ds_load_u8 v158, v189
	ds_load_u8 v159, v185
	ds_load_u8 v184, v194
	ds_load_u8 v185, v195
	ds_load_u8 v186, v192
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v187, v196
	ds_load_u8 v188, v197
	ds_load_u8 v189, v193
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v138, s29, v112
	v_add_nc_u32_e32 v139, s29, v111
	v_add_nc_u32_e32 v136, s29, v114
	v_add_nc_u32_e32 v142, s29, v108
	v_add_nc_u32_e32 v143, s29, v107
	v_add_nc_u32_e32 v137, s29, v113
	v_add_nc_u32_e32 v140, s29, v110
	v_add_nc_u32_e32 v141, s29, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v190, v138
	ds_load_u8 v191, v139
	ds_load_u8 v192, v136
	ds_load_u8 v193, v142
	ds_load_u8 v194, v143
	ds_load_u8 v195, v140
	ds_load_u8 v196, v141
	ds_load_u8 v197, v137
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v178, s29, v104
	v_add_nc_u32_e32 v179, s29, v103
	v_add_nc_u32_e32 v176, s29, v106
	v_add_nc_u32_e32 v182, s29, v100
	s_mov_b32 s4, 0
	v_add_nc_u32_e32 v177, s29, v105
	v_add_nc_u32_e32 v180, s29, v102
	v_add_nc_u32_e32 v181, s29, v101
	v_add_nc_u32_e32 v183, s29, v99
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v162, s29, v128
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v156, v156, v149, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v185, v189, v186, 0xc0c0004
	ds_load_u8 v178, v178
	ds_load_u8 v179, v179
	ds_load_u8 v176, v176
	ds_load_u8 v182, v182
	ds_load_u8 v183, v183
	ds_load_u8 v180, v180
	ds_load_u8 v181, v181
	ds_load_u8 v177, v177
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v163, s29, v127
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v143, s11 :: v_dual_add_nc_u32 v160, s29, v130
	v_dual_mov_b32 v137, s5 :: v_dual_add_nc_u32 v166, s29, v124
	v_dual_mov_b32 v139, s7 :: v_dual_add_nc_u32 v164, s29, v126
	v_dual_mov_b32 v138, s6 :: v_dual_add_nc_u32 v165, s29, v125
	v_dual_mov_b32 v136, s4 :: v_dual_add_nc_u32 v167, s29, v123
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v168, s29, v122
	v_add_nc_u32_e32 v169, s29, v121
	v_add_nc_u32_e32 v170, s29, v120
	v_add_nc_u32_e32 v171, s29, v119
	v_add_nc_u32_e32 v172, s29, v118
	v_add_nc_u32_e32 v173, s29, v117
	v_add_nc_u32_e32 v174, s29, v116
	v_add_nc_u32_e32 v175, s29, v115
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v142, s10 :: v_dual_add_nc_u32 v161, s29, v129
	v_dual_mov_b32 v141, s9 :: v_dual_mov_b32 v140, s8
	v_perm_b32 v187, v188, v187, 0xc0c0004
	v_lshl_or_b32 v158, v157, 16, v156
	v_lshl_or_b32 v157, v185, 16, v184
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v184, v191, v190, 0xc0c0004
	ds_load_u8 v188, v162
	ds_load_u8 v189, v163
	ds_load_u8 v190, v160
	ds_load_u8 v166, v166
	ds_load_u8 v167, v167
	ds_load_u8 v164, v164
	ds_load_u8 v165, v165
	ds_load_u8 v191, v161
	ds_load_u8 v170, v170
	ds_load_u8 v171, v171
	ds_load_u8 v168, v168
	ds_load_u8 v174, v174
	ds_load_u8 v175, v175
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	ds_load_u8 v169, v169
	v_lshl_or_b32 v152, v145, 16, v144
	v_perm_b32 v198, v147, v146, 0xc0c0004
	v_perm_b32 v159, v159, v148, 0xc0c0004
	v_perm_b32 v186, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v185, v197, v192, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[144:151], v[152:155], v[29:32], v[136:143] neg_lo:[1,1,0]
	v_lshl_or_b32 v159, v159, 16, v198
	v_lshl_or_b32 v156, v187, 16, v186
	v_perm_b32 v186, v194, v193, 0xc0c0004
	v_perm_b32 v187, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v160, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v161, v177, v176, 0xc0c0004
	v_perm_b32 v176, v183, v182, 0xc0c0004
	v_perm_b32 v177, v181, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[136:143], v[152:155], v[5:8], v[136:143] neg_lo:[1,1,0]
	v_lshl_or_b32 v163, v185, 16, v184
	v_lshl_or_b32 v162, v187, 16, v186
	v_lshl_or_b32 v161, v161, 16, v160
	v_lshl_or_b32 v160, v177, 16, v176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v176, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v177, v191, v190, 0xc0c0004
	v_perm_b32 v166, v167, v166, 0xc0c0004
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v165, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_perm_b32 v169, v175, v174, 0xc0c0004
	v_perm_b32 v170, v173, v172, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[136:143], v[156:159], v[13:16], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[156:159], v[25:28], v[144:151] neg_lo:[1,1,0]
	v_lshl_or_b32 v167, v177, 16, v176
	v_lshl_or_b32 v166, v164, 16, v166
	v_lshl_or_b32 v165, v168, 16, v165
	v_lshl_or_b32 v164, v170, 16, v169
	v_wmma_i32_16x16x16_iu8 v[136:143], v[160:163], v[9:12], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[160:163], v[21:24], v[144:151] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[136:143], v[164:167], v[1:4], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[164:167], v[17:20], v[144:151] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v147, v147
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v138, v138
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v64, v64, v137
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v137, v141
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v52, v52, v147
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v147, v149
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v151
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v51, v51, v146
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v146, v150
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v63, v63, v136 :: v_dual_add_f32 v60, v60, v139
	v_add_f32_e32 v59, v59, v138
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v136, v140
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v48, v48, v137
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v137, v143
	v_cvt_f32_i32_e32 v138, v142
	v_cvt_f32_i32_e32 v139, v145
	v_cvt_f32_i32_e32 v140, v144
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v42, v42, v147 :: v_dual_add_f32 v41, v41, v148
	v_dual_add_f32 v34, v34, v149 :: v_dual_add_f32 v33, v33, v146
	v_dual_add_f32 v47, v47, v136 :: v_dual_add_f32 v36, v36, v137
	v_dual_add_f32 v35, v35, v138 :: v_dual_add_f32 v58, v58, v139
	v_add_f32_e32 v57, v57, v140
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v146, s1, v92
	v_add_nc_u32_e32 v147, s1, v90
	v_add_nc_u32_e32 v144, s1, v96
	v_add_nc_u32_e32 v150, s1, v84
	v_add_nc_u32_e32 v145, s1, v94
	v_add_nc_u32_e32 v148, s1, v88
	v_add_nc_u32_e32 v149, s1, v86
	v_add_nc_u32_e32 v151, s1, v82
	v_add_nc_u32_e32 v152, s1, v80
	v_add_nc_u32_e32 v153, s1, v78
	v_add_nc_u32_e32 v154, s1, v76
	v_add_nc_u32_e32 v155, s1, v73
	v_add_nc_u32_e32 v180, s1, v72
	v_add_nc_u32_e32 v181, s1, v70
	v_add_nc_u32_e32 v182, s1, v68
	v_add_nc_u32_e32 v183, s1, v135
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v146, v146
	ds_load_u8 v147, v147
	ds_load_u8 v144, v144
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v148, v148
	ds_load_u8 v149, v149
	ds_load_u8 v145, v145
	ds_load_u8 v154, v154
	ds_load_u8 v155, v155
	ds_load_u8 v152, v152
	ds_load_u8 v182, v182
	ds_load_u8 v183, v183
	ds_load_u8 v180, v180
	ds_load_u8 v181, v181
	ds_load_u8 v153, v153
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v186, s1, v95
	v_add_nc_u32_e32 v187, s1, v93
	v_add_nc_u32_e32 v184, s1, v98
	v_add_nc_u32_e32 v190, s1, v87
	v_add_nc_u32_e32 v185, s1, v97
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v188, s1, v91
	v_add_nc_u32_e32 v189, s1, v89
	v_add_nc_u32_e32 v191, s1, v85
	v_add_nc_u32_e32 v138, s1, v112
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v147, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	v_perm_b32 v145, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v148, v155, v154, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v150, s1, v71
	v_add_nc_u32_e32 v151, s1, v69
	v_add_nc_u32_e32 v174, s1, v104
	v_add_nc_u32_e32 v192, s1, v83
	v_add_nc_u32_e32 v193, s1, v81
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v153, v152, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v194, s1, v79
	v_add_nc_u32_e32 v195, s1, v77
	v_add_nc_u32_e32 v196, s1, v75
	v_add_nc_u32_e32 v197, s1, v74
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v155, v144, 16, v146
	v_lshl_or_b32 v154, v147, 16, v145
	v_lshl_or_b32 v153, v149, 16, v148
	v_perm_b32 v144, v183, v182, 0xc0c0004
	v_perm_b32 v145, v181, v180, 0xc0c0004
	ds_load_u8 v146, v186
	ds_load_u8 v147, v187
	ds_load_u8 v148, v184
	ds_load_u8 v149, v190
	ds_load_u8 v180, v191
	ds_load_u8 v181, v188
	ds_load_u8 v182, v189
	ds_load_u8 v183, v185
	ds_load_u8 v184, v194
	ds_load_u8 v185, v195
	ds_load_u8 v186, v192
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v187, v196
	ds_load_u8 v188, v197
	ds_load_u8 v189, v193
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v139, s1, v111
	v_add_nc_u32_e32 v175, s1, v103
	v_add_nc_u32_e32 v136, s1, v114
	v_add_nc_u32_e32 v172, s1, v106
	v_add_nc_u32_e32 v142, s1, v108
	v_add_nc_u32_e32 v178, s1, v100
	v_add_nc_u32_e32 v143, s1, v107
	v_add_nc_u32_e32 v173, s1, v105
	v_add_nc_u32_e32 v176, s1, v102
	v_add_nc_u32_e32 v177, s1, v101
	v_add_nc_u32_e32 v179, s1, v99
	v_add_nc_u32_e32 v137, s1, v113
	v_add_nc_u32_e32 v140, s1, v110
	v_add_nc_u32_e32 v141, s1, v109
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v190, v138
	ds_load_u8 v191, v139
	ds_load_u8 v192, v136
	ds_load_u8 v193, v142
	ds_load_u8 v194, v143
	ds_load_u8 v195, v140
	ds_load_u8 v196, v141
	ds_load_u8 v197, v137
	ds_load_u8 v174, v174
	ds_load_u8 v175, v175
	ds_load_u8 v172, v172
	ds_load_u8 v178, v178
	ds_load_u8 v179, v179
	ds_load_u8 v176, v176
	ds_load_u8 v177, v177
	ds_load_u8 v173, v173
	s_mov_b32 s4, 0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v164, s1, v122
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v158, s1, v128
	v_add_nc_u32_e32 v159, s1, v127
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v143, s11 :: v_dual_add_nc_u32 v156, s1, v130
	v_dual_mov_b32 v137, s5 :: v_dual_add_nc_u32 v162, s1, v124
	v_dual_mov_b32 v142, s10 :: v_dual_add_nc_u32 v157, s1, v129
	v_dual_mov_b32 v139, s7 :: v_dual_add_nc_u32 v160, s1, v126
	v_dual_mov_b32 v138, s6 :: v_dual_add_nc_u32 v161, s1, v125
	v_dual_mov_b32 v136, s4 :: v_dual_add_nc_u32 v163, s1, v123
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v165, s1, v121
	v_add_nc_u32_e32 v166, s1, v120
	v_add_nc_u32_e32 v167, s1, v119
	v_add_nc_u32_e32 v168, s1, v118
	v_add_nc_u32_e32 v169, s1, v117
	v_add_nc_u32_e32 v170, s1, v116
	v_add_nc_u32_e32 v171, s1, v115
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v141, s9 :: v_dual_mov_b32 v140, s8
	ds_load_u8 v158, v158
	ds_load_u8 v159, v159
	ds_load_u8 v156, v156
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	ds_load_u8 v160, v160
	ds_load_u8 v161, v161
	ds_load_u8 v157, v157
	ds_load_u8 v166, v166
	ds_load_u8 v167, v167
	ds_load_u8 v164, v164
	ds_load_u8 v170, v170
	ds_load_u8 v171, v171
	ds_load_u8 v168, v168
	ds_load_u8 v169, v169
	ds_load_u8 v165, v165
	v_lshl_or_b32 v152, v145, 16, v144
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v198, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v183, v183, v148, 0xc0c0004
	v_perm_b32 v180, v180, v149, 0xc0c0004
	v_perm_b32 v181, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v182, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v184, v189, v186, 0xc0c0004
	v_perm_b32 v185, v151, v150, 0xc0c0004
	v_perm_b32 v186, v188, v187, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[144:151], v[152:155], v[29:32], v[136:143] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v183, 16, v198
	v_lshl_or_b32 v31, v181, 16, v180
	v_lshl_or_b32 v30, v184, 16, v182
	v_lshl_or_b32 v29, v186, 16, v185
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v180, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v181, v197, v192, 0xc0c0004
	v_perm_b32 v182, v194, v193, 0xc0c0004
	v_perm_b32 v183, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	v_perm_b32 v173, v179, v178, 0xc0c0004
	v_perm_b32 v175, v177, v176, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[144:151], v[29:32], v[25:28], v[144:151] neg_lo:[1,1,0]
	v_lshl_or_b32 v28, v181, 16, v180
	v_lshl_or_b32 v27, v183, 16, v182
	v_lshl_or_b32 v26, v172, 16, v174
	v_lshl_or_b32 v25, v175, 16, v173
	v_wmma_i32_16x16x16_iu8 v[136:143], v[152:155], v[5:8], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[144:151], v[25:28], v[21:24], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v21, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v22, v157, v156, 0xc0c0004
	v_perm_b32 v23, v163, v162, 0xc0c0004
	v_perm_b32 v156, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v157, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v165, v164, 0xc0c0004
	v_perm_b32 v159, v171, v170, 0xc0c0004
	v_perm_b32 v160, v169, v168, 0xc0c0004
	v_lshl_or_b32 v24, v22, 16, v21
	v_lshl_or_b32 v23, v156, 16, v23
	v_lshl_or_b32 v22, v158, 16, v157
	v_wmma_i32_16x16x16_iu8 v[136:143], v[29:32], v[13:16], v[136:143] neg_lo:[1,1,0]
	v_lshl_or_b32 v21, v160, 16, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[136:143], v[25:28], v[9:12], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[21:24], v[17:20], v[144:151] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[136:143], v[21:24], v[1:4], v[136:143] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v149
	v_cvt_f32_i32_e32 v3, v148
	v_cvt_f32_i32_e32 v4, v151
	v_cvt_f32_i32_e32 v5, v147
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v49, v49, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v150
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v44, v44, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v137
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v43, v43, v3 :: v_dual_add_f32 v38, v38, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v37, v37, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v136
	v_cvt_f32_i32_e32 v3, v139
	v_cvt_f32_i32_e32 v4, v138
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v62, v62, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v141
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v50, v50, v5
	v_dual_add_f32 v61, v61, v1 :: v_dual_add_f32 v56, v56, v3
	v_add_f32_e32 v55, v55, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v140
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v46, v46, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v143
	v_cvt_f32_i32_e32 v3, v142
	v_cvt_f32_i32_e32 v4, v145
	v_cvt_f32_i32_e32 v5, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v45, v45, v1 :: v_dual_add_f32 v40, v40, v2
	v_dual_add_f32 v39, v39, v3 :: v_dual_add_f32 v54, v54, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v53, v53, v5
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v1, s36, v131
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v5, s36, v133
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v2, s36, v132
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v6, s36, v134
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[17:20], v1 offset:1024
	ds_load_b128 v[21:24], v2
	ds_load_b128 v[1:4], v2 offset:1024
	ds_load_b128 v[25:28], v5
	ds_load_b128 v[9:12], v5 offset:1024
	ds_load_b128 v[13:16], v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[5:8], v6 offset:1024
	v_cndmask_b32_e64 v132, 0, 1, s2
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_mov_b32_e32 v141, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v132
	v_mov_b32_e32 v132, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v147, 0
	v_mov_b32_e32 v144, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s33, v92
	v_add_nc_u32_e32 v149, s33, v90
	v_add_nc_u32_e32 v137, s33, v96
	v_add_nc_u32_e32 v152, s33, v84
	v_add_nc_u32_e32 v138, s33, v94
	v_add_nc_u32_e32 v150, s33, v88
	v_add_nc_u32_e32 v151, s33, v86
	v_add_nc_u32_e32 v153, s33, v82
	v_add_nc_u32_e32 v154, s33, v80
	v_add_nc_u32_e32 v155, s33, v78
	v_add_nc_u32_e32 v156, s33, v76
	v_add_nc_u32_e32 v157, s33, v73
	v_add_nc_u32_e32 v158, s33, v72
	v_add_nc_u32_e32 v159, s33, v70
	v_add_nc_u32_e32 v160, s33, v68
	v_add_nc_u32_e32 v161, s33, v135
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	ds_load_u8 v149, v149
	ds_load_u8 v137, v137
	ds_load_u8 v152, v152
	ds_load_u8 v153, v153
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v138, v138
	ds_load_u8 v156, v156
	ds_load_u8 v157, v157
	ds_load_u8 v154, v154
	ds_load_u8 v160, v160
	ds_load_u8 v161, v161
	ds_load_u8 v158, v158
	ds_load_u8 v159, v159
	ds_load_u8 v155, v155
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v183, s33, v95
	v_add_nc_u32_e32 v184, s33, v93
	v_add_nc_u32_e32 v181, s33, v98
	v_add_nc_u32_e32 v187, s33, v87
	v_add_nc_u32_e32 v182, s33, v97
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v139, v149, v139, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v185, s33, v91
	v_add_nc_u32_e32 v188, s33, v85
	v_add_nc_u32_e32 v143, s33, v112
	v_add_nc_u32_e32 v186, s33, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v149, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	v_perm_b32 v138, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v150, v157, v156, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s33, v71
	v_add_nc_u32_e32 v153, s33, v69
	v_add_nc_u32_e32 v189, s33, v83
	v_add_nc_u32_e32 v190, s33, v81
	v_add_nc_u32_e32 v191, s33, v79
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v155, v154, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v192, s33, v77
	v_add_nc_u32_e32 v193, s33, v75
	v_add_nc_u32_e32 v194, s33, v74
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v139, v137, 16, v139
	v_lshl_or_b32 v138, v149, 16, v138
	v_lshl_or_b32 v137, v151, 16, v150
	v_perm_b32 v149, v161, v160, 0xc0c0004
	v_perm_b32 v150, v159, v158, 0xc0c0004
	ds_load_u8 v151, v183
	ds_load_u8 v154, v184
	ds_load_u8 v155, v181
	ds_load_u8 v156, v187
	ds_load_u8 v157, v188
	ds_load_u8 v158, v185
	ds_load_u8 v159, v186
	ds_load_u8 v160, v182
	ds_load_u8 v161, v191
	ds_load_u8 v181, v192
	ds_load_u8 v182, v189
	ds_load_u8 v152, v152
	ds_load_u8 v153, v153
	ds_load_u8 v183, v193
	ds_load_u8 v184, v194
	ds_load_u8 v185, v190
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v144, s33, v111
	v_add_nc_u32_e32 v136, s33, v114
	v_add_nc_u32_e32 v147, s33, v108
	v_add_nc_u32_e32 v148, s33, v107
	v_add_nc_u32_e32 v142, s33, v113
	v_add_nc_u32_e32 v145, s33, v110
	v_add_nc_u32_e32 v146, s33, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v186, v143
	ds_load_u8 v187, v144
	ds_load_u8 v188, v136
	ds_load_u8 v189, v147
	ds_load_u8 v190, v148
	ds_load_u8 v191, v145
	ds_load_u8 v192, v146
	ds_load_u8 v193, v142
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v175, s33, v104
	v_add_nc_u32_e32 v176, s33, v103
	v_add_nc_u32_e32 v173, s33, v106
	v_add_nc_u32_e32 v179, s33, v100
	s_mov_b32 s4, 0
	v_add_nc_u32_e32 v174, s33, v105
	v_add_nc_u32_e32 v177, s33, v102
	v_add_nc_u32_e32 v178, s33, v101
	v_add_nc_u32_e32 v180, s33, v99
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v134, s33, v128
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v194, v154, v151, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v160, v160, v155, 0xc0c0004
	v_perm_b32 v195, v157, v156, 0xc0c0004
	v_perm_b32 v158, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v159, v181, v161, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v181, v185, v182, 0xc0c0004
	v_perm_b32 v182, v153, v152, 0xc0c0004
	v_perm_b32 v183, v184, v183, 0xc0c0004
	ds_load_u8 v175, v175
	ds_load_u8 v176, v176
	ds_load_u8 v173, v173
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v177, v177
	ds_load_u8 v178, v178
	ds_load_u8 v174, v174
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s33, v127
	v_add_nc_u32_e32 v132, s33, v130
	v_add_nc_u32_e32 v163, s33, v124
	v_add_nc_u32_e32 v133, s33, v129
	v_add_nc_u32_e32 v141, s33, v126
	v_add_nc_u32_e32 v164, s33, v123
	v_add_nc_u32_e32 v166, s33, v121
	v_add_nc_u32_e32 v167, s33, v120
	v_add_nc_u32_e32 v168, s33, v119
	v_add_nc_u32_e32 v169, s33, v118
	v_add_nc_u32_e32 v170, s33, v117
	v_add_nc_u32_e32 v171, s33, v116
	v_add_nc_u32_e32 v172, s33, v115
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v136, v150, 16, v149
	v_dual_mov_b32 v149, s11 :: v_dual_add_nc_u32 v162, s33, v125
	v_mov_b32_e32 v143, s5
	v_dual_mov_b32 v142, s4 :: v_dual_add_nc_u32 v165, s33, v122
	v_dual_mov_b32 v148, s10 :: v_dual_mov_b32 v147, s9
	v_dual_mov_b32 v146, s8 :: v_dual_mov_b32 v145, s7
	v_mov_b32_e32 v144, s6
	v_lshl_or_b32 v161, v160, 16, v194
	v_lshl_or_b32 v160, v158, 16, v195
	v_lshl_or_b32 v159, v181, 16, v159
	v_lshl_or_b32 v158, v183, 16, v182
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v181, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v182, v193, v188, 0xc0c0004
	ds_load_u8 v134, v134
	ds_load_u8 v140, v140
	ds_load_u8 v132, v132
	ds_load_u8 v185, v163
	ds_load_u8 v186, v164
	ds_load_u8 v141, v141
	ds_load_u8 v187, v162
	ds_load_u8 v133, v133
	ds_load_u8 v167, v167
	ds_load_u8 v168, v168
	ds_load_u8 v188, v165
	ds_load_u8 v171, v171
	ds_load_u8 v172, v172
	ds_load_u8 v169, v169
	ds_load_u8 v170, v170
	ds_load_u8 v166, v166
	v_wmma_i32_16x16x16_iu8 v[150:157], v[136:139], v[29:32], v[142:149] neg_lo:[1,1,0]
	v_perm_b32 v183, v190, v189, 0xc0c0004
	v_perm_b32 v184, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v162, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v163, v174, v173, 0xc0c0004
	v_perm_b32 v173, v180, v179, 0xc0c0004
	v_perm_b32 v174, v178, v177, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[142:149], v[136:139], v[17:20], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[158:161], v[21:24], v[150:157] neg_lo:[1,1,0]
	v_lshl_or_b32 v165, v182, 16, v181
	v_lshl_or_b32 v164, v184, 16, v183
	v_lshl_or_b32 v163, v163, 16, v162
	v_lshl_or_b32 v162, v174, 16, v173
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v134, v140, v134, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	v_perm_b32 v133, v186, v185, 0xc0c0004
	v_perm_b32 v140, v187, v141, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v141, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v166, v188, 0xc0c0004
	v_perm_b32 v167, v172, v171, 0xc0c0004
	v_perm_b32 v136, v170, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[142:149], v[158:161], v[1:4], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[162:165], v[25:28], v[150:157] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v132, 16, v134
	v_lshl_or_b32 v138, v140, 16, v133
	v_lshl_or_b32 v137, v166, 16, v141
	v_lshl_or_b32 v136, v136, 16, v167
	v_wmma_i32_16x16x16_iu8 v[142:149], v[162:165], v[9:12], v[142:149] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[150:157], v[136:139], v[13:16], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[136:139], v[5:8], v[142:149] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v133, v152
	v_cvt_f32_i32_e32 v137, v153
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v132, v154
	v_cvt_f32_i32_e32 v134, v155
	v_cvt_f32_i32_e32 v136, v156
	v_cvt_f32_i32_e32 v138, v157
	v_cvt_f32_i32_e32 v139, v142
	v_cvt_f32_i32_e32 v140, v143
	v_cvt_f32_i32_e32 v142, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v141, v146
	v_cvt_f32_i32_e32 v143, v147
	v_cvt_f32_i32_e32 v144, v148
	v_cvt_f32_i32_e32 v147, v149
	v_cvt_f32_i32_e32 v146, v150
	v_cvt_f32_i32_e32 v148, v151
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_mov_b32_e32 v163, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v92, s31, v92
	v_add_nc_u32_e32 v90, s31, v90
	v_add_nc_u32_e32 v96, s31, v96
	v_add_nc_u32_e32 v84, s31, v84
	v_add_nc_u32_e32 v94, s31, v94
	v_add_nc_u32_e32 v88, s31, v88
	v_add_nc_u32_e32 v86, s31, v86
	v_add_nc_u32_e32 v82, s31, v82
	v_add_nc_u32_e32 v80, s31, v80
	v_add_nc_u32_e32 v78, s31, v78
	v_add_nc_u32_e32 v76, s31, v76
	v_add_nc_u32_e32 v73, s31, v73
	v_add_nc_u32_e32 v72, s31, v72
	v_add_nc_u32_e32 v70, s31, v70
	v_add_nc_u32_e32 v68, s31, v68
	v_add_nc_u32_e32 v131, s31, v135
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v92, v92
	ds_load_u8 v90, v90
	ds_load_u8 v96, v96
	ds_load_u8 v84, v84
	ds_load_u8 v82, v82
	ds_load_u8 v88, v88
	ds_load_u8 v86, v86
	ds_load_u8 v94, v94
	ds_load_u8 v76, v76
	ds_load_u8 v73, v73
	ds_load_u8 v80, v80
	ds_load_u8 v68, v68
	ds_load_u8 v131, v131
	ds_load_u8 v72, v72
	ds_load_u8 v70, v70
	ds_load_u8 v78, v78
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v95, s31, v95
	v_add_nc_u32_e32 v135, s31, v87
	v_add_nc_u32_e32 v149, s31, v85
	v_add_nc_u32_e32 v93, s31, v93
	v_add_nc_u32_e32 v98, s31, v98
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v85, v90, v92, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v91, s31, v91
	v_add_nc_u32_e32 v89, s31, v89
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v82, v82, v84, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v83, s31, v83
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v84, v86, v88, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v87, v94, v96, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v81, s31, v81
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v73, v73, v76, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v79, s31, v79
	v_add_nc_u32_e32 v77, s31, v77
	v_add_nc_u32_e32 v97, s31, v97
	v_add_nc_u32_e32 v75, s31, v75
	v_add_nc_u32_e32 v74, s31, v74
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v78, v80, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v71, s31, v71
	v_add_nc_u32_e32 v69, s31, v69
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v87, v87, 16, v85
	v_lshl_or_b32 v86, v84, 16, v82
	v_lshl_or_b32 v85, v76, 16, v73
	ds_load_u8 v76, v95
	ds_load_u8 v78, v93
	ds_load_u8 v80, v98
	ds_load_u8 v82, v135
	ds_load_u8 v88, v149
	ds_load_u8 v90, v91
	ds_load_u8 v89, v89
	ds_load_u8 v91, v97
	ds_load_u8 v79, v79
	ds_load_u8 v77, v77
	ds_load_u8 v83, v83
	ds_load_u8 v92, v71
	ds_load_u8 v93, v69
	ds_load_u8 v94, v75
	ds_load_u8 v95, v74
	ds_load_u8 v81, v81
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v112, s31, v112
	v_add_nc_u32_e32 v111, s31, v111
	v_add_nc_u32_e32 v114, s31, v114
	v_add_nc_u32_e32 v108, s31, v108
	v_add_nc_u32_e32 v110, s31, v110
	v_add_nc_u32_e32 v109, s31, v109
	v_add_nc_u32_e32 v107, s31, v107
	v_add_nc_u32_e32 v113, s31, v113
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v96, v112
	ds_load_u8 v97, v111
	ds_load_u8 v98, v114
	ds_load_u8 v108, v108
	ds_load_u8 v107, v107
	ds_load_u8 v110, v110
	ds_load_u8 v109, v109
	ds_load_u8 v111, v113
	v_perm_b32 v68, v131, v68, 0xc0c0004
	v_perm_b32 v70, v70, v72, 0xc0c0004
	s_mov_b32 s4, 0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v104, s31, v104
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v130, s31, v130
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v84, v70, 16, v68
	v_mov_b32_e32 v75, s11
	v_dual_mov_b32 v74, s10 :: v_dual_add_nc_u32 v129, s31, v129
	v_dual_mov_b32 v73, s9 :: v_dual_add_nc_u32 v128, s31, v128
	v_dual_mov_b32 v72, s8 :: v_dual_add_nc_u32 v127, s31, v127
	v_dual_mov_b32 v71, s7 :: v_dual_add_nc_u32 v126, s31, v126
	v_dual_mov_b32 v70, s6 :: v_dual_add_nc_u32 v125, s31, v125
	v_dual_mov_b32 v69, s5 :: v_dual_add_nc_u32 v124, s31, v124
	v_dual_mov_b32 v68, s4 :: v_dual_add_nc_u32 v123, s31, v123
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v112, v78, v76, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v91, v91, v80, 0xc0c0004
	v_perm_b32 v88, v88, v82, 0xc0c0004
	v_perm_b32 v89, v89, v90, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v90, v77, v79, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v113, v81, v83, 0xc0c0004
	v_perm_b32 v92, v93, v92, 0xc0c0004
	v_perm_b32 v93, v95, v94, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v103, s31, v103
	v_add_nc_u32_e32 v106, s31, v106
	v_add_nc_u32_e32 v100, s31, v100
	v_add_nc_u32_e32 v99, s31, v99
	v_add_nc_u32_e32 v105, s31, v105
	v_add_nc_u32_e32 v102, s31, v102
	v_add_nc_u32_e32 v101, s31, v101
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[76:83], v[84:87], v[29:32], v[68:75] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v91, 16, v112
	v_lshl_or_b32 v31, v89, 16, v88
	v_lshl_or_b32 v30, v113, 16, v90
	v_lshl_or_b32 v29, v93, 16, v92
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v88, v97, v96, 0xc0c0004
	ds_load_u8 v90, v104
	ds_load_u8 v91, v103
	ds_load_u8 v92, v106
	ds_load_u8 v93, v100
	ds_load_u8 v94, v99
	ds_load_u8 v95, v102
	ds_load_u8 v96, v101
	ds_load_u8 v97, v105
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v115, s31, v115
	v_add_nc_u32_e32 v122, s31, v122
	v_add_nc_u32_e32 v121, s31, v121
	v_add_nc_u32_e32 v120, s31, v120
	v_add_nc_u32_e32 v119, s31, v119
	v_add_nc_u32_e32 v118, s31, v118
	v_add_nc_u32_e32 v117, s31, v117
	v_add_nc_u32_e32 v116, s31, v116
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v89, v111, v98, 0xc0c0004
	v_perm_b32 v98, v107, v108, 0xc0c0004
	v_perm_b32 v99, v109, v110, 0xc0c0004
	ds_load_u8 v100, v128
	ds_load_u8 v101, v127
	ds_load_u8 v102, v130
	ds_load_u8 v103, v124
	ds_load_u8 v104, v123
	ds_load_u8 v105, v126
	ds_load_u8 v106, v125
	ds_load_u8 v107, v129
	ds_load_u8 v108, v120
	ds_load_u8 v109, v119
	ds_load_u8 v110, v122
	ds_load_u8 v111, v116
	ds_load_u8 v112, v115
	ds_load_u8 v113, v118
	ds_load_u8 v114, v117
	ds_load_u8 v115, v121
	v_wmma_i32_16x16x16_iu8 v[76:83], v[29:32], v[21:24], v[76:83] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	v_lshl_or_b32 v24, v89, 16, v88
	v_lshl_or_b32 v23, v99, 16, v98
	v_wmma_i32_16x16x16_iu8 v[68:75], v[84:87], v[17:20], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v91, v97, v92, 0xc0c0004
	v_perm_b32 v92, v94, v93, 0xc0c0004
	v_perm_b32 v93, v96, v95, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[68:75], v[29:32], v[1:4], v[68:75] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v22, v91, 16, v90
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v88, v109, v108, 0xc0c0004
	v_lshl_or_b32 v21, v93, 16, v92
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v90, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v114, v113, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[76:83], v[21:24], v[25:28], v[76:83] neg_lo:[1,1,0]
	v_perm_b32 v25, v101, v100, 0xc0c0004
	v_perm_b32 v26, v107, v102, 0xc0c0004
	v_perm_b32 v27, v104, v103, 0xc0c0004
	v_perm_b32 v28, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v115, v110, 0xc0c0004
	v_lshl_or_b32 v17, v17, 16, v90
	v_lshl_or_b32 v20, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[68:75], v[21:24], v[9:12], v[68:75] neg_lo:[1,1,0]
	v_lshl_or_b32 v19, v28, 16, v27
	v_lshl_or_b32 v18, v89, 16, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[17:20], v[13:16], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[17:20], v[5:8], v[68:75] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v131, v76
	v_cvt_f32_i32_e32 v149, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v151, v78
	v_cvt_f32_i32_e32 v154, v79
	v_cvt_f32_i32_e32 v150, v80
	v_cvt_f32_i32_e32 v152, v81
	v_cvt_f32_i32_e32 v153, v82
	v_cvt_f32_i32_e32 v155, v83
	v_cvt_f32_i32_e32 v156, v68
	v_cvt_f32_i32_e32 v157, v69
	v_cvt_f32_i32_e32 v159, v70
	v_cvt_f32_i32_e32 v162, v71
	v_cvt_f32_i32_e32 v158, v72
	v_cvt_f32_i32_e32 v160, v73
	v_cvt_f32_i32_e32 v161, v74
	v_cvt_f32_i32_e32 v163, v75
.LBB0_16:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt lgkmcnt(4)
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v2, s28, v65
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s0, s14, s15
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s21, s17, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt lgkmcnt(2)
	v_and_or_b32 v12, v1, 1, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt lgkmcnt(1)
	v_dual_add_f32 v16, v58, v148 :: v_dual_lshlrev_b32 v1, 1, v2
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s20, s16
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v8, s14, v12
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 2, v12
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v7, 32, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v5, 4, v12
	v_or_b32_e32 v4, 6, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v15, v57, v146 :: v_dual_lshlrev_b32 v8, 1, v8
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v2, 10, v12
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v13, v1, s[20:23], 0 offen
	buffer_load_u16 v19, v7, s[20:23], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s21, s19, 0xffff
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v9, s0, v12, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_mov_b32 s20, s18
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v3, 8, v12
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v1, s14, v6
	v_or_b32_e32 v7, s14, v5
	.loc	1 379 14 is_stmt 0              ; generate_amdgcn.py:379:14
	s_clause 0x1
	buffer_load_u16 v20, v8, s[20:23], 0 offen
	buffer_load_u16 v21, v9, s[20:23], 0 offen
	.loc	1 382 23 is_stmt 1              ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v6, s0, v6, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v10, s14, v4
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v4, s0, v4, 1
	v_add_lshl_u32 v5, s0, v5, 1
	v_add_lshl_u32 v8, s0, v2, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v9, s0, v3, 1
	s_clause 0x5
	buffer_load_u16 v22, v6, s[20:23], 0 offen
	buffer_load_u16 v23, v4, s[20:23], 0 offen
	buffer_load_u16 v24, v5, s[20:23], 0 offen
	buffer_load_u16 v25, v8, s[20:23], 0 offen
	buffer_load_u16 v26, v9, s[20:23], 0 offen
	buffer_load_u16 v27, v1, s[20:23], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v32, v51, v133 :: v_dual_lshlrev_b32 v1, 1, v7
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v2, s14, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v17, v52, v137 :: v_dual_lshlrev_b32 v4, 1, v10
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v3, s14, v3
	.loc	1 379 14 is_stmt 0              ; generate_amdgcn.py:379:14
	s_clause 0x1
	buffer_load_u16 v28, v1, s[20:23], 0 offen
	buffer_load_u16 v29, v4, s[20:23], 0 offen
	v_lshlrev_b32_e32 v1, 1, v2
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v11, v41, v132 :: v_dual_lshlrev_b32 v2, 1, v3
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x1
	buffer_load_u16 v30, v1, s[20:23], 0 offen
	buffer_load_u16 v31, v2, s[20:23], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v57, v15, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v15, 12, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v67, v60, v145 :: v_dual_and_b32 v14, 0x78, v66
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v12, 14, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v68, v59, v142 :: v_dual_add_f32 v69, v48, v143
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v65, s15, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v51, v32, s2
	v_cndmask_b32_e64 v51, v52, v17, s2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v17, s14, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v60, v67, s2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v67, s14, v12
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v15, s0, v15, 1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s28, s15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v59, v68, s2
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v68, s0, v12, 1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v80, v55, v159 :: v_dual_lshlrev_b32 v17, 1, v17
	v_dual_add_f32 v8, v39, v161 :: v_dual_lshlrev_b32 v67, 1, v67
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s1, s1, s14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v1, v34, v138 :: v_dual_add_f32 v18, v63, v139
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v12, s1, v14, v65
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_clause 0x3
	buffer_load_u16 v65, v15, s[20:23], 0 offen
	buffer_load_u16 v68, v68, s[20:23], 0 offen
	buffer_load_u16 v15, v17, s[20:23], 0 offen
	buffer_load_u16 v17, v67, s[20:23], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v66, v64, v140 :: v_dual_add_f32 v71, v53, v131
	v_dual_add_f32 v70, v47, v141 :: v_dual_add_f32 v3, v36, v147
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v72, v54, v149 :: v_dual_add_f32 v75, v44, v152
	v_dual_add_f32 v74, v49, v151 :: v_dual_add_f32 v79, v56, v162
	v_dual_add_f32 v77, v61, v156 :: v_dual_add_f32 v78, v62, v157
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v35, v144 :: v_dual_add_f32 v73, v50, v154
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v63, v18, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v61, v61, v77, s2
	v_cndmask_b32_e64 v54, v54, v72, s2
	v_cndmask_b32_e64 v53, v53, v71, s2
	v_cndmask_b32_e64 v56, v56, v79, s2
	v_cndmask_b32_e64 v47, v47, v70, s2
	v_cndmask_b32_e64 v48, v48, v69, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v6, v37, v153 :: v_dual_add_f32 v81, v46, v160
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v62, v78, s2
	v_cndmask_b32_e64 v49, v49, v74, s2
	v_cndmask_b32_e64 v50, v50, v73, s2
	v_cndmask_b32_e64 v44, v44, v75, s2
	v_cndmask_b32_e64 v55, v55, v80, s2
	v_cndmask_b32_e64 v46, v46, v81, s2
	v_cndmask_b32_e64 v64, v64, v66, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v76, v43, v150 :: v_dual_add_f32 v7, v38, v155
	v_dual_add_f32 v82, v45, v158 :: v_dual_add_f32 v9, v40, v163
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v58, v16, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v43, v43, v76, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.h, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v82, s2
	v_cndmask_b32_e64 v11, v41, v11, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v10, v42, v134
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v40, v9, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.h, v5.h
	v_mov_b16_e32 v52.h, v5.h
	v_mov_b16_e32 v18.h, v5.h
	v_mov_b16_e32 v66.h, v5.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v42, v10, s2
	v_cndmask_b32_e64 v8, v39, v8, s2
	v_cndmask_b32_e64 v7, v38, v7, s2
	v_cndmask_b32_e64 v6, v37, v6, s2
	v_cndmask_b32_e64 v4, v35, v4, s2
	v_cndmask_b32_e64 v1, v34, v1, s2
	v_cndmask_b32_e64 v3, v36, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v2, v33, v136
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_lshl_b32 s15, s15, 4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s22
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v33, v2, s2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v14, 16, v13
	v_lshlrev_b32_e32 v13, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v67, v13, v20
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v20, v14, v20 :: v_dual_lshlrev_b32 v19, 16, v21
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v21, 16, v22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v22, 16, v23
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v23, 16, v24
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v24, 16, v25
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v20, v57, v20 :: v_dual_lshlrev_b32 v25, 16, v26
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v70, v13, v23
	v_mul_f32_e32 v26, v13, v19
	v_mul_f32_e32 v19, v14, v19
	v_mul_f32_e32 v69, v13, v21
	v_mul_f32_e32 v21, v14, v21
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v26, v61, v26 :: v_dual_lshlrev_b32 v29, 16, v29
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v71, v13, v22
	v_mul_f32_e32 v22, v14, v22
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v23, v14, v23 :: v_dual_lshlrev_b32 v30, 16, v30
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v62, v62, v69 :: v_dual_lshlrev_b32 v31, 16, v31
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v73, v13, v24 :: v_dual_mul_f32 v56, v56, v71
	v_dual_mul_f32 v24, v14, v24 :: v_dual_lshlrev_b32 v27, 16, v27
	v_mul_f32_e32 v72, v13, v25
	v_mul_f32_e32 v25, v14, v25
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v19, v53, v19
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v61, v63, v67
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v21, v54, v21 :: v_dual_mul_f32 v24, v44, v24
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v54, v13, v28
	v_dual_mul_f32 v28, v14, v28 :: v_dual_mul_f32 v57, v13, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v19
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v23, v49, v23
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v49, v13, v31
	v_dual_mul_f32 v53, v13, v27 :: v_dual_mul_f32 v22, v50, v22
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v57, v60, v57 :: v_dual_mul_f32 v60, 0xbfb8aa3b, v56
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v55, v55, v70 :: v_dual_mul_f32 v46, v46, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v53, v64, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v44
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v60
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v25, v43, v25 :: v_dual_mul_f32 v28, v32, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v64, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v44, 0, 0x42800000, s0
	v_cndmask_b32_e64 v60, 0, 0x42800000, s4
	v_mul_f32_e32 v63, 0xbfb8aa3b, v62
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s4
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v64
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v19
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v56
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v63
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v27, v14, v27 :: v_dual_mul_f32 v50, v13, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v64, 0, 0x42800000, s8
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v60, v60
	v_mul_f32_e32 v67, 0xbfb8aa3b, v25
	v_cndmask_b32_e64 v63, 0, 0x42800000, s1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v27, v58, v27 :: v_dual_mul_f32 v48, v48, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v46
	v_mul_f32_e32 v58, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s8
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v45, v45, v72 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v64, v64
	v_ldexp_f32 v60, v60, v74
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v43, 0xbfb8aa3b, v26 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v45
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v58
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v63, v63
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_ldexp_f32 v64, v64, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v78, null, v60, v60, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v58, 0, 0x42800000, s3
	v_exp_f32_e32 v44, v44
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v29, v14, v29 :: v_dual_mul_f32 v54, v59, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v98, v78
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v59, 0xbfb8aa3b, v55 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s0
	v_ldexp_f32 v63, v63, v72
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v50
	v_exp_f32_e32 v58, v58
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v32
	v_ldexp_f32 v44, v44, v71
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v110, -v78, v98, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s9
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v98, v110, v98
	v_div_scale_f32 v74, null, v63, v63, v62
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0x42800000, s7
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v29, v51, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v51, 0xbfb8aa3b, v22 :: v_dual_fmac_f32 v50, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v58, v58, v73
	v_mul_f32_e32 v69, 0xbfb8aa3b, v24
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v96, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v51
	v_exp_f32_e32 v50, v50
	v_ldexp_f32 v43, v43, v70
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v69
	v_cndmask_b32_e64 v51, 0, 0x42800000, s6
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s9
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v23
	v_cndmask_b32_e64 v69, 0, 0x42800000, s10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v108, -v74, v96, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v22
	v_ldexp_f32 v50, v50, v79
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v96, v108, v96
	v_div_scale_f32 v70, null, v43, v43, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v51, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v86, null, v64, v64, v46
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v69, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v94, v70
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v59
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s6
	v_exp_f32_e32 v32, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v102, v86
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v67
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v59, 0, 0x42800000, s5
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s7
	v_ldexp_f32 v51, v51, v76
	v_cndmask_b32_e64 v67, 0, 0x42800000, s11
	v_ldexp_f32 v69, v69, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v106, -v70, v94, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v32, v77
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v114, -v86, v102, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v67, 0xbfb8aa3b, v25 :: v_dual_fmac_f32 v94, v106, v94
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, vcc_lo, v26, v43, v26
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v69, 1.0, v69 :: v_dual_add_f32 v32, 1.0, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v59, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v102, v114, v102
	v_div_scale_f32 v82, null, v51, v51, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v67, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v106, v71, v94
	v_div_scale_f32 v90, null, v69, v69, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v44, v44, v19
	v_rcp_f32_e32 v100, v82
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, s11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v104, v90
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v59, v59, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v76, null, v58, v58, v21
	v_rcp_f32_e32 v95, v72
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v67, v67, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v118, -v70, v106, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v97, v76
	v_fma_f32 v112, -v82, v100, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v116, -v90, v104, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v84, null, v32, v32, v23
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v107, -v72, v95, 1.0
	v_fmac_f32_e32 v100, v112, v100
	v_div_scale_f32 v80, null, v59, v59, v55
	v_fmac_f32_e32 v104, v116, v104
	v_div_scale_f32 v92, null, v67, v67, v25
	v_div_scale_f32 v73, s0, v19, v44, v19
	v_div_scale_f32 v75, s1, v62, v63, v62
	v_rcp_f32_e32 v99, v80
	v_fma_f32 v109, -v76, v97, 1.0
	v_dual_fmac_f32 v95, v107, v95 :: v_dual_fmac_f32 v106, v118, v94
	v_rcp_f32_e32 v105, v92
	v_rcp_f32_e32 v101, v84
	v_div_scale_f32 v87, s8, v46, v64, v46
	v_dual_fmac_f32 v97, v109, v97 :: v_dual_mul_f32 v108, v75, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v107, v73, v95 :: v_dual_mul_f32 v114, v87, v102
	v_fma_f32 v70, -v70, v106, v71
	v_div_scale_f32 v88, null, v50, v50, v45
	v_fma_f32 v111, -v80, v99, 1.0
	v_fma_f32 v119, -v72, v107, v73
	v_fma_f32 v120, -v74, v108, v75
	v_div_fmas_f32 v70, v70, v94, v106
	v_div_scale_f32 v83, s6, v22, v51, v22
	v_fma_f32 v117, -v92, v105, 1.0
	v_div_scale_f32 v77, s3, v21, v58, v21
	v_div_scale_f32 v79, s4, v56, v60, v56
	v_rcp_f32_e32 v103, v88
	v_fma_f32 v113, -v84, v101, 1.0
	v_dual_fmac_f32 v99, v111, v99 :: v_dual_fmac_f32 v108, v120, v96
	v_div_fixup_f32 v26, v70, v43, v26
	v_fmac_f32_e32 v107, v119, v95
	v_div_scale_f32 v81, s5, v55, v59, v55
	v_dual_fmac_f32 v105, v117, v105 :: v_dual_mul_f32 v112, v83, v100
	v_div_scale_f32 v91, s10, v24, v69, v24
	v_mul_f32_e32 v109, v77, v97
	v_dual_fmac_f32 v101, v113, v101 :: v_dual_mul_f32 v110, v79, v98
	v_div_scale_f32 v85, s7, v23, v32, v23
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v61, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v72, v107, v73
	v_fma_f32 v72, -v74, v108, v75
	v_fma_f32 v124, -v82, v112, v83
	v_dual_mul_f32 v111, v81, v99 :: v_dual_mul_f32 v116, v91, v104
	v_fma_f32 v121, -v76, v109, v77
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v115, -v88, v103, 1.0
	v_fma_f32 v122, -v78, v110, v79
	v_fma_f32 v126, -v86, v114, v87
	v_mul_f32_e32 v113, v85, v101
	v_div_fmas_f32 v72, v72, v96, v108
	v_fmac_f32_e32 v112, v124, v100
	v_fma_f32 v123, -v80, v111, v81
	v_fmac_f32_e32 v109, v121, v97
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v103, v115, v103 :: v_dual_fmac_f32 v110, v122, v98
	v_fmac_f32_e32 v114, v126, v102
	v_fma_f32 v125, -v84, v113, v85
	v_div_fmas_f32 v43, v71, v95, v107
	v_div_fixup_f32 v62, v72, v63, v62
	v_fmac_f32_e32 v111, v123, v99
	v_fma_f32 v73, -v76, v109, v77
	v_fma_f32 v74, -v78, v110, v79
	v_div_scale_f32 v89, s9, v45, v50, v45
	v_fmac_f32_e32 v113, v125, v101
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v19, v43, v44, v19
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v44, v53, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v75, -v80, v111, v81
	v_div_fmas_f32 v70, v73, v97, v109
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v76, -v82, v112, v83
	v_div_fmas_f32 v63, v74, v98, v110
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v77, -v84, v113, v85
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v44.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v115, v89, v103
	v_div_fmas_f32 v43, v75, v99, v111
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v21, v70, v58, v21
	v_div_fmas_f32 v53, v76, v100, v112
	s_mov_b32 vcc_lo, s7
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v19, v20, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v20, v77, v101, v113
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v127, -v88, v115, v89
	v_fma_f32 v128, -v90, v116, v91
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v27, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v93, s11, v25, v67, v25
	v_div_fixup_f32 v22, v53, v51, v22
	v_fmac_f32_e32 v115, v127, v103
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v19.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v20, v20, v32, v23
	v_fma_f32 v78, -v86, v114, v87
	v_fmac_f32_e32 v116, v128, v104
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v21.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v117, v93, v105 :: v_dual_mul_f32 v20, v28, v20
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v22, v29, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v79, -v88, v115, v89
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v5
	v_mov_b16_e32 v5.l, v26.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v78, v102, v114
	s_mov_b32 vcc_lo, s9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v53, v79, v103, v115
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v19, v19, v29, 0x7fff
	v_mov_b16_e32 v52.l, v20.h
	v_mov_b16_e32 v5.l, v22.h
	v_add3_u32 v16, v21, v16, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v56, v63, v60, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v26, v26
	v_cndmask_b16 v16.l, 0x7fff, v19.h, vcc_lo
	v_add3_u32 v19, v26, v28, 0x7fff
	v_and_b32_e32 v26, 1, v52
	v_cmp_o_f32_e64 s3, v21, v21
	v_and_b32_e32 v21, 1, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v43, v43, v59, v55
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v51, v57, v56
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s7, v20, v20
	v_add3_u32 v20, v20, v26, 0x7fff
	v_add3_u32 v21, v22, v21, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v23, v54, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v51.h
	v_cmp_o_f32_e64 s6, v22, v22
	v_cndmask_b16 v21.l, 0x7fff, v20.h, s7
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v20, v14, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v44, v18, 0x7fff
	v_and_b32_e32 v28, 1, v5
	v_cmp_o_f32_e64 s4, v51, v51
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v11, v11, v20
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v20, 16, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v23.h
	v_add3_u32 v22, v51, v28, 0x7fff
	v_cmp_o_f32_e64 s5, v23, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v129, -v92, v117, v93
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v66
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v90, v116, v91
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v44, v44
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v23, v29, 0x7fff
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v22, v22, v104, v116
	s_mov_b32 vcc_lo, s11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s1
	v_cndmask_b16 v19.l, 0x7fff, v23.h, s5
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v23, v14, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v22, v69, v24
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v24, v47, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s3
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s6
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v10, v10, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v22
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v22, v13, v20
	v_mul_f32_e32 v20, v14, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v9, v9, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.h, v5.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v117, v129, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v7, v7, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v92, v117, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v26, v26, v105, v117
	v_div_fixup_f32 v23, v26, v67, v25
	v_div_fixup_f32 v25, v53, v50, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v24, v24, v25 :: v_dual_mul_f32 v11, v11, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v23, v27, v64, v46
	.loc	1 382 23 is_stmt 1              ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v25, 16, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v27, 1, v5
	v_mov_b16_e32 v22.l, v11.h
	v_cmp_o_f32_e64 s1, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v27, v10, v27, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v48, v23
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v28, v13, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v22, 1, v22
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v5.l, v10.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v8, v8, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v22, v11, v22, 0x7fff
	v_mov_b16_e32 v28.l, v24.h
	v_and_b32_e32 v29, 1, v5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v11, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.l, 0x7fff, v22.h, s1
	v_mov_b16_e32 v28.h, v5.h
	v_add3_u32 v29, v10, v29, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v9
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v8
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v26, v22
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v25, v14, v25 :: v_dual_add_f32 v20, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v6, v6, v25
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v22, 0xbfb8aa3b, v7
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v20, v20, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v11, v11, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v11, v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v27, v25, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v38, v30
	v_div_scale_f32 v41, s1, v8, v11, v8
	v_fmac_f32_e32 v25, v32, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v26
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v26, 0, 0x42800000, s0
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v10, v10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v30, v38, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v22, v22, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, vcc_lo, v9, v20, v9
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v10, v31, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v27, v10, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v26, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, null, v22, v22, v7
	v_fmac_f32_e32 v10, v35, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v40, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v27, v10, v31
	v_div_scale_f32 v39, null, v26, v26, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v10, v27, v25, v10
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v42, -v37, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, s0, v7, v22, v7
	v_mul_f32_e32 v31, v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v37, v31, v42
	v_fmac_f32_e32 v38, v32, v38
	v_rcp_f32_e32 v32, v39
	v_fmac_f32_e32 v31, v27, v40
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v27, v14, v15
	v_mul_f32_e32 v14, v14, v17
	v_mul_f32_e32 v17, v13, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v36, v41, v38
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v13, v13, v15
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v2, v2, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v39, v32, 1.0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v3, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v30, v36, v41
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v1, v1, v14 :: v_dual_mul_f32 v4, v4, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v35, v32
	v_div_scale_f32 v35, s3, v6, v26, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v43, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v24, v28, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v43, v35, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v30, v36, v41
	v_fma_f32 v30, -v39, v43, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v25, v38, v36
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e64 s0, 0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v30, v32
	v_fma_f32 v30, -v37, v31, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v0, 0x5410
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v39, v43, v35
	v_div_fmas_f32 v30, v30, v40, v31
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v33, v32, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v7, v30, v22, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_lshl_or_b32 v0, v0, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v31, v26, v6
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v10, v20, v9
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v29.l, 0x7fff, v28.h, vcc_lo
	v_and_b32_e32 v0, 0x540054, v0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v6
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v25, v11, v8
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v1.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.h, v5.h
	v_mov_b16_e32 v8.l, v2.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v5
	v_mov_b16_e32 v5.l, v3.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v7, 1, v8
	v_cmp_o_f32_e64 s1, v3, v3
	v_add3_u32 v6, v1, v6, 0x7fff
	v_and_b32_e32 v5, 1, v5
	v_mov_b16_e32 v8.l, v4.h
	v_add3_u32 v1, v2, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v4, v4
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_add3_u32 v5, v3, v5, 0x7fff
	v_and_b32_e32 v7, 1, v8
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cndmask_b32_e64 v8, v18, v29, s0
	v_lshl_or_b32 v0, v0, 4, v0
	v_cndmask_b32_e64 v3, v23, v16, s0
	v_add3_u32 v2, v4, v7, 0x7fff
	v_mov_b32_e32 v7, 0x7632
	v_cndmask_b16 v6.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s1
	s_mov_b32 s1, 0x76543210
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s2
	v_cndmask_b32_e64 v4, 0x3276, v7, s0
	v_cndmask_b32_e64 v5, v6, v21, s0
	v_cndmask_b32_e64 v6, v21, v6, s0
	v_cndmask_b32_e64 v7, v29, v18, s0
	v_cndmask_b32_e64 v9, v1, v19, s0
	v_lshl_or_b32 v2, v4, 8, v4
	v_cndmask_b32_e64 v4, v16, v23, s0
	v_cndmask_b32_e64 v1, v19, v1, s0
	v_and_b32_e32 v10, 0x5040504, v0
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x760076, v2
	v_permlanex16_b32 v4, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v1, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v2, v2, 4, v2
	v_perm_b32 v0, v4, v3, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v11, 0x7060706, v2
	v_perm_b32 v2, v6, v5, v10
	v_perm_b32 v1, v4, v3, v11
	v_perm_b32 v3, v6, v5, v11
	v_perm_b32 v4, v8, v7, v10
	v_perm_b32 v5, v8, v7, v11
	v_lshlrev_b32_e32 v8, 1, v12
	v_perm_b32 v6, v13, v9, v10
	v_perm_b32 v7, v13, v9, v11
	v_add_lshl_u32 v9, v12, s15, 1
	s_mov_b32 s15, s23
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v9, s[12:15], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 199
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17020
; TotalNumSgprs: 42
; NumVgprs: 199
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     199
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
