	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_lshlrev_b32_e32 v147, 2, v0
	v_and_b32_e32 v82, 15, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v151, 4, v0
	v_or_b32_e32 v148, 0x3f0, v0
	s_mov_b32 s34, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v3, 28, v147
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v38, 0, v151
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s26, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[20:21], s[18:19]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s19, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s23, s19
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s22, s18
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
	s_lshl_b32 s7, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s7
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s6, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v1, s26, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s11
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s6
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
	s_lshl_b32 s35, s27, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v2, s35, v2
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s4, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s10, 31
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s6, s4, s6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s28, s4, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s6
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s6, s3, 5
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v149, v82, 4, v2
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s29, s2, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s35, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 31
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v19, v1, v3, s29
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v150, s27, 5, v149
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s28, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s7, s26, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s9, s27, 6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v1, s7, v19
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s4, v149
	v_add_nc_u32_e32 v3, s4, v150
	s_add_i32 s4, s4, s9
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s8, s26, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v12, s4, v149
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 346 30 is_stmt 0              ; generate_amdgcn.py:346:30
	v_add3_u32 v4, s7, s8, v19
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v10, s27, v2
	v_add_nc_u32_e32 v11, s27, v3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v13, s4, v150
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v20, s27, v12
	v_add3_u32 v18, s4, s27, v150
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v36, v1, s[16:19], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v3, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v14, 0x80000000, v11, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v21, 0x80000000, v12, s2
	v_cndmask_b32_e64 v24, 0x80000000, v13, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v28, 0x80000000, v20, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[2:5], v5, s[20:23], 0 offen
	buffer_load_b128 v[6:9], v6, s[20:23], 0 offen
	buffer_load_b128 v[10:13], v10, s[20:23], 0 offen
	buffer_load_b128 v[14:17], v14, s[20:23], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v37, v1, s[16:19], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[20:23], v21, s[20:23], 0 offen
	buffer_load_b128 v[24:27], v24, s[20:23], 0 offen
	buffer_load_b128 v[28:31], v28, s[20:23], 0 offen
	buffer_load_b128 v[32:35], v18, s[20:23], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v18, 0, v147
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x5f
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(9)
	ds_store_b32 v18, v36 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v38, v[2:5]
	s_waitcnt vmcnt(7)
	ds_store_b128 v38, v[6:9] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v38, v[10:13] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v38, v[14:17] offset:20480
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v18, v37 offset:33792
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v38, v[20:23] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v38, v[24:27] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v38, v[28:31] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[32:35] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_or_b32 v86, 0x70, v1, v82
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v2, 0x3f0, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v245, 0x100, v86
	v_or_b32_e32 v94, 0x200, v86
	v_or_b32_e32 v84, 0x300, v86
	v_or_b32_e32 v109, 0x400, v86
	v_or_b32_e32 v110, 0x500, v86
	v_or_b32_e32 v111, 0x600, v86
	v_or_b32_e32 v87, 0x700, v86
	v_or_b32_e32 v113, 0x800, v86
	v_or_b32_e32 v114, 0x900, v86
	v_or_b32_e32 v115, 0xa00, v86
	v_or_b32_e32 v116, 0xb00, v86
	v_or_b32_e32 v123, 0xc00, v86
	v_or_b32_e32 v124, 0xd00, v86
	v_or_b32_e32 v100, 0xe00, v86
	v_or_b32_e32 v101, 0xf00, v86
	v_or_b32_e32 v244, 0x1000, v86
	v_or_b32_e32 v112, 0x1100, v86
	v_or_b32_e32 v102, 0x1200, v86
	v_or_b32_e32 v103, 0x1300, v86
	v_or_b32_e32 v104, 0x1400, v86
	v_or_b32_e32 v105, 0x1500, v86
	v_or_b32_e32 v106, 0x1600, v86
	v_or_b32_e32 v107, 0x1700, v86
	v_or_b32_e32 v108, 0x1800, v86
	v_or_b32_e32 v90, 0x1900, v86
	v_or_b32_e32 v91, 0x1a00, v86
	v_or_b32_e32 v92, 0x1b00, v86
	v_or_b32_e32 v93, 0x1c00, v86
	v_or_b32_e32 v85, 0x1d00, v86
	v_or_b32_e32 v95, 0x1e00, v86
	v_or_b32_e32 v96, 0x1f00, v86
	v_or_b32_e32 v243, 0x80, v86
	v_or_b32_e32 v97, 0x180, v86
	v_or_b32_e32 v117, 0x280, v86
	v_or_b32_e32 v118, 0x380, v86
	v_or_b32_e32 v119, 0x480, v86
	v_or_b32_e32 v120, 0x580, v86
	v_or_b32_e32 v121, 0x680, v86
	v_or_b32_e32 v122, 0x780, v86
	v_or_b32_e32 v98, 0x880, v86
	v_or_b32_e32 v99, 0x980, v86
	v_or_b32_e32 v125, 0xa80, v86
	v_or_b32_e32 v126, 0xb80, v86
	v_or_b32_e32 v127, 0xc80, v86
	v_or_b32_e32 v128, 0xd80, v86
	v_or_b32_e32 v129, 0xe80, v86
	v_or_b32_e32 v130, 0xf80, v86
	v_or_b32_e32 v131, 0x1080, v86
	v_or_b32_e32 v132, 0x1180, v86
	v_or_b32_e32 v133, 0x1280, v86
	v_or_b32_e32 v134, 0x1380, v86
	v_or_b32_e32 v135, 0x1480, v86
	v_or_b32_e32 v136, 0x1580, v86
	v_or_b32_e32 v137, 0x1680, v86
	v_or_b32_e32 v138, 0x1780, v86
	v_or_b32_e32 v139, 0x1880, v86
	v_or_b32_e32 v140, 0x1980, v86
	v_or_b32_e32 v141, 0x1a80, v86
	v_or_b32_e32 v142, 0x1b80, v86
	v_or_b32_e32 v143, 0x1c80, v86
	v_or_b32_e32 v144, 0x1d80, v86
	v_or_b32_e32 v145, 0x1e80, v86
	v_or_b32_e32 v146, 0x1f80, v86
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr245
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr113
                                        ; implicit-def: $vgpr114
                                        ; implicit-def: $vgpr115
                                        ; implicit-def: $vgpr116
                                        ; implicit-def: $vgpr123
                                        ; implicit-def: $vgpr124
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr244
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr103
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr105
                                        ; implicit-def: $vgpr106
                                        ; implicit-def: $vgpr107
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr243
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr117
                                        ; implicit-def: $vgpr118
                                        ; implicit-def: $vgpr119
                                        ; implicit-def: $vgpr120
                                        ; implicit-def: $vgpr121
                                        ; implicit-def: $vgpr122
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr99
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
                                        ; implicit-def: $vgpr142
                                        ; implicit-def: $vgpr143
                                        ; implicit-def: $vgpr144
                                        ; implicit-def: $vgpr145
                                        ; implicit-def: $vgpr146
.LBB0_3:                                ; %Flow289
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[24:25], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_and_or_b32 v86, 0x70, v1, v82
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v245, 0x100, v86
	v_or_b32_e32 v94, 0x200, v86
	v_or_b32_e32 v84, 0x300, v86
	v_or_b32_e32 v109, 0x400, v86
	v_or_b32_e32 v110, 0x500, v86
	v_or_b32_e32 v111, 0x600, v86
	v_or_b32_e32 v87, 0x700, v86
	v_or_b32_e32 v113, 0x800, v86
	v_or_b32_e32 v114, 0x900, v86
	v_or_b32_e32 v115, 0xa00, v86
	v_or_b32_e32 v116, 0xb00, v86
	v_or_b32_e32 v123, 0xc00, v86
	v_or_b32_e32 v124, 0xd00, v86
	v_or_b32_e32 v100, 0xe00, v86
	v_or_b32_e32 v101, 0xf00, v86
	v_or_b32_e32 v244, 0x1000, v86
	v_or_b32_e32 v112, 0x1100, v86
	v_or_b32_e32 v102, 0x1200, v86
	v_or_b32_e32 v103, 0x1300, v86
	v_or_b32_e32 v104, 0x1400, v86
	v_or_b32_e32 v105, 0x1500, v86
	v_or_b32_e32 v106, 0x1600, v86
	v_or_b32_e32 v107, 0x1700, v86
	v_or_b32_e32 v108, 0x1800, v86
	v_or_b32_e32 v90, 0x1900, v86
	v_or_b32_e32 v91, 0x1a00, v86
	v_or_b32_e32 v92, 0x1b00, v86
	v_or_b32_e32 v93, 0x1c00, v86
	v_or_b32_e32 v85, 0x1d00, v86
	v_or_b32_e32 v95, 0x1e00, v86
	v_or_b32_e32 v96, 0x1f00, v86
	v_or_b32_e32 v243, 0x80, v86
	v_or_b32_e32 v97, 0x180, v86
	v_or_b32_e32 v117, 0x280, v86
	v_or_b32_e32 v118, 0x380, v86
	v_or_b32_e32 v119, 0x480, v86
	v_or_b32_e32 v120, 0x580, v86
	v_or_b32_e32 v121, 0x680, v86
	v_or_b32_e32 v122, 0x780, v86
	v_or_b32_e32 v98, 0x880, v86
	v_or_b32_e32 v99, 0x980, v86
	v_or_b32_e32 v125, 0xa80, v86
	v_or_b32_e32 v126, 0xb80, v86
	v_or_b32_e32 v127, 0xc80, v86
	v_or_b32_e32 v128, 0xd80, v86
	v_or_b32_e32 v129, 0xe80, v86
	v_or_b32_e32 v130, 0xf80, v86
	v_or_b32_e32 v131, 0x1080, v86
	v_or_b32_e32 v132, 0x1180, v86
	v_or_b32_e32 v133, 0x1280, v86
	v_or_b32_e32 v134, 0x1380, v86
	v_or_b32_e32 v135, 0x1480, v86
	v_or_b32_e32 v136, 0x1580, v86
	v_or_b32_e32 v137, 0x1680, v86
	v_or_b32_e32 v138, 0x1780, v86
	v_or_b32_e32 v139, 0x1880, v86
	v_or_b32_e32 v140, 0x1980, v86
	v_or_b32_e32 v141, 0x1a80, v86
	v_or_b32_e32 v142, 0x1b80, v86
	v_or_b32_e32 v143, 0x1c80, v86
	v_or_b32_e32 v144, 0x1d80, v86
	v_or_b32_e32 v145, 0x1e80, v86
	v_or_b32_e32 v146, 0x1f80, v86
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s37, s5, 5
	s_add_i32 s0, s6, 64
	s_mov_b32 s36, 1
	s_add_i32 s39, 0, 0x8000
	s_add_i32 s31, 0, 0x8400
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s33, 0, 0x4000
	s_add_i32 s1, 0, 0x6000
	s_add_i32 s37, s37, -3
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_mov_b32 s34, s4
	s_mov_b32 s38, s4
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s41, s38, 5
	s_mov_b32 s40, s34
	s_mov_b32 s34, s33
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s33, s0, s41
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v2, s39, v82
	.loc	1 346 30 is_stmt 0              ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[3:4], null, s33, s26, v[19:20]
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s40, v86
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v15, s34, v86
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s33, s33, s35
	s_mov_b32 s34, s30
	s_add_i32 s33, s33, s28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s30, s36, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v152, v3, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v2 offset:416
	ds_load_u8 v4, v2 offset:384
	ds_load_u8 v5, v2 offset:480
	ds_load_u8 v6, v2 offset:448
	ds_load_u8 v7, v2 offset:288
	ds_load_u8 v8, v2 offset:256
	ds_load_u8 v9, v2 offset:352
	ds_load_u8 v10, v2 offset:320
	ds_load_u8 v11, v2 offset:160
	ds_load_u8 v12, v2 offset:128
	ds_load_u8 v16, v2 offset:224
	ds_load_u8 v83, v2 offset:192
	ds_load_u8 v88, v2 offset:96
	ds_load_u8 v89, v2 offset:64
	ds_load_u8 v153, v2
	ds_load_u8 v154, v2 offset:16
	ds_load_u8 v155, v2 offset:32
	ds_load_u8 v156, v2 offset:48
	ds_load_u8 v157, v1 offset:3328
	ds_load_u8 v158, v1 offset:3072
	ds_load_u8 v159, v1 offset:3840
	ds_load_u8 v160, v1 offset:3584
	ds_load_u8 v161, v1 offset:2304
	ds_load_u8 v162, v1 offset:2048
	ds_load_u8 v163, v1 offset:2816
	ds_load_u8 v164, v1 offset:2560
	ds_load_u8 v165, v1 offset:1280
	ds_load_u8 v166, v1 offset:1024
	ds_load_u8 v167, v1 offset:1792
	ds_load_u8 v168, v1 offset:1536
	ds_load_u8 v169, v1 offset:256
	ds_load_u8 v173, v1
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v8, v10, v9, 0xc0c0004
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v9, v83, v16, 0xc0c0004
	ds_load_u8 v4, v1 offset:768
	ds_load_u8 v6, v1 offset:512
	v_lshl_or_b32 v13, v8, 16, v7
	v_perm_b32 v7, v12, v11, 0xc0c0004
	v_lshl_or_b32 v14, v5, 16, v3
	ds_load_u8 v3, v1 offset:3456
	ds_load_u8 v5, v1 offset:3200
	ds_load_u8 v8, v1 offset:3968
	ds_load_u8 v10, v1 offset:3712
	ds_load_u8 v16, v1 offset:2944
	v_lshl_or_b32 v12, v9, 16, v7
	ds_load_u8 v7, v1 offset:2432
	ds_load_u8 v9, v1 offset:2176
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v11, v89, v88, 0xc0c0004
	ds_load_u8 v88, v1 offset:2688
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v83, v153, v155, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v89, v158, v157, 0xc0c0004
	ds_load_u8 v153, v1 offset:1408
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v155, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v158, v162, v161, 0xc0c0004
	ds_load_u8 v159, v1 offset:1920
	ds_load_u8 v161, v1 offset:1664
	ds_load_u8 v157, v1 offset:1152
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v160, v164, v163, 0xc0c0004
	v_lshl_or_b32 v172, v155, 16, v89
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v155, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v163, v173, v169, 0xc0c0004
	ds_load_u8 v164, v2 offset:496
	v_lshl_or_b32 v171, v160, 16, v158
	v_perm_b32 v160, v168, v167, 0xc0c0004
	ds_load_u8 v158, v1 offset:896
	ds_load_u8 v162, v1 offset:640
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v4, v6, v4, 0xc0c0004
	ds_load_u8 v6, v2 offset:464
	v_lshl_or_b32 v170, v160, 16, v155
	ds_load_u8 v155, v2 offset:432
	ds_load_u8 v160, v2 offset:400
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v5, v3, 0xc0c0004
	ds_load_u8 v5, v2 offset:304
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v8, v10, v8, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v9, v7, 0xc0c0004
	ds_load_u8 v9, v2 offset:368
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v16, v88, v16, 0xc0c0004
	ds_load_u8 v88, v2 offset:336
	ds_load_u8 v10, v2 offset:272
	v_lshl_or_b32 v11, v11, 16, v83
	ds_load_u8 v83, v1 offset:384
	ds_load_u8 v89, v1 offset:128
	v_lshl_or_b32 v169, v4, 16, v163
	v_lshl_or_b32 v188, v8, 16, v3
	v_lshl_or_b32 v187, v16, 16, v7
	ds_load_u8 v3, v2 offset:176
	ds_load_u8 v4, v2 offset:144
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v157, v153, 0xc0c0004
	ds_load_u8 v8, v2 offset:240
	ds_load_u8 v153, v2 offset:208
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v6, v6, v164, 0xc0c0004
	v_perm_b32 v16, v161, v159, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v155, v160, v155, 0xc0c0004
	v_perm_b32 v157, v162, v158, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v159, v15 offset:3840
	ds_load_u8 v158, v15 offset:3072
	ds_load_u8 v160, v15 offset:3584
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v220, v6, 16, v155
	v_lshl_or_b32 v186, v16, 16, v7
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v9, v88, v9, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v5, v10, v5, 0xc0c0004
	ds_load_u8 v7, v2 offset:112
	ds_load_u8 v16, v2 offset:80
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v83, v89, v83, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v89, v15 offset:3328
	ds_load_u8 v88, v15 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v219, v9, 16, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v5, v15 offset:2816
	ds_load_u8 v6, v15 offset:2560
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v10, v15 offset:2304
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v153, v8, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v15 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v185, v157, 16, v83
	v_perm_b32 v83, v154, v156, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v156, v15 offset:512
	ds_load_u8 v153, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v218, v8, 16, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v15 offset:1792
	ds_load_u8 v8, v15 offset:1536
	ds_load_u8 v154, v15 offset:768
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v7, v16, v7, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v16, v15 offset:256
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v89, v158, v89, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v15 offset:3200
	v_perm_b32 v155, v160, v159, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v217, v7, 16, v83
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v212, v155, 16, v89
	ds_load_u8 v89, v15 offset:2688
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v8, v3, 0xc0c0004
	ds_load_u8 v8, v15 offset:2176
	ds_load_u8 v4, v15 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v9, v4, 0xc0c0004
	ds_load_u8 v9, v15 offset:2432
	v_lshl_or_b32 v210, v3, 16, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v8, v9, 0xc0c0004
	ds_load_u8 v9, v15 offset:1920
	v_perm_b32 v10, v88, v10, 0xc0c0004
	ds_load_u8 v88, v15 offset:3456
	v_lshl_or_b32 v211, v5, 16, v10
	ds_load_u8 v5, v15 offset:3968
	ds_load_u8 v7, v15 offset:3712
	v_perm_b32 v10, v153, v16, 0xc0c0004
	ds_load_u8 v16, v15 offset:2944
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v6, v6, v88, 0xc0c0004
	ds_load_u8 v88, v15 offset:1408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v7, v5, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v16, v89, v16, 0xc0c0004
	ds_load_u8 v89, v15 offset:1664
	ds_load_u8 v7, v15 offset:1152
	v_lshl_or_b32 v224, v5, 16, v6
	v_lshl_or_b32 v223, v16, 16, v8
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v89, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v7, v88, 0xc0c0004
	ds_load_u8 v88, v15 offset:384
	v_perm_b32 v83, v156, v154, 0xc0c0004
	v_lshl_or_b32 v222, v9, 16, v7
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v209, v83, 16, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v3, s4 :: v_dual_mov_b32 v6, s7
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v89, v15 offset:128
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v4, s5 :: v_dual_mov_b32 v5, s6
	v_dual_mov_b32 v8, s9 :: v_dual_mov_b32 v7, s8
	v_dual_mov_b32 v10, s11 :: v_dual_mov_b32 v9, s10
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[161:168], v[169:172], v[217:220], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[177:184], v[185:188], v[217:220], v[3:10] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[201:208], v[209:212], v[217:220], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v15 offset:896
	ds_load_u8 v153, v15 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v153, v89, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[153:160], v[169:172], v[11:14], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[169:176], v[185:188], v[11:14], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v221, v89, 16, v88
	v_wmma_i32_16x16x16_iu8 v[185:192], v[209:212], v[11:14], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[193:200], v[221:224], v[11:14], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[209:216], v[221:224], v[217:220], v[3:10] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v2 offset:928
	ds_load_u8 v4, v2 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v2 offset:992
	ds_load_u8 v5, v2 offset:960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	ds_load_u8 v5, v2 offset:800
	ds_load_u8 v6, v2 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v2 offset:864
	ds_load_u8 v7, v2 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v7, v6, 0xc0c0004
	v_lshl_or_b32 v6, v4, 16, v3
	ds_load_u8 v3, v2 offset:672
	ds_load_u8 v4, v2 offset:640
	v_lshl_or_b32 v5, v7, 16, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v2 offset:736
	ds_load_u8 v7, v2 offset:704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v7, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v4, v4, 16, v3
	ds_load_u8 v3, v2 offset:544
	ds_load_u8 v7, v2 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v7, v3, 0xc0c0004
	ds_load_u8 v7, v2 offset:608
	ds_load_u8 v8, v2 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v3, v7, 16, v3
	ds_load_u8 v7, v1 offset:7424
	ds_load_u8 v8, v1 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v1 offset:7936
	ds_load_u8 v9, v1 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v1 offset:6400
	ds_load_u8 v10, v1 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v1 offset:6912
	ds_load_u8 v11, v1 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v10, 0xc0c0004
	v_lshl_or_b32 v10, v8, 16, v7
	ds_load_u8 v7, v1 offset:5376
	ds_load_u8 v8, v1 offset:5120
	v_lshl_or_b32 v9, v11, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v1 offset:5888
	ds_load_u8 v11, v1 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v11, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v8, v8, 16, v7
	ds_load_u8 v7, v1 offset:4352
	ds_load_u8 v11, v1 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v11, v7, 0xc0c0004
	ds_load_u8 v11, v1 offset:4864
	ds_load_u8 v12, v1 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v7, v11, 16, v7
	ds_load_u8 v11, v2 offset:944
	ds_load_u8 v12, v2 offset:912
	v_wmma_i32_16x16x16_iu8 v[153:160], v[7:10], v[3:6], v[153:160] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v12, s39, v148
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v12, v12
	ds_load_u8 v13, v2 offset:976
	s_mov_b32 s39, s31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v2 offset:816
	ds_load_u8 v14, v2 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v2 offset:880
	ds_load_u8 v16, v2 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v16, v14, 0xc0c0004
	v_lshl_or_b32 v14, v12, 16, v11
	ds_load_u8 v11, v2 offset:688
	ds_load_u8 v12, v2 offset:656
	v_lshl_or_b32 v13, v16, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v2 offset:752
	ds_load_u8 v16, v2 offset:720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v16, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v2 offset:560
	ds_load_u8 v16, v2 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v16, v11, 0xc0c0004
	ds_load_u8 v16, v2 offset:624
	ds_load_u8 v2, v2 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v2, 16, v11
	v_wmma_i32_16x16x16_iu8 v[161:168], v[7:10], v[11:14], v[161:168] neg_lo:[1,1,0]
	ds_load_u8 v2, v1 offset:7552
	ds_load_u8 v7, v1 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v7, v2, 0xc0c0004
	ds_load_u8 v7, v1 offset:8064
	ds_load_u8 v8, v1 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v1 offset:6528
	ds_load_u8 v9, v1 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v1 offset:7040
	ds_load_u8 v10, v1 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v10, v7, 16, v2
	ds_load_u8 v2, v1 offset:5504
	ds_load_u8 v7, v1 offset:5248
	v_lshl_or_b32 v9, v9, 16, v8
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v7, v2, 0xc0c0004
	ds_load_u8 v7, v1 offset:6016
	ds_load_u8 v8, v1 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v8, v7, 16, v2
	ds_load_u8 v2, v1 offset:4480
	ds_load_u8 v7, v1 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v7, v2, 0xc0c0004
	ds_load_u8 v7, v1 offset:4992
	ds_load_u8 v1, v1 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v7, v1, 16, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v15 offset:7424
	ds_load_u8 v2, v15 offset:7168
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[169:176], v[7:10], v[3:6], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[177:184], v[7:10], v[11:14], v[177:184] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v89, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v179, v179
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v15 offset:7936
	ds_load_u8 v7, v15 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v181, v181
	v_cvt_f32_i32_e32 v182, v182
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v61, v61, v172 :: v_dual_add_f32 v60, v60, v89
	v_dual_add_f32 v57, v57, v174 :: v_dual_add_f32 v56, v56, v173
	v_dual_add_f32 v53, v53, v176 :: v_dual_add_f32 v52, v52, v175
	v_dual_add_f32 v33, v33, v178 :: v_dual_add_f32 v32, v32, v177
	v_dual_add_f32 v29, v29, v180 :: v_dual_add_f32 v28, v28, v179
	v_dual_add_f32 v23, v23, v182 :: v_dual_add_f32 v22, v22, v181
	v_add_f32_e32 v20, v20, v183
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v7, v2, 0xc0c0004
	ds_load_u8 v7, v15 offset:6400
	ds_load_u8 v8, v15 offset:6144
	v_lshl_or_b32 v10, v2, 16, v1
	ds_load_u8 v1, v15 offset:5376
	ds_load_u8 v2, v15 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v15 offset:6912
	ds_load_u8 v9, v15 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v8, 16, v7
	ds_load_u8 v2, v15 offset:5888
	ds_load_u8 v7, v15 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v7, v2, 0xc0c0004
	v_lshl_or_b32 v8, v2, 16, v1
	ds_load_u8 v1, v15 offset:4352
	ds_load_u8 v2, v15 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v15 offset:4864
	ds_load_u8 v7, v15 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v7, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v7, v2, 16, v1
	ds_load_u8 v1, v15 offset:7552
	ds_load_u8 v2, v15 offset:7296
	v_wmma_i32_16x16x16_iu8 v[185:192], v[7:10], v[3:6], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[201:208], v[7:10], v[11:14], v[201:208] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v7, v159
	v_cvt_f32_i32_e32 v8, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v9, v185
	v_cvt_f32_i32_e32 v10, v186
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v68, v68, v7 :: v_dual_add_f32 v69, v69, v8
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v159, v204
	v_cvt_f32_i32_e32 v160, v206
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v74, v74, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v15 offset:8064
	ds_load_u8 v16, v15 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v16, v2, 0xc0c0004
	ds_load_u8 v16, v15 offset:6528
	ds_load_u8 v83, v15 offset:6272
	v_lshl_or_b32 v220, v2, 16, v1
	ds_load_u8 v1, v15 offset:5504
	ds_load_u8 v2, v15 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v83, v16, 0xc0c0004
	ds_load_u8 v83, v15 offset:7040
	ds_load_u8 v88, v15 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v219, v83, 16, v16
	ds_load_u8 v2, v15 offset:6016
	ds_load_u8 v16, v15 offset:5760
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v83, v169
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v65, v65, v88 :: v_dual_add_f32 v64, v64, v83
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v16, v2, 0xc0c0004
	v_cvt_f32_i32_e32 v16, v192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v192, v163
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v218, v2, 16, v1
	ds_load_u8 v1, v15 offset:4480
	ds_load_u8 v2, v15 offset:4224
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v44, v44, v192
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v15 offset:4992
	ds_load_u8 v15, v15 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v15, v2, 0xc0c0004
	v_cvt_f32_i32_e32 v15, v191
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v191, v162
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v217, v2, 16, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v153
	v_cvt_f32_i32_e32 v2, v154
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v66, v66, v15
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v154, v201
	v_wmma_i32_16x16x16_iu8 v[193:200], v[217:220], v[3:6], v[193:200] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v157
	v_cvt_f32_i32_e32 v6, v158
	v_cvt_f32_i32_e32 v3, v155
	v_cvt_f32_i32_e32 v4, v156
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v81, v81, v2 :: v_dual_add_f32 v80, v80, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v73, v73, v6 :: v_dual_add_f32 v72, v72, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s33, v149
	v_add_nc_u32_e32 v5, s33, v150
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s33, s33, s27
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[209:216], v[217:220], v[11:14], v[209:216] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v187
	v_cvt_f32_i32_e32 v12, v188
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v83, s33, v149
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v13, v189
	v_cvt_f32_i32_e32 v14, v190
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v21, v21, v184 :: v_dual_add_nc_u32 v88, s33, v150
	v_dual_add_f32 v79, v79, v4 :: v_dual_add_f32 v78, v78, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[20:23], 0 offen
	buffer_load_b128 v[5:8], v5, s[20:23], 0 offen
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v75, v75, v10 :: v_dual_add_f32 v70, v70, v13
	v_dual_add_f32 v77, v77, v12 :: v_dual_add_f32 v76, v76, v11
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	buffer_load_b128 v[9:12], v83, s[20:23], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v185, v193
	v_cvt_f32_i32_e32 v187, v195
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v71, v71, v14
	v_add_f32_e32 v67, v67, v16
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	buffer_load_b128 v[13:16], v88, s[20:23], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s30, 2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v186, v194
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s36, s30, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v188, v196
	v_cvt_f32_i32_e32 v170, v197
	v_cvt_f32_i32_e32 v189, v198
	v_cvt_f32_i32_e32 v153, v199
	v_cvt_f32_i32_e32 v171, v200
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v190, v161
	v_cvt_f32_i32_e32 v193, v164
	v_cvt_f32_i32_e32 v194, v165
	v_cvt_f32_i32_e32 v195, v166
	v_cvt_f32_i32_e32 v196, v167
	v_cvt_f32_i32_e32 v197, v168
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v158, v202
	v_cvt_f32_i32_e32 v155, v203
	v_cvt_f32_i32_e32 v156, v205
	v_cvt_f32_i32_e32 v157, v207
	v_cvt_f32_i32_e32 v161, v208
	v_cvt_f32_i32_e32 v162, v209
	v_cvt_f32_i32_e32 v166, v210
	v_cvt_f32_i32_e32 v163, v211
	v_cvt_f32_i32_e32 v167, v212
	v_cvt_f32_i32_e32 v164, v213
	v_cvt_f32_i32_e32 v168, v214
	v_cvt_f32_i32_e32 v165, v215
	v_cvt_f32_i32_e32 v169, v216
	s_mov_b32 s33, s1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s1, s36, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s30, s36, 13
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s1, s1, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s30, s30, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v49, v49, v191 :: v_dual_add_f32 v48, v48, v190
	v_add_f32_e32 v45, v45, v193
	v_dual_add_f32 v41, v41, v195 :: v_dual_add_f32 v40, v40, v194
	v_dual_add_f32 v37, v37, v197 :: v_dual_add_f32 v36, v36, v196
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v63, v63, v186 :: v_dual_add_nc_u32 v88, s30, v151
	v_dual_add_f32 v62, v62, v185 :: v_dual_add_f32 v59, v59, v188
	v_add_f32_e32 v54, v54, v170
	v_dual_add_f32 v58, v58, v187 :: v_dual_add_f32 v55, v55, v189
	v_dual_add_f32 v46, v46, v154 :: v_dual_add_nc_u32 v83, s1, v147
	v_dual_add_f32 v50, v50, v153 :: v_dual_add_f32 v51, v51, v171
	v_dual_add_f32 v38, v38, v156 :: v_dual_add_f32 v47, v47, v158
	v_add_f32_e32 v42, v42, v155
	v_dual_add_f32 v43, v43, v159 :: v_dual_add_f32 v18, v18, v161
	v_dual_add_f32 v39, v39, v160 :: v_dual_add_f32 v34, v34, v162
	v_dual_add_f32 v17, v17, v157 :: v_dual_add_f32 v30, v30, v163
	v_dual_add_f32 v35, v35, v166 :: v_dual_add_f32 v26, v26, v164
	v_dual_add_f32 v31, v31, v167 :: v_dual_add_f32 v24, v24, v165
	v_add_f32_e32 v27, v27, v168
	v_add_f32_e32 v25, v25, v169
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s40, s38, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s31, s1, 0x8000
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s1, s30, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s38, s37
	s_mov_b32 s38, s40
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v83, v152 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v88, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v88, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v88, v[9:12] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v88, v[13:16] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v2, v148
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v74, 0
	s_add_i32 s39, 0, 0x8000
	s_add_i32 s31, 0, 0x8400
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s33, 0, 0x4000
	v_mov_b32_e32 v75, v74
	v_mov_b32_e32 v70, v74
	v_mov_b32_e32 v72, v74
	v_mov_b32_e32 v66, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v68, v74 :: v_dual_mov_b32 v69, v75
	v_dual_mov_b32 v81, v75 :: v_dual_mov_b32 v80, v74
	v_mov_b32_e32 v71, v75
	v_mov_b32_e32 v73, v75
	v_dual_mov_b32 v77, v75 :: v_dual_mov_b32 v76, v74
	v_dual_mov_b32 v79, v75 :: v_dual_mov_b32 v78, v74
	v_dual_mov_b32 v67, v75 :: v_dual_mov_b32 v62, v74
	v_dual_mov_b32 v63, v75 :: v_dual_mov_b32 v64, v74
	v_dual_mov_b32 v65, v75 :: v_dual_mov_b32 v54, v74
	v_dual_mov_b32 v55, v75 :: v_dual_mov_b32 v56, v74
	v_dual_mov_b32 v57, v75 :: v_dual_mov_b32 v58, v74
	v_dual_mov_b32 v59, v75 :: v_dual_mov_b32 v60, v74
	v_dual_mov_b32 v61, v75 :: v_dual_mov_b32 v50, v74
	v_dual_mov_b32 v51, v75 :: v_dual_mov_b32 v52, v74
	v_dual_mov_b32 v53, v75 :: v_dual_mov_b32 v46, v74
	v_dual_mov_b32 v47, v75 :: v_dual_mov_b32 v48, v74
	v_dual_mov_b32 v49, v75 :: v_dual_mov_b32 v38, v74
	v_dual_mov_b32 v39, v75 :: v_dual_mov_b32 v40, v74
	v_dual_mov_b32 v41, v75 :: v_dual_mov_b32 v42, v74
	v_dual_mov_b32 v43, v75 :: v_dual_mov_b32 v44, v74
	v_mov_b32_e32 v45, v75
	v_dual_mov_b32 v17, v74 :: v_dual_mov_b32 v18, v75
	v_dual_mov_b32 v36, v74 :: v_dual_mov_b32 v37, v75
	v_dual_mov_b32 v34, v74 :: v_dual_mov_b32 v35, v75
	v_dual_mov_b32 v32, v74 :: v_dual_mov_b32 v33, v75
	v_dual_mov_b32 v26, v74 :: v_dual_mov_b32 v27, v75
	v_dual_mov_b32 v22, v74 :: v_dual_mov_b32 v23, v75
	v_dual_mov_b32 v30, v74 :: v_dual_mov_b32 v31, v75
	v_dual_mov_b32 v28, v74 :: v_dual_mov_b32 v29, v75
	v_dual_mov_b32 v24, v74 :: v_dual_mov_b32 v25, v75
	v_dual_mov_b32 v20, v74 :: v_dual_mov_b32 v21, v75
	s_add_i32 s1, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v83, s39, v82
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v15, s39, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v180, v83
	ds_load_u8_d16 v148, v83 offset:16
	ds_load_u8_d16 v181, v83 offset:32
	ds_load_u8_d16 v152, v83 offset:48
	ds_load_u8_d16 v182, v83 offset:64
	ds_load_u8_d16 v183, v83 offset:96
	ds_load_u8_d16 v162, v83 offset:112
	ds_load_u8_d16 v163, v83 offset:80
	ds_load_u8_d16 v184, v83 offset:128
	ds_load_u8_d16 v185, v83 offset:160
	ds_load_u8_d16 v186, v83 offset:192
	ds_load_u8_d16 v187, v83 offset:224
	ds_load_u8_d16 v164, v83 offset:240
	ds_load_u8_d16 v165, v83 offset:208
	ds_load_u8_d16 v169, v83 offset:176
	ds_load_u8_d16 v171, v83 offset:144
	ds_load_u8_d16 v188, v83 offset:256
	ds_load_u8_d16 v189, v83 offset:288
	ds_load_u8_d16 v190, v83 offset:320
	ds_load_u8_d16 v191, v83 offset:352
	ds_load_u8_d16 v172, v83 offset:368
	ds_load_u8_d16 v173, v83 offset:336
	ds_load_u8_d16 v174, v83 offset:304
	ds_load_u8_d16 v175, v83 offset:272
	ds_load_u8_d16 v192, v83 offset:384
	ds_load_u8_d16 v193, v83 offset:416
	ds_load_u8_d16 v194, v83 offset:448
	ds_load_u8_d16 v195, v83 offset:480
	ds_load_u8_d16 v176, v83 offset:496
	ds_load_u8_d16 v177, v83 offset:464
	ds_load_u8_d16 v178, v83 offset:432
	ds_load_u8_d16 v179, v83 offset:400
	ds_load_u8_d16 v149, v83 offset:512
	ds_load_u8_d16 v150, v83 offset:544
	ds_load_u8_d16 v151, v83 offset:576
	ds_load_u8_d16 v153, v83 offset:608
	ds_load_u8_d16 v3, v83 offset:624
	ds_load_u8_d16 v4, v83 offset:592
	ds_load_u8_d16 v5, v83 offset:560
	ds_load_u8_d16 v6, v83 offset:528
	ds_load_u8_d16 v154, v83 offset:640
	ds_load_u8_d16 v155, v83 offset:672
	ds_load_u8_d16 v156, v83 offset:704
	ds_load_u8_d16 v157, v83 offset:736
	ds_load_u8_d16 v7, v83 offset:752
	ds_load_u8_d16 v8, v83 offset:720
	ds_load_u8_d16 v9, v83 offset:688
	ds_load_u8_d16 v10, v83 offset:656
	ds_load_u8_d16 v158, v83 offset:768
	ds_load_u8_d16 v159, v83 offset:800
	ds_load_u8_d16 v160, v83 offset:832
	ds_load_u8_d16 v161, v83 offset:864
	ds_load_u8_d16 v11, v83 offset:880
	ds_load_u8_d16 v12, v83 offset:848
	ds_load_u8_d16 v13, v83 offset:816
	ds_load_u8_d16 v14, v83 offset:784
	ds_load_u8_d16 v166, v83 offset:896
	ds_load_u8_d16 v167, v83 offset:928
	ds_load_u8_d16 v168, v83 offset:960
	ds_load_u8_d16 v170, v83 offset:992
	ds_load_u8_d16 v15, v15
	ds_load_u8_d16 v16, v83 offset:976
	ds_load_u8_d16 v19, v83 offset:944
	ds_load_u8_d16 v147, v83 offset:912
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v83, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v83
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v83, v192, v193, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v88, v194, v195, 0xc0c0004
	s_mov_b32 s4, 0
	v_perm_b32 v89, v188, v189, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v223, v88, 16, v83
	v_perm_b32 v83, v184, v185, 0xc0c0004
	v_perm_b32 v88, v186, v187, 0xc0c0004
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v221, v88, 16, v83
	v_perm_b32 v83, v180, v181, 0xc0c0004
	v_perm_b32 v88, v182, v183, 0xc0c0004
	s_mov_b32 s11, s4
	v_perm_b32 v196, v190, v191, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v197, s34, v115
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v220, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s34, v124
	v_add_nc_u32_e32 v88, s34, v123
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v222, v196, 16, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v100
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v197, v197
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v196, s34, v113
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	ds_load_u8 v196, v196
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s34, v101
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v114
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v231, v88, 16, v83
	ds_load_u8 v89, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s34, v110
	v_add_nc_u32_e32 v88, s34, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v196, v89, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v196, s34, v116
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v196, v196
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s34, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v197, s34, v125
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v230, v196, 16, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v111
	v_add_nc_u32_e32 v196, s34, v98
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v197, v197
	ds_load_u8 v89, v89
	ds_load_u8 v196, v196
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v94
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v229, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s34, v245
	v_add_nc_u32_e32 v88, s34, v86
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s34, v84
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v129
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v228, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s34, v128
	v_add_nc_u32_e32 v88, s34, v127
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s34, v130
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v99
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v235, v88, 16, v83
	ds_load_u8 v89, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s34, v120
	v_add_nc_u32_e32 v88, s34, v119
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v196, v89, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v196, s34, v126
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v196, v196
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s34, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v234, v196, 16, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v196, v173, v172, 0xc0c0004
	ds_load_u8 v89, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v117
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v233, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s34, v97
	v_add_nc_u32_e32 v88, s34, v243
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s34, v118
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v89, v175, v174, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v232, v88, 16, v83
	v_perm_b32 v83, v179, v178, 0xc0c0004
	v_perm_b32 v88, v177, v176, 0xc0c0004
	v_lshl_or_b32 v238, v196, 16, v89
	v_dual_mov_b32 v203, s11 :: v_dual_mov_b32 v202, s10
	v_mov_b32_e32 v201, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v239, v88, 16, v83
	v_perm_b32 v83, v171, v169, 0xc0c0004
	v_perm_b32 v88, v165, v164, 0xc0c0004
	v_dual_mov_b32 v200, s8 :: v_dual_mov_b32 v199, s7
	v_dual_mov_b32 v198, s6 :: v_dual_mov_b32 v197, s5
	v_lshl_or_b32 v237, v88, 16, v83
	v_perm_b32 v83, v148, v152, 0xc0c0004
	v_perm_b32 v88, v163, v162, 0xc0c0004
	v_mov_b32_e32 v196, s4
	v_perm_b32 v89, v158, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v236, v88, 16, v83
	v_perm_b32 v83, v166, v167, 0xc0c0004
	v_perm_b32 v88, v168, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[204:211], v[228:231], v[220:223], v[196:203] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[212:219], v[232:235], v[220:223], v[196:203] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[220:227], v[228:231], v[236:239], v[196:203] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v231, v88, 16, v83
	v_perm_b32 v83, v154, v155, 0xc0c0004
	v_perm_b32 v88, v156, v157, 0xc0c0004
	v_perm_b32 v228, v160, v161, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[196:203], v[232:235], v[236:239], v[196:203] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v233, s34, v91
	v_add_nc_u32_e32 v232, s34, v108
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v229, v88, 16, v83
	v_perm_b32 v83, v149, v150, 0xc0c0004
	v_perm_b32 v88, v151, v153, 0xc0c0004
	v_lshl_or_b32 v230, v228, 16, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v95
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v233, v233
	ds_load_u8 v232, v232
	v_lshl_or_b32 v228, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s34, v85
	v_add_nc_u32_e32 v88, s34, v93
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v236, s34, v139
	v_add_nc_u32_e32 v237, s34, v141
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	ds_load_u8 v236, v236
	ds_load_u8 v237, v237
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s34, v96
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v90
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v235, v88, 16, v83
	ds_load_u8 v89, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s34, v105
	v_add_nc_u32_e32 v88, s34, v104
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v232, v89, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v232, s34, v92
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v232, v232
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s34, v107
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v232, v233, v232, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v234, v232, 16, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v106
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v102
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v233, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s34, v112
	v_add_nc_u32_e32 v88, s34, v244
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s34, v103
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v145
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v232, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s34, v144
	v_add_nc_u32_e32 v88, s34, v143
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	v_wmma_i32_16x16x16_iu8 v[204:211], v[232:235], v[228:231], v[204:211] neg_lo:[1,1,0]
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	v_cvt_f32_i32_e32 v206, v206
	v_cvt_f32_i32_e32 v207, v207
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v209, v209
	v_cvt_f32_i32_e32 v210, v210
	v_cvt_f32_i32_e32 v211, v211
	v_cvt_f32_i32_e32 v204, v204
	v_cvt_f32_i32_e32 v205, v205
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v79, v79, v207 :: v_dual_add_f32 v78, v78, v206
	v_dual_add_f32 v73, v73, v209 :: v_dual_add_f32 v72, v72, v208
	v_dual_add_f32 v69, v69, v211 :: v_dual_add_f32 v68, v68, v210
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v81, v81, v205 :: v_dual_add_f32 v80, v80, v204
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s34, v146
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v140
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v239, v88, 16, v83
	ds_load_u8 v89, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s34, v136
	v_add_nc_u32_e32 v88, s34, v135
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v236, v89, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v236, s34, v142
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v236, v236
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s34, v138
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v236, v237, v236, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v238, v236, 16, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v137
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s34, v133
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v237, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s34, v132
	v_add_nc_u32_e32 v88, s34, v131
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s34, v134
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v89, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v236, v88, 16, v83
	v_perm_b32 v83, v147, v19, 0xc0c0004
	v_perm_b32 v88, v16, v15, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[212:219], v[236:239], v[228:231], v[212:219] neg_lo:[1,1,0]
	v_perm_b32 v228, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v231, v88, 16, v83
	v_perm_b32 v83, v10, v9, 0xc0c0004
	v_perm_b32 v88, v8, v7, 0xc0c0004
	v_lshl_or_b32 v230, v228, 16, v89
	v_cvt_f32_i32_e32 v89, v214
	v_cvt_f32_i32_e32 v214, v217
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v229, v88, 16, v83
	v_perm_b32 v83, v6, v5, 0xc0c0004
	v_perm_b32 v88, v4, v3, 0xc0c0004
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v60, v60, v89 :: v_dual_add_f32 v57, v57, v214
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v228, v88, 16, v83
	v_cvt_f32_i32_e32 v83, v212
	v_cvt_f32_i32_e32 v88, v213
	v_cvt_f32_i32_e32 v212, v215
	v_cvt_f32_i32_e32 v213, v216
	v_wmma_i32_16x16x16_iu8 v[220:227], v[232:235], v[228:231], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[196:203], v[236:239], v[228:231], v[196:203] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v215, v218
	v_cvt_f32_i32_e32 v216, v219
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v65, v65, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v217, v220
	v_cvt_f32_i32_e32 v218, v221
	v_cvt_f32_i32_e32 v219, v222
	v_cvt_f32_i32_e32 v220, v223
	v_cvt_f32_i32_e32 v221, v224
	v_cvt_f32_i32_e32 v222, v225
	v_cvt_f32_i32_e32 v223, v226
	v_cvt_f32_i32_e32 v224, v227
	v_cvt_f32_i32_e32 v196, v196
	v_cvt_f32_i32_e32 v197, v197
	v_cvt_f32_i32_e32 v198, v198
	v_cvt_f32_i32_e32 v199, v199
	v_cvt_f32_i32_e32 v200, v200
	v_cvt_f32_i32_e32 v201, v201
	v_cvt_f32_i32_e32 v202, v202
	v_cvt_f32_i32_e32 v203, v203
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v64, v64, v83 :: v_dual_add_f32 v61, v61, v212
	v_dual_add_f32 v56, v56, v213 :: v_dual_add_f32 v53, v53, v216
	v_dual_add_f32 v52, v52, v215 :: v_dual_add_f32 v49, v49, v218
	v_dual_add_f32 v48, v48, v217 :: v_dual_add_f32 v45, v45, v220
	v_dual_add_f32 v44, v44, v219 :: v_dual_add_f32 v41, v41, v222
	v_dual_add_f32 v40, v40, v221 :: v_dual_add_f32 v37, v37, v224
	v_dual_add_f32 v36, v36, v223 :: v_dual_add_f32 v33, v33, v197
	v_dual_add_f32 v32, v32, v196 :: v_dual_add_f32 v29, v29, v199
	v_dual_add_f32 v28, v28, v198 :: v_dual_add_f32 v23, v23, v201
	v_dual_add_f32 v22, v22, v200 :: v_dual_add_f32 v21, v21, v203
	v_add_f32_e32 v20, v20, v202
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v83, v192, v193, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v88, v194, v195, 0xc0c0004
	s_mov_b32 s4, 0
	v_perm_b32 v89, v188, v189, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v198, v88, 16, v83
	v_perm_b32 v83, v184, v185, 0xc0c0004
	v_perm_b32 v88, v186, v187, 0xc0c0004
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v196, v88, 16, v83
	v_perm_b32 v83, v180, v181, 0xc0c0004
	v_perm_b32 v88, v182, v183, 0xc0c0004
	s_mov_b32 s11, s4
	v_perm_b32 v188, v190, v191, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v181, s33, v115
	v_add_nc_u32_e32 v180, s33, v113
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v195, v88, 16, v83
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v83, s33, v124
	v_add_nc_u32_e32 v88, s33, v123
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v197, v188, 16, v89
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v100
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v181, v181
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v89, v89
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v147, v19, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	v_perm_b32 v13, v14, v13, 0xc0c0004
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_perm_b32 v7, v8, v7, 0xc0c0004
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_lshl_or_b32 v12, v15, 16, v19
	v_lshl_or_b32 v11, v11, 16, v13
	v_lshl_or_b32 v10, v7, 16, v9
	ds_load_u8 v180, v180
	v_lshl_or_b32 v9, v3, 16, v5
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v88, s33, v101
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v114
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v206, v88, 16, v83
	ds_load_u8 v89, v89
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v83, s33, v110
	v_add_nc_u32_e32 v88, s33, v109
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v180, v89, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v180, s33, v116
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v180, v180
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v88, s33, v87
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v181, s33, v125
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v205, v180, 16, v89
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v111
	v_add_nc_u32_e32 v180, s33, v98
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v181, v181
	ds_load_u8 v89, v89
	ds_load_u8 v180, v180
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v94
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v204, v88, 16, v83
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v83, s33, v245
	v_add_nc_u32_e32 v88, s33, v86
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v89, v89
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v88, s33, v84
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v129
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v203, v88, 16, v83
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v83, s33, v128
	v_add_nc_u32_e32 v88, s33, v127
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v89, v89
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v88, s33, v130
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v99
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v210, v88, 16, v83
	ds_load_u8 v89, v89
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v83, s33, v120
	v_add_nc_u32_e32 v88, s33, v119
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v180, v89, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v180, s33, v126
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v180, v180
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v88, s33, v122
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v209, v180, 16, v89
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v121
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v89, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v117
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v208, v88, 16, v83
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v83, s33, v97
	v_add_nc_u32_e32 v88, s33, v243
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v89, v89
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v88, s33, v118
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v89, v175, v174, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v207, v88, 16, v83
	v_perm_b32 v83, v179, v178, 0xc0c0004
	v_perm_b32 v88, v177, v176, 0xc0c0004
	v_lshl_or_b32 v213, v172, 16, v89
	v_perm_b32 v89, v158, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v214, v88, 16, v83
	v_perm_b32 v83, v171, v169, 0xc0c0004
	v_perm_b32 v88, v165, v164, 0xc0c0004
	v_dual_mov_b32 v178, s11 :: v_dual_mov_b32 v177, s10
	v_dual_mov_b32 v176, s9 :: v_dual_mov_b32 v175, s8
	v_lshl_or_b32 v212, v88, 16, v83
	v_perm_b32 v83, v148, v152, 0xc0c0004
	v_perm_b32 v88, v163, v162, 0xc0c0004
	v_perm_b32 v148, v160, v161, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v152, s33, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v174, s7 :: v_dual_mov_b32 v173, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v211, v88, 16, v83
	v_perm_b32 v83, v166, v167, 0xc0c0004
	v_perm_b32 v88, v168, v170, 0xc0c0004
	v_lshl_or_b32 v158, v148, 16, v89
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v95
	v_add_nc_u32_e32 v148, s33, v108
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v172, s5
	v_lshl_or_b32 v159, v88, 16, v83
	v_perm_b32 v83, v154, v155, 0xc0c0004
	v_perm_b32 v88, v156, v157, 0xc0c0004
	ds_load_u8 v89, v89
	v_mov_b32_e32 v171, s4
	ds_load_u8 v148, v148
	ds_load_u8 v152, v152
	v_lshl_or_b32 v157, v88, 16, v83
	v_perm_b32 v83, v149, v150, 0xc0c0004
	v_perm_b32 v88, v151, v153, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v149, s33, v91
	v_add_nc_u32_e32 v153, s33, v141
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[179:186], v[203:206], v[195:198], v[171:178] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v156, v88, 16, v83
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v83, s33, v85
	v_add_nc_u32_e32 v88, s33, v93
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v149, v149
	v_wmma_i32_16x16x16_iu8 v[187:194], v[207:210], v[195:198], v[171:178] neg_lo:[1,1,0]
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	v_wmma_i32_16x16x16_iu8 v[195:202], v[203:206], v[211:214], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[171:178], v[207:210], v[211:214], v[171:178] neg_lo:[1,1,0]
	ds_load_u8 v153, v153
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v88, s33, v96
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v90
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v151, v88, 16, v83
	ds_load_u8 v89, v89
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v83, s33, v105
	v_add_nc_u32_e32 v88, s33, v104
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v148, v89, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v148, s33, v92
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v148, v148
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v88, s33, v107
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v148, 16, v89
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v106
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v89, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v102
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v149, v88, 16, v83
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v83, s33, v112
	v_add_nc_u32_e32 v88, s33, v244
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v89, v89
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v88, s33, v103
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v145
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v148, v88, 16, v83
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v83, s33, v144
	v_add_nc_u32_e32 v88, s33, v143
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v89, v89
	v_wmma_i32_16x16x16_iu8 v[179:186], v[148:151], v[156:159], v[179:186] neg_lo:[1,1,0]
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	v_wmma_i32_16x16x16_iu8 v[195:202], v[148:151], v[9:12], v[195:202] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v13, v198
	v_cvt_f32_i32_e32 v14, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v15, v200
	v_cvt_f32_i32_e32 v16, v199
	v_cvt_f32_i32_e32 v19, v202
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v43, v43, v13 :: v_dual_add_f32 v42, v42, v14
	v_dual_add_f32 v39, v39, v15 :: v_dual_add_f32 v38, v38, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v18, v18, v19
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v88, s33, v146
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v140
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v155, v88, 16, v83
	ds_load_u8 v89, v89
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v83, s33, v136
	v_add_nc_u32_e32 v88, s33, v135
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v152, v89, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v152, s33, v142
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v88, s33, v138
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v152, 16, v89
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v137
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v89, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v89, s33, v133
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v153, v88, 16, v83
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v83, s33, v132
	v_add_nc_u32_e32 v88, s33, v131
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v89, v89
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v88, s33, v134
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v152, v88, 16, v83
	v_cvt_f32_i32_e32 v83, v201
	v_wmma_i32_16x16x16_iu8 v[187:194], v[152:155], v[156:159], v[187:194] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[171:178], v[152:155], v[9:12], v[171:178] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v153, v182
	v_cvt_f32_i32_e32 v11, v196
	v_cvt_f32_i32_e32 v12, v195
	v_cvt_f32_i32_e32 v3, v188
	v_cvt_f32_i32_e32 v4, v187
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v77, v77, v153
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v153, v181
	v_cvt_f32_i32_e32 v5, v190
	v_cvt_f32_i32_e32 v6, v189
	v_cvt_f32_i32_e32 v7, v192
	v_cvt_f32_i32_e32 v8, v191
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v76, v76, v153
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v153, v184
	v_cvt_f32_i32_e32 v9, v194
	v_cvt_f32_i32_e32 v10, v193
	v_cvt_f32_i32_e32 v88, v172
	v_cvt_f32_i32_e32 v89, v171
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v71, v71, v153
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v153, v183
	v_cvt_f32_i32_e32 v147, v174
	v_cvt_f32_i32_e32 v148, v173
	v_cvt_f32_i32_e32 v149, v176
	v_cvt_f32_i32_e32 v150, v175
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v70, v70, v153
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v153, v186
	v_cvt_f32_i32_e32 v151, v178
	v_cvt_f32_i32_e32 v152, v177
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v63, v63, v3 :: v_dual_add_f32 v62, v62, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_f32_e32 v67, v67, v153
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v153, v185
	v_cvt_f32_i32_e32 v3, v180
	v_cvt_f32_i32_e32 v4, v179
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v59, v59, v5 :: v_dual_add_f32 v58, v58, v6
	v_dual_add_f32 v66, v66, v153 :: v_dual_add_f32 v55, v55, v7
	v_dual_add_f32 v54, v54, v8 :: v_dual_add_f32 v51, v51, v9
	v_dual_add_f32 v50, v50, v10 :: v_dual_add_f32 v47, v47, v11
	v_dual_add_f32 v46, v46, v12 :: v_dual_add_f32 v17, v17, v83
	v_dual_add_f32 v35, v35, v88 :: v_dual_add_f32 v34, v34, v89
	v_dual_add_f32 v31, v31, v147 :: v_dual_add_f32 v30, v30, v148
	v_dual_add_f32 v27, v27, v149 :: v_dual_add_f32 v26, v26, v150
	v_dual_add_f32 v25, v25, v151 :: v_dual_add_f32 v24, v24, v152
	v_dual_add_f32 v75, v75, v3 :: v_dual_add_f32 v74, v74, v4
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_waitcnt lgkmcnt(43)
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v83, s31, v82
	v_dual_mov_b32 v225, 0 :: v_dual_add_nc_u32 v2, s31, v2
	scratch_store_b32 off, v82, off offset:4 ; 4-byte Folded Spill
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(35)
	ds_load_u8_d16 v176, v83
	ds_load_u8_d16 v1, v83 offset:16
	s_waitcnt lgkmcnt(36)
	ds_load_u8_d16 v177, v83 offset:32
	s_waitcnt lgkmcnt(30)
	ds_load_u8_d16 v3, v83 offset:48
	ds_load_u8_d16 v178, v83 offset:64
	ds_load_u8_d16 v179, v83 offset:96
	s_waitcnt lgkmcnt(32)
	ds_load_u8_d16 v4, v83 offset:112
	s_waitcnt lgkmcnt(32)
	ds_load_u8_d16 v5, v83 offset:80
	ds_load_u8_d16 v184, v83 offset:128
	ds_load_u8_d16 v185, v83 offset:160
	ds_load_u8_d16 v186, v83 offset:192
	ds_load_u8_d16 v187, v83 offset:224
	s_waitcnt lgkmcnt(14)
	ds_load_u8_d16 v16, v83 offset:240
	s_waitcnt lgkmcnt(13)
	ds_load_u8_d16 v147, v83 offset:208
	ds_load_u8_d16 v148, v83 offset:176
	ds_load_u8_d16 v149, v83 offset:144
	ds_load_u8_d16 v188, v83 offset:256
	ds_load_u8_d16 v189, v83 offset:288
	ds_load_u8_d16 v190, v83 offset:320
	ds_load_u8_d16 v191, v83 offset:352
	ds_load_u8_d16 v154, v83 offset:368
	ds_load_u8_d16 v155, v83 offset:336
	ds_load_u8_d16 v156, v83 offset:304
	ds_load_u8_d16 v157, v83 offset:272
	ds_load_u8_d16 v192, v83 offset:384
	ds_load_u8_d16 v193, v83 offset:416
	ds_load_u8_d16 v194, v83 offset:448
	ds_load_u8_d16 v195, v83 offset:480
	ds_load_u8_d16 v11, v83 offset:496
	ds_load_u8_d16 v12, v83 offset:464
	ds_load_u8_d16 v13, v83 offset:432
	ds_load_u8_d16 v14, v83 offset:400
	ds_load_u8_d16 v163, v83 offset:512
	ds_load_u8_d16 v164, v83 offset:544
	ds_load_u8_d16 v165, v83 offset:576
	ds_load_u8_d16 v166, v83 offset:608
	ds_load_u8_d16 v161, v83 offset:624
	ds_load_u8_d16 v162, v83 offset:592
	ds_load_u8_d16 v0, v83 offset:560
	ds_load_u8_d16 v9, v83 offset:528
	ds_load_u8_d16 v167, v83 offset:640
	ds_load_u8_d16 v168, v83 offset:672
	ds_load_u8_d16 v169, v83 offset:704
	ds_load_u8_d16 v170, v83 offset:736
	ds_load_u8_d16 v10, v83 offset:752
	ds_load_u8_d16 v150, v83 offset:720
	ds_load_u8_d16 v151, v83 offset:688
	ds_load_u8_d16 v152, v83 offset:656
	ds_load_u8_d16 v171, v83 offset:768
	ds_load_u8_d16 v173, v83 offset:800
	ds_load_u8_d16 v174, v83 offset:832
	ds_load_u8_d16 v175, v83 offset:864
	ds_load_u8_d16 v153, v83 offset:880
	ds_load_u8_d16 v158, v83 offset:848
	ds_load_u8_d16 v159, v83 offset:816
	ds_load_u8_d16 v160, v83 offset:784
	ds_load_u8_d16 v180, v83 offset:896
	ds_load_u8_d16 v181, v83 offset:928
	ds_load_u8_d16 v182, v83 offset:960
	ds_load_u8_d16 v183, v83 offset:992
	ds_load_u8_d16 v2, v2
	ds_load_u8_d16 v82, v83 offset:976
	ds_load_u8_d16 v19, v83 offset:944
	ds_load_u8_d16 v15, v83 offset:912
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v88, 0, 1, s2
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v224, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v88
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v217, 0
	v_mov_b32_e32 v220, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v83, v192, v193, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v88, v194, v195, 0xc0c0004
	s_mov_b32 s4, 0
	v_perm_b32 v89, v188, v189, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v210, v88, 16, v83
	v_perm_b32 v83, v184, v185, 0xc0c0004
	v_perm_b32 v88, v186, v187, 0xc0c0004
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v208, v88, 16, v83
	v_perm_b32 v83, v176, v177, 0xc0c0004
	v_perm_b32 v88, v178, v179, 0xc0c0004
	s_mov_b32 s11, s4
	v_perm_b32 v196, v190, v191, 0xc0c0004
	v_dual_mov_b32 v222, s11 :: v_dual_mov_b32 v221, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v207, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s30, v124
	v_add_nc_u32_e32 v88, s30, v123
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v209, v196, 16, v89
	v_dual_mov_b32 v220, s9 :: v_dual_add_nc_u32 v89, s30, v100
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	v_dual_mov_b32 v216, s5 :: v_dual_add_nc_u32 v197, s30, v115
	ds_load_u8 v89, v89
	v_dual_mov_b32 v217, s6 :: v_dual_add_nc_u32 v196, s30, v113
	ds_load_u8 v197, v197
	v_dual_mov_b32 v219, s8 :: v_dual_mov_b32 v218, s7
	ds_load_u8 v196, v196
	v_mov_b32_e32 v215, s4
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s30, v101
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s30, v114
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v226, v88, 16, v83
	ds_load_u8 v89, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s30, v110
	v_add_nc_u32_e32 v88, s30, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v196, v89, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v196, s30, v116
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v196, v196
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s30, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v197, s30, v125
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v225, v196, 16, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s30, v111
	v_add_nc_u32_e32 v196, s30, v98
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v197, v197
	ds_load_u8 v89, v89
	ds_load_u8 v196, v196
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s30, v94
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v224, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s30, v245
	v_add_nc_u32_e32 v88, s30, v86
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s30, v84
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s30, v129
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v223, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s30, v128
	v_add_nc_u32_e32 v88, s30, v127
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	v_wmma_i32_16x16x16_iu8 v[227:234], v[223:226], v[207:210], v[215:222] neg_lo:[1,1,0]
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s30, v130
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s30, v99
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v238, v88, 16, v83
	ds_load_u8 v89, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s30, v120
	v_add_nc_u32_e32 v88, s30, v119
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v196, v89, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v196, s30, v126
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v196, v196
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s30, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v197, s30, v91
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v237, v196, 16, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s30, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v196, v155, v154, 0xc0c0004
	ds_load_u8 v197, v197
	ds_load_u8 v89, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s30, v117
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v236, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s30, v97
	v_add_nc_u32_e32 v88, s30, v243
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s30, v118
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v89, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v235, v88, 16, v83
	v_perm_b32 v83, v14, v13, 0xc0c0004
	v_perm_b32 v88, v12, v11, 0xc0c0004
	v_lshl_or_b32 v241, v196, 16, v89
	v_perm_b32 v89, v171, v173, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[199:206], v[235:238], v[207:210], v[215:222] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v242, v88, 16, v83
	v_perm_b32 v83, v149, v148, 0xc0c0004
	v_perm_b32 v88, v147, v16, 0xc0c0004
	v_perm_b32 v196, v174, v175, 0xc0c0004
	v_lshl_or_b32 v240, v88, 16, v83
	v_perm_b32 v83, v1, v3, 0xc0c0004
	v_perm_b32 v88, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v239, v88, 16, v83
	v_perm_b32 v83, v180, v181, 0xc0c0004
	v_perm_b32 v88, v182, v183, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[207:214], v[223:226], v[239:242], v[215:222] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v226, v88, 16, v83
	v_perm_b32 v83, v167, v168, 0xc0c0004
	v_perm_b32 v88, v169, v170, 0xc0c0004
	v_lshl_or_b32 v225, v196, 16, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s30, v95
	v_add_nc_u32_e32 v196, s30, v108
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[215:222], v[235:238], v[239:242], v[215:222] neg_lo:[1,1,0]
	v_lshl_or_b32 v224, v88, 16, v83
	v_perm_b32 v83, v163, v164, 0xc0c0004
	v_perm_b32 v88, v165, v166, 0xc0c0004
	ds_load_u8 v89, v89
	ds_load_u8 v196, v196
	v_lshl_or_b32 v223, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s30, v85
	v_add_nc_u32_e32 v88, s30, v93
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s30, v96
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s30, v90
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v238, v88, 16, v83
	ds_load_u8 v89, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s30, v105
	v_add_nc_u32_e32 v88, s30, v104
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v196, v89, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v196, s30, v92
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v196, v196
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s30, v107
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v197, s30, v141
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v237, v196, 16, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s30, v106
	v_add_nc_u32_e32 v196, s30, v139
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v197, v197
	ds_load_u8 v89, v89
	ds_load_u8 v196, v196
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s30, v102
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v236, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s30, v112
	v_add_nc_u32_e32 v88, s30, v244
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s30, v103
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s30, v145
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v235, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s30, v144
	v_add_nc_u32_e32 v88, s30, v143
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	v_wmma_i32_16x16x16_iu8 v[227:234], v[235:238], v[223:226], v[227:234] neg_lo:[1,1,0]
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s30, v146
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s30, v140
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v242, v88, 16, v83
	ds_load_u8 v89, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s30, v136
	v_add_nc_u32_e32 v88, s30, v135
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v196, v89, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v196, s30, v142
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v196, v196
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s30, v138
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v241, v196, 16, v89
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s30, v137
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v196, v158, v153, 0xc0c0004
	ds_load_u8 v89, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s30, v133
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v240, v88, 16, v83
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v83, s30, v132
	v_add_nc_u32_e32 v88, s30, v131
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v89
	ds_load_u8 v83, v83
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v88, s30, v134
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v88, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v89, v160, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v239, v88, 16, v83
	v_perm_b32 v83, v15, v19, 0xc0c0004
	v_perm_b32 v88, v82, v2, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[199:206], v[239:242], v[223:226], v[199:206] neg_lo:[1,1,0]
	v_lshl_or_b32 v225, v196, 16, v89
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v226, v88, 16, v83
	v_perm_b32 v83, v152, v151, 0xc0c0004
	v_perm_b32 v88, v150, v10, 0xc0c0004
	v_cvt_f32_i32_e32 v196, v199
	v_cvt_f32_i32_e32 v198, v200
	v_cvt_f32_i32_e32 v199, v201
	v_cvt_f32_i32_e32 v202, v202
	v_lshl_or_b32 v224, v88, 16, v83
	v_perm_b32 v83, v9, v0, 0xc0c0004
	v_perm_b32 v88, v162, v161, 0xc0c0004
	v_cvt_f32_i32_e32 v197, v203
	v_cvt_f32_i32_e32 v200, v204
	v_cvt_f32_i32_e32 v201, v205
	v_cvt_f32_i32_e32 v204, v206
	v_lshl_or_b32 v223, v88, 16, v83
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[235:238], v[223:226], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[239:242], v[223:226], v[215:222] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v224, v230
	v_cvt_f32_i32_e32 v223, v233
	v_cvt_f32_i32_e32 v226, v234
	v_cvt_f32_i32_e32 v203, v207
	v_cvt_f32_i32_e32 v206, v208
	v_cvt_f32_i32_e32 v207, v209
	v_cvt_f32_i32_e32 v210, v210
	v_cvt_f32_i32_e32 v205, v211
	v_cvt_f32_i32_e32 v208, v212
	v_cvt_f32_i32_e32 v209, v213
	v_cvt_f32_i32_e32 v212, v214
	v_cvt_f32_i32_e32 v211, v215
	v_cvt_f32_i32_e32 v214, v216
	v_cvt_f32_i32_e32 v215, v217
	v_cvt_f32_i32_e32 v218, v218
	v_cvt_f32_i32_e32 v213, v219
	v_cvt_f32_i32_e32 v216, v220
	v_cvt_f32_i32_e32 v217, v221
	v_cvt_f32_i32_e32 v220, v222
	v_cvt_f32_i32_e32 v221, v229
	v_cvt_f32_i32_e32 v219, v231
	v_cvt_f32_i32_e32 v222, v232
	v_cvt_f32_i32_e32 v225, v227
	v_cvt_f32_i32_e32 v227, v228
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_waitcnt lgkmcnt(56)
	v_mov_b16_e32 v8.l, v5.l
	v_mov_b16_e32 v7.l, v4.l
	v_mov_b16_e32 v6.l, v3.l
	v_mov_b16_e32 v5.l, v1.l
	v_dual_mov_b32 v4, v94 :: v_dual_mov_b32 v3, v244
	v_dual_mov_b32 v1, v243 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_mov_b32 s4, 0
	.loc	1 358 31 is_stmt 1              ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v172, s1, v98
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v83, s1, v146
	v_add_nc_u32_e32 v146, s1, v99
	v_add_nc_u32_e32 v99, s1, v124
	v_add_nc_u32_e32 v98, s1, v123
	v_add_nc_u32_e32 v101, s1, v101
	v_add_nc_u32_e32 v89, s1, v95
	v_add_nc_u32_e32 v95, s1, v114
	v_add_nc_u32_e32 v228, s1, v122
	v_add_nc_u32_e32 v229, s1, v120
	v_add_nc_u32_e32 v230, s1, v119
	v_add_nc_u32_e32 v231, s1, v118
	v_add_nc_u32_e32 v232, s1, v117
	v_add_nc_u32_e32 v233, s1, v97
	v_add_nc_u32_e32 v88, s1, v96
	v_add_nc_u32_e32 v117, s1, v85
	v_add_nc_u32_e32 v118, s1, v93
	v_add_nc_u32_e32 v119, s1, v92
	v_add_nc_u32_e32 v120, s1, v91
	v_add_nc_u32_e32 v122, s1, v90
	v_add_nc_u32_e32 v100, s1, v100
	v_add_nc_u32_e32 v97, s1, v116
	v_add_nc_u32_e32 v96, s1, v115
	v_add_nc_u32_e32 v94, s1, v113
	v_add_nc_u32_e32 v93, s1, v87
	v_add_nc_u32_e32 v92, s1, v111
	v_add_nc_u32_e32 v91, s1, v110
	v_add_nc_u32_e32 v90, s1, v109
	v_add_nc_u32_e32 v85, s1, v84
	v_add_nc_u32_e32 v84, s1, v4
	v_add_nc_u32_e32 v87, s1, v245
	v_add_nc_u32_e32 v86, s1, v86
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v99, v99
	ds_load_u8 v98, v98
	ds_load_u8 v101, v101
	ds_load_u8 v95, v95
	ds_load_u8 v94, v94
	ds_load_u8 v97, v97
	ds_load_u8 v96, v96
	ds_load_u8 v100, v100
	ds_load_u8 v91, v91
	ds_load_u8 v90, v90
	ds_load_u8 v93, v93
	ds_load_u8 v87, v87
	ds_load_u8 v86, v86
	ds_load_u8 v85, v85
	ds_load_u8 v84, v84
	ds_load_u8 v92, v92
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v109, v192, v193, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v110, v194, v195, 0xc0c0004
	v_perm_b32 v111, v188, v189, 0xc0c0004
	v_perm_b32 v113, v190, v191, 0xc0c0004
	v_perm_b32 v116, v176, v177, 0xc0c0004
	v_perm_b32 v124, v178, v179, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v108, s1, v108
	v_add_nc_u32_e32 v107, s1, v107
	v_add_nc_u32_e32 v106, s1, v106
	v_add_nc_u32_e32 v105, s1, v105
	v_add_nc_u32_e32 v104, s1, v104
	v_add_nc_u32_e32 v103, s1, v103
	v_add_nc_u32_e32 v102, s1, v102
	v_add_nc_u32_e32 v176, s1, v3
	v_add_nc_u32_e32 v123, s1, v112
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v112, v110, 16, v109
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v86, v86, v87, 0xc0c0004
	v_lshl_or_b32 v111, v113, 16, v111
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v84, v84, v85, 0xc0c0004
	v_lshl_or_b32 v109, v124, 16, v116
	v_perm_b32 v98, v98, v99, 0xc0c0004
	v_perm_b32 v99, v100, v101, 0xc0c0004
	v_perm_b32 v114, v184, v185, 0xc0c0004
	v_lshl_or_b32 v113, v84, 16, v86
	ds_load_u8 v84, v117
	ds_load_u8 v101, v118
	ds_load_u8 v117, v88
	ds_load_u8 v118, v122
	ds_load_u8 v108, v108
	ds_load_u8 v122, v119
	ds_load_u8 v124, v120
	ds_load_u8 v177, v89
	ds_load_u8 v105, v105
	ds_load_u8 v104, v104
	ds_load_u8 v107, v107
	ds_load_u8 v178, v123
	ds_load_u8 v176, v176
	ds_load_u8 v103, v103
	ds_load_u8 v102, v102
	ds_load_u8 v106, v106
	v_perm_b32 v119, v180, v181, 0xc0c0004
	v_perm_b32 v120, v182, v183, 0xc0c0004
	v_perm_b32 v123, v171, v173, 0xc0c0004
	v_perm_b32 v171, v174, v175, 0xc0c0004
	v_perm_b32 v115, v186, v187, 0xc0c0004
	v_perm_b32 v90, v90, v91, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v91, v92, v93, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v128, s1, v128
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v120, v120, 16, v119
	v_lshl_or_b32 v119, v171, 16, v123
	v_perm_b32 v123, v167, v168, 0xc0c0004
	v_perm_b32 v167, v169, v170, 0xc0c0004
	v_perm_b32 v163, v163, v164, 0xc0c0004
	v_perm_b32 v164, v165, v166, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v84, v101, v84, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v101, v177, v117, 0xc0c0004
	v_perm_b32 v108, v108, v118, 0xc0c0004
	v_perm_b32 v122, v124, v122, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v104, v104, v105, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v107, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v127, s1, v127
	v_add_nc_u32_e32 v130, s1, v130
	v_add_nc_u32_e32 v145, s1, v145
	v_add_nc_u32_e32 v144, s1, v144
	v_add_nc_u32_e32 v143, s1, v143
	v_add_nc_u32_e32 v142, s1, v142
	v_add_nc_u32_e32 v141, s1, v141
	v_add_nc_u32_e32 v140, s1, v140
	v_add_nc_u32_e32 v139, s1, v139
	v_add_nc_u32_e32 v138, s1, v138
	v_add_nc_u32_e32 v137, s1, v137
	v_add_nc_u32_e32 v136, s1, v136
	v_add_nc_u32_e32 v135, s1, v135
	v_add_nc_u32_e32 v134, s1, v134
	v_add_nc_u32_e32 v133, s1, v133
	v_add_nc_u32_e32 v132, s1, v132
	v_add_nc_u32_e32 v131, s1, v131
	v_add_nc_u32_e32 v129, s1, v129
	v_add_nc_u32_e32 v126, s1, v126
	v_add_nc_u32_e32 v125, s1, v125
	v_add_nc_u32_e32 v121, s1, v121
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v110, v115, 16, v114
	v_lshl_or_b32 v114, v91, 16, v90
	v_dual_mov_b32 v92, s11 :: v_dual_mov_b32 v91, s10
	v_dual_mov_b32 v90, s9 :: v_dual_mov_b32 v89, s8
	v_dual_mov_b32 v88, s7 :: v_dual_mov_b32 v87, s6
	v_dual_mov_b32 v86, s5 :: v_dual_mov_b32 v85, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v173, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v118, v167, 16, v123
	v_lshl_or_b32 v117, v164, 16, v163
	v_lshl_or_b32 v124, v101, 16, v84
	v_lshl_or_b32 v123, v122, 16, v108
	v_lshl_or_b32 v122, v105, 16, v104
	ds_load_u8 v101, v128
	ds_load_u8 v104, v127
	ds_load_u8 v105, v130
	ds_load_u8 v106, v146
	ds_load_u8 v107, v172
	ds_load_u8 v108, v126
	ds_load_u8 v125, v125
	ds_load_u8 v126, v129
	ds_load_u8 v127, v229
	ds_load_u8 v128, v230
	ds_load_u8 v129, v228
	ds_load_u8 v130, v233
	ds_load_u8 v146, v173
	ds_load_u8 v163, v231
	ds_load_u8 v164, v232
	ds_load_u8 v121, v121
	ds_load_u8 v144, v144
	ds_load_u8 v143, v143
	ds_load_u8 v83, v83
	ds_load_u8 v140, v140
	ds_load_u8 v139, v139
	ds_load_u8 v142, v142
	ds_load_u8 v141, v141
	ds_load_u8 v145, v145
	ds_load_u8 v136, v136
	ds_load_u8 v135, v135
	ds_load_u8 v138, v138
	ds_load_u8 v132, v132
	ds_load_u8 v131, v131
	ds_load_u8 v134, v134
	ds_load_u8 v133, v133
	ds_load_u8 v137, v137
	v_perm_b32 v94, v94, v95, 0xc0c0004
	v_perm_b32 v95, v96, v97, 0xc0c0004
	v_perm_b32 v84, v176, v178, 0xc0c0004
	v_perm_b32 v102, v102, v103, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v101, v104, v101, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v103, v126, v105, 0xc0c0004
	v_perm_b32 v104, v107, v106, 0xc0c0004
	v_perm_b32 v105, v125, v108, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v106, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v107, v121, v129, 0xc0c0004
	v_perm_b32 v108, v146, v130, 0xc0c0004
	v_perm_b32 v125, v164, v163, 0xc0c0004
	v_lshl_or_b32 v116, v99, 16, v98
	v_lshl_or_b32 v115, v95, 16, v94
	v_lshl_or_b32 v121, v102, 16, v84
	v_lshl_or_b32 v128, v103, 16, v101
	v_lshl_or_b32 v127, v105, 16, v104
	v_lshl_or_b32 v126, v107, 16, v106
	v_lshl_or_b32 v125, v125, 16, v108
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v84, v143, v144, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v83, v145, v83, 0xc0c0004
	v_perm_b32 v129, v139, v140, 0xc0c0004
	v_perm_b32 v130, v141, v142, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[93:100], v[113:116], v[109:112], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[125:128], v[109:112], v[85:92] neg_lo:[1,1,0]
	v_lshl_or_b32 v112, v83, 16, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v111, v130, 16, v129
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v83, v131, v132, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v84, v133, v134, 0xc0c0004
	v_perm_b32 v129, v14, v13, 0xc0c0004
	v_perm_b32 v130, v12, v11, 0xc0c0004
	v_perm_b32 v131, v157, v156, 0xc0c0004
	v_perm_b32 v132, v155, v154, 0xc0c0004
	v_perm_b32 v133, v149, v148, 0xc0c0004
	v_perm_b32 v11, v147, v16, 0xc0c0004
	v_perm_b32 v3, v5, v6, 0xc0c0004
	v_perm_b32 v4, v8, v7, 0xc0c0004
	v_perm_b32 v135, v135, v136, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v138, 0xc0c0004
	v_lshl_or_b32 v109, v84, 16, v83
	v_lshl_or_b32 v14, v130, 16, v129
	v_lshl_or_b32 v13, v132, 16, v131
	v_lshl_or_b32 v12, v11, 16, v133
	v_lshl_or_b32 v11, v4, 16, v3
	v_perm_b32 v83, v15, v19, 0xc0c0004
	v_perm_b32 v84, v82, v2, 0xc0c0004
	v_perm_b32 v129, v160, v159, 0xc0c0004
	v_perm_b32 v130, v158, v153, 0xc0c0004
	v_perm_b32 v19, v152, v151, 0xc0c0004
	v_perm_b32 v15, v150, v10, 0xc0c0004
	v_perm_b32 v10, v9, v0, 0xc0c0004
	v_perm_b32 v16, v162, v161, 0xc0c0004
	v_lshl_or_b32 v110, v136, 16, v135
	v_wmma_i32_16x16x16_iu8 v[2:9], v[113:116], v[11:14], v[85:92] neg_lo:[1,1,0]
	v_lshl_or_b32 v116, v84, 16, v83
	v_lshl_or_b32 v115, v130, 16, v129
	v_lshl_or_b32 v114, v15, 16, v19
	v_lshl_or_b32 v113, v16, 16, v10
	v_wmma_i32_16x16x16_iu8 v[85:92], v[125:128], v[11:14], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[121:124], v[117:120], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[109:112], v[117:120], v[101:108] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[121:124], v[113:116], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[109:112], v[113:116], v[85:92] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v172, v93
	v_cvt_f32_i32_e32 v229, v94
	v_cvt_f32_i32_e32 v230, v95
	v_cvt_f32_i32_e32 v233, v96
	v_cvt_f32_i32_e32 v228, v97
	v_cvt_f32_i32_e32 v231, v98
	v_cvt_f32_i32_e32 v232, v99
	v_cvt_f32_i32_e32 v235, v100
	v_cvt_f32_i32_e32 v234, v101
	v_cvt_f32_i32_e32 v237, v102
	v_cvt_f32_i32_e32 v238, v103
	v_cvt_f32_i32_e32 v241, v104
	v_cvt_f32_i32_e32 v236, v105
	v_cvt_f32_i32_e32 v239, v106
	v_cvt_f32_i32_e32 v240, v107
	v_cvt_f32_i32_e32 v243, v108
	v_cvt_f32_i32_e32 v242, v2
	v_cvt_f32_i32_e32 v94, v3
	v_cvt_f32_i32_e32 v246, v4
	v_cvt_f32_i32_e32 v249, v5
	v_cvt_f32_i32_e32 v244, v6
	v_cvt_f32_i32_e32 v247, v7
	v_cvt_f32_i32_e32 v248, v8
	v_cvt_f32_i32_e32 v251, v9
	v_cvt_f32_i32_e32 v250, v85
	v_cvt_f32_i32_e32 v253, v86
	v_cvt_f32_i32_e32 v254, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v252, v89
	v_cvt_f32_i32_e32 v255, v90
	v_cvt_f32_i32_e32 v83, v91
	v_cvt_f32_i32_e32 v89, v92
.LBB0_16:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_waitcnt lgkmcnt(2)
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v82, off, off offset:4
	scratch_load_b32 v0, off, off
	.loc	1 378 14 is_stmt 1              ; generate_amdgcn.py:378:14
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s12
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s0, s28, s27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v118, v72, v219 :: v_dual_add_f32 v121, v65, v198
	v_dual_add_f32 v120, v68, v223 :: v_dual_add_f32 v123, v61, v202
	v_dual_add_f32 v116, v56, v197 :: v_dual_add_f32 v99, v37, v212
	v_dual_add_f32 v110, v53, v204 :: v_dual_add_f32 v111, v52, v201
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v135, v59, v241 :: v_dual_add_f32 v136, v58, v238
	v_dual_add_f32 v113, v51, v243 :: v_dual_add_f32 v114, v50, v240
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v124, v60, v199
	v_dual_add_f32 v6, v44, v207 :: v_dual_add_f32 v97, v33, v214
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v125, v75, v229 :: v_dual_add_f32 v126, v74, v172
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v15, v46, v242
	v_dual_add_f32 v7, v43, v249 :: v_dual_add_f32 v8, v42, v246
	v_add_f32_e32 v92, v26, v252
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v56, v116, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v12, v49, v206 :: v_dual_add_f32 v13, v48, v203
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v14, v47, v94 :: v_dual_add_f32 v107, v38, v244
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v6, s2
	v_cndmask_b32_e64 v43, v43, v7, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v127, v77, v233 :: v_dual_add_f32 v128, v76, v230
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v65, v121, s2
	v_cndmask_b32_e64 v48, v48, v13, s2
	v_cndmask_b32_e64 v49, v49, v12, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v19, v18, v251 :: v_dual_add_f32 v104, v17, v248
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v77, v127, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v129, v71, v231 :: v_dual_add_f32 v130, v70, v228
	v_dual_add_f32 v131, v67, v235 :: v_dual_add_f32 v132, v66, v232
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v110, v53, v110, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v71, v71, v129, s2
	v_cndmask_b32_e64 v53, v17, v104, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v137, v55, v239 :: v_dual_add_f32 v138, v54, v236
	v_dual_add_f32 v133, v63, v237 :: v_dual_add_f32 v134, v62, v234
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v76, v128, s2
	v_cndmask_b32_e64 v55, v55, v137, s2
	v_cndmask_b32_e64 v67, v67, v131, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v63, v63, v133, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v84, v21, v220 :: v_dual_add_f32 v85, v20, v217
	v_dual_add_f32 v93, v28, v215 :: v_dual_add_f32 v86, v23, v216
	v_dual_add_f32 v100, v36, v209 :: v_dual_add_f32 v91, v29, v218
	v_dual_add_f32 v98, v32, v211 :: v_dual_add_f32 v87, v22, v213
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v96, v31, v88 :: v_dual_add_f32 v95, v30, v254
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v88.h, 0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v102, v35, v253 :: v_dual_add_f32 v101, v34, v250
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v97, s2
	v_cndmask_b32_e64 v23, v23, v86, s2
	v_cndmask_b32_e64 v31, v31, v96, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v35, v35, v102, s2
	v_cndmask_b32_e64 v34, v34, v101, s2
	v_cndmask_b32_e64 v30, v30, v95, s2
	v_cndmask_b32_e64 v29, v29, v91, s2
	v_cndmask_b32_e64 v28, v28, v93, s2
	v_cndmask_b32_e64 v32, v32, v98, s2
	v_cndmask_b32_e64 v22, v22, v87, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v112, v78, v221 :: v_dual_add_f32 v109, v79, v224
	v_dual_add_f32 v108, v80, v225 :: v_dual_add_f32 v117, v73, v222
	v_add_f32_e32 v106, v81, v227
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v78, v112, s2
	v_cndmask_b32_e64 v79, v79, v109, s2
	v_cndmask_b32_e64 v109, v68, v120, s2
	v_cndmask_b32_e64 v120, v51, v113, s2
	v_cndmask_b32_e64 v68, v66, v132, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.h, v88.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v119, v69, v226
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v117, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v122, v64, v196
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v106, v81, v106, s2
	v_cndmask_b32_e64 v81, v75, v125, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v75.h, v88.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v119, s2
	v_cndmask_b32_e64 v119, v54, v138, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v54.h, v88.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v112, v64, v122, s2
	v_cndmask_b32_e64 v122, v47, v14, s2
	v_cndmask_b32_e64 v64, v62, v134, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.h, v88.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v115, v57, v200
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v57, v115, s2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v2, s29, v82
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v3, s28, v0
	v_and_b32_e32 v1, 0xf0, v0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s29, s29, s27
	v_mul_lo_u32 v82, s27, v82
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v5, v1, 2, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v105, 1, v1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v103, v1, 1, 0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v4, 32, v2
	s_clause 0x1
	buffer_load_u16 v11, v2, s[20:23], 0 offen
	buffer_load_u16 v10, v4, s[20:23], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v4, 5, v0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v2, v3, s[20:23], 0 offen
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v3, 1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v4, 32, v4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v90, v25, v89 :: v_dual_and_b32 v3, 28, v3
	v_add_f32_e32 v89, v24, v83
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v83, s29, s28, v105
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v105, v80, v108, s2
	v_cndmask_b32_e64 v108, v72, v118, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_add3_u32 v9, v5, v4, v3
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v3, s0, v0, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v45, v210 :: v_dual_add_f32 v4, v39, v247
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v118, v61, v123, s2
	v_cndmask_b32_e64 v61, v59, v135, s2
	v_cndmask_b32_e64 v59, v52, v111, s2
	v_cndmask_b32_e64 v111, v50, v114, s2
	v_cndmask_b32_e64 v51, v45, v5, s2
	v_cndmask_b32_e64 v123, v42, v8, s2
	v_cndmask_b32_e64 v125, v39, v4, s2
	v_cndmask_b32_e64 v121, v46, v15, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v94, v27, v255
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v74, v126, s2
	v_cndmask_b32_e64 v126, v18, v19, s2
	v_cndmask_b32_e64 v117, v60, v124, s2
	v_cndmask_b32_e64 v60, v58, v136, s2
	v_cndmask_b32_e64 v124, v38, v107, s2
	v_cndmask_b32_e64 v72, v70, v130, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.h, v88.h
	v_mov_b16_e32 v42.h, v88.h
	v_mov_b16_e32 v74.h, v88.h
	v_mov_b16_e32 v70.h, v88.h
	v_mov_b16_e32 v50.h, v88.h
	v_mov_b16_e32 v46.h, v88.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v92, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v38, s27, 4, v82
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_mov_b32 s27, s23
	v_and_b32_e32 v0, 16, v0
	.loc	1 378 14 is_stmt 1              ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v127, 16, v11
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v39, 16, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v94, s2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v9, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	buffer_load_u16 v16, v3, s[20:23], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v41, v208 :: v_dual_add_f32 v3, v40, v205
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[113:116], v103
	ds_load_b128 v[12:15], v103 offset:16
	ds_load_b128 v[5:8], v103 offset:512
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v2, s2
	v_cndmask_b32_e64 v40, v40, v3, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[1:4], v103 offset:528
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v18, v116, v127
	v_mul_f32_e32 v140, v116, v39
	v_mul_f32_e32 v10, v113, v127
	v_mul_f32_e32 v11, v114, v127
	v_mul_f32_e32 v52, v12, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v136, v4, v127 :: v_dual_mul_f32 v51, v51, v140
	v_mul_f32_e32 v132, v8, v127
	v_mul_f32_e32 v129, v5, v127
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v79, v79, v18
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v17, v115, v127 :: v_dual_mul_f32 v142, v105, v10
	v_mul_f32_e32 v137, v113, v39
	v_mul_f32_e32 v138, v114, v39
	v_mul_f32_e32 v133, v1, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v143, v78, v17
	v_dual_mul_f32 v78, v118, v132 :: v_dual_mul_f32 v45, v13, v127
	v_mul_f32_e32 v112, v112, v129
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v19, v12, v127
	v_dual_mul_f32 v134, v2, v127 :: v_dual_mul_f32 v49, v49, v138
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v144, v73, v45
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v128, v15, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v108, v108, v19
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v130, v6, v127 :: v_dual_mul_f32 v45, v57, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v47, v14, v127 :: v_dual_mul_f32 v128, v69, v128
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v69, v56, v133
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v131, v7, v127 :: v_dual_mul_f32 v130, v65, v130
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v109, v109, v47
	v_mul_f32_e32 v47, v110, v136
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v14, v14, v39
	v_mul_f32_e32 v13, v13, v39
	v_mul_f32_e32 v6, v6, v39
	v_mul_f32_e32 v15, v15, v39
	v_mul_f32_e32 v8, v8, v39
	v_mul_f32_e32 v7, v7, v39
	v_mul_f32_e32 v4, v4, v39
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v6, v33, v6
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v2, v2, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v8, v29, v8 :: v_dual_mul_f32 v7, v28, v7
	v_mul_f32_e32 v2, v23, v2
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v141, v106, v11 :: v_dual_lshlrev_b32 v12, 16, v16
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	ds_store_b32 v9, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v103 offset:512
	ds_load_b128 v[9:12], v103 offset:528
	ds_load_b128 v[104:107], v103
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v13, v41, v13 :: v_dual_mul_f32 v132, v16, v127
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v139, v115, v39
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	ds_load_b128 v[113:116], v103 offset:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v103, v106, v127
	v_mul_f32_e32 v134, v18, v127
	v_mul_f32_e32 v56, v105, v127
	v_mul_f32_e32 v106, v106, v39
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v73, v117, v131
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v76, v76, v103
	v_mul_f32_e32 v64, v64, v132
	v_mul_f32_e32 v103, v60, v134
	v_mul_f32_e32 v81, v81, v56
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v133, v17, v127
	v_mul_f32_e32 v138, v11, v127
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v106, v123, v106
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v16, v16, v39
	v_mul_f32_e32 v17, v17, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v18, v18, v39 :: v_dual_mul_f32 v111, v111, v138
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v134, 0xbfb8aa3b, v106
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v16, v34, v16 :: v_dual_mul_f32 v17, v35, v17
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v117, v113, v127
	v_mul_f32_e32 v113, v113, v39
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v135, v3, v127
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v118, v114, v127
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v134
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v72, v72, v117 :: v_dual_mul_f32 v129, v115, v127
	v_dual_mul_f32 v56, v124, v113 :: v_dual_mul_f32 v105, v105, v39
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v65, v59, v135
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v110, v107, v127
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v68, v68, v129
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v59, v48, v137
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v105, v122, v105 :: v_dual_mul_f32 v122, 0xbfb8aa3b, v64
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v48, v44, v139 :: v_dual_mul_f32 v63, v63, v133
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v44, v104, v127
	v_mul_f32_e32 v104, v104, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v114, v114, v39 :: v_dual_mul_f32 v133, 0xbfb8aa3b, v105
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v77, v77, v110
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v136, v9, v127
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v104, v121, v104 :: v_dual_mul_f32 v137, v10, v127
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v131, v116, v127
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v80, v80, v44 :: v_dual_mul_f32 v113, 0xbfb8aa3b, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v132, 0xbfb8aa3b, v104
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v110, v55, v137 :: v_dual_mul_f32 v55, v125, v114
	v_dual_mul_f32 v71, v71, v118 :: v_dual_mul_f32 v118, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v113
	v_cndmask_b32_e64 v134, 0, 0x42800000, s19
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v132
	v_cndmask_b32_e64 v161, 0, 0xffffffc0, s19
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v118
	v_cndmask_b32_e64 v113, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v134, 0xbfb8aa3b, v106
	v_cndmask_b32_e64 v132, 0, 0x42800000, s17
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v122
	v_cndmask_b32_e64 v118, 0, 0x42800000, s5
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v57, v115, v39
	v_mul_f32_e32 v115, v116, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v147, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v113, 0xbfb8aa3b, v81 :: v_dual_fmac_f32 v118, 0xbfb8aa3b, v72
	v_mul_f32_e32 v114, 0xbfb8aa3b, v76
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v44, v126, v115 :: v_dual_mul_f32 v115, 0xbfb8aa3b, v77
	v_mul_f32_e32 v116, v119, v136
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v135, v19, v127 :: v_dual_mul_f32 v136, 0xbfb8aa3b, v56
	v_mul_f32_e32 v127, v12, v127
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v118, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v126, 0xbfb8aa3b, v116 :: v_dual_mul_f32 v107, v107, v39
	v_mul_f32_e32 v60, 0xbfb8aa3b, v44
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v136
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v117, v120, v127 :: v_dual_fmac_f32 v132, 0xbfb8aa3b, v104
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v126
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v107, v43, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v136, 0, 0x42800000, s21
	v_mul_f32_e32 v119, 0xbfb8aa3b, v71
	v_ldexp_f32 v118, v118, v147
	v_cndmask_b32_e64 v126, 0, 0x42800000, s13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v61, v61, v135 :: v_dual_fmac_f32 v136, 0xbfb8aa3b, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v123, 0xbfb8aa3b, v63 :: v_dual_add_f32 v118, 1.0, v118
	v_fmac_f32_e32 v126, 0xbfb8aa3b, v116
	v_cndmask_b32_e64 v155, 0, 0xffffffc0, s13
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v119, 0, 0x42800000, s4
	v_mul_f32_e32 v127, 0xbfb8aa3b, v110
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v123
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v134, v134
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v114
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v127
	v_cndmask_b32_e64 v123, 0, 0x42800000, s8
	v_exp_f32_e32 v136, v136
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v114, 0, 0x42800000, s3
	v_cndmask_b32_e64 v127, 0, 0x42800000, s12
	v_cndmask_b32_e64 v163, 0, 0xffffffc0, s21
	v_ldexp_f32 v126, v126, v155
	v_fmac_f32_e32 v119, 0xbfb8aa3b, v71
	v_ldexp_f32 v134, v134, v161
	v_dual_fmac_f32 v123, 0xbfb8aa3b, v63 :: v_dual_fmac_f32 v114, 0xbfb8aa3b, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v126, 1.0, v126
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v119, v119
	v_ldexp_f32 v136, v136, v163
	v_fmac_f32_e32 v127, 0xbfb8aa3b, v110
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v134, 1.0, v134
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v123, v123
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v115
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, s8
	v_exp_f32_e32 v114, v114
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v136, 1.0, v136
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v127, v127
	v_ldexp_f32 v119, v119, v146
	v_dual_mul_f32 v120, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v125, 0xbfb8aa3b, v61
	v_cndmask_b32_e64 v115, 0, 0x42800000, s1
	v_mul_f32_e32 v124, 0xbfb8aa3b, v103
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v119, 1.0, v119
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v122, 0, 0x42800000, s9
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v67, v67, v131
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v145, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v154, 0, 0xffffffc0, s12
	v_ldexp_f32 v123, v123, v150
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v150, null, v119, v119, v71
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v125
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v133
	v_fmac_f32_e32 v115, 0xbfb8aa3b, v77
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v124
	v_fmac_f32_e32 v122, 0xbfb8aa3b, v64
	v_ldexp_f32 v114, v114, v145
	v_mul_f32_e32 v121, 0xbfb8aa3b, v67
	v_ldexp_f32 v127, v127, v154
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v190, v150
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v125, 0, 0x42800000, s10
	v_cndmask_b32_e64 v124, 0, 0x42800000, s11
	v_cndmask_b32_e64 v133, 0, 0x42800000, s16
	v_exp_f32_e32 v132, v132
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v114, 1.0, v114
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v121
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v127, 1.0, v127
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v125, 0xbfb8aa3b, v61 :: v_dual_fmac_f32 v124, 0xbfb8aa3b, v103
	v_cndmask_b32_e64 v159, 0, 0xffffffc0, s17
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v121, 0, 0x42800000, s6
	v_exp_f32_e32 v113, v113
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v166, null, v127, v127, v110
	v_fma_f32 v212, -v150, v190, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v133, 0xbfb8aa3b, v105
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v124, v124
	v_ldexp_f32 v132, v132, v159
	v_fmac_f32_e32 v121, 0xbfb8aa3b, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v198, v166
	v_fmac_f32_e32 v190, v212, v190
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v133, v133
	v_mul_f32_e32 v43, 0xbfb8aa3b, v80
	v_cndmask_b32_e64 v153, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v158, 0, 0xffffffc0, s16
	v_ldexp_f32 v113, v113, v138
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v123, 1.0, v123 :: v_dual_add_f32 v132, 1.0, v132
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v121, v121
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v43
	v_cndmask_b32_e64 v148, 0, 0xffffffc0, s6
	v_ldexp_f32 v124, v124, v153
	v_mul_f32_e32 v137, 0xbfb8aa3b, v55
	v_ldexp_f32 v133, v133, v158
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v158, null, v123, v123, v63
	v_fma_f32 v220, -v166, v198, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v113, 1.0, v113
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s0
	v_exp_f32_e32 v122, v122
	v_ldexp_f32 v121, v121, v148
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v124, 1.0, v124
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v137
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v194, v158
	v_fmac_f32_e32 v198, v220, v198
	v_div_scale_f32 v138, null, v113, v113, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v131, 0xbfb8aa3b, v117
	v_cndmask_b32_e64 v137, 0, 0x42800000, s20
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v80
	v_cndmask_b32_e64 v151, 0, 0xffffffc0, s9
	v_exp_f32_e32 v125, v125
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v121, 1.0, v121
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v186, v138
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v131
	v_cndmask_b32_e64 v152, 0, 0xffffffc0, s10
	v_exp_f32_e32 v43, v43
	v_ldexp_f32 v122, v122, v151
	v_mul_f32_e32 v135, 0xbfb8aa3b, v107
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v154, null, v121, v121, v67
	v_fma_f32 v216, -v158, v194, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v137, 0xbfb8aa3b, v55
	v_cndmask_b32_e64 v131, 0, 0x42800000, s14
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, s0
	v_ldexp_f32 v125, v125, v152
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v122, 1.0, v122
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v135
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v192, v154
	v_fma_f32 v208, -v138, v186, 1.0
	v_fmac_f32_e32 v194, v216, v194
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v137, v137
	v_cndmask_b32_e64 v135, 0, 0x42800000, s18
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v131, 0xbfb8aa3b, v117 :: v_dual_fmac_f32 v186, v208, v186
	v_cndmask_b32_e64 v162, 0, 0xffffffc0, s20
	v_ldexp_f32 v43, v43, v139
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v139, vcc_lo, v81, v113, v81
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v125, 1.0, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v214, -v154, v192, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v135, 0xbfb8aa3b, v107
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v137, v137, v162
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v208, v139, v186
	v_div_scale_f32 v162, null, v125, v125, v61
	v_fmac_f32_e32 v192, v214, v192
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v135, v135
	v_cndmask_b32_e64 v160, 0, 0xffffffc0, s18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v196, v162
	v_div_scale_f32 v163, s12, v61, v125, v61
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v131, v131
	v_cndmask_b32_e64 v156, 0, 0xffffffc0, s14
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v120
	v_exp_f32_e32 v115, v115
	v_cndmask_b32_e64 v140, 0, 0xffffffc0, s1
	v_ldexp_f32 v135, v135, v160
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v148, null, v114, v114, v76
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v218, -v162, v196, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v131, v131, v156
	v_cndmask_b32_e64 v120, 0, 0x42800000, s7
	v_cndmask_b32_e64 v149, 0, 0xffffffc0, s7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v196, v218, v196 :: v_dual_add_f32 v135, 1.0, v135
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v115, v115, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v120, 0xbfb8aa3b, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v140, null, v43, v43, v80
	v_mul_f32_e32 v218, v163, v196
	v_div_scale_f32 v178, null, v135, v135, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v120, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v152, null, v118, v118, v72
	v_rcp_f32_e32 v204, v178
	v_rcp_f32_e32 v187, v140
	v_div_scale_f32 v160, null, v122, v122, v64
	v_rcp_f32_e32 v189, v148
	v_rcp_f32_e32 v191, v152
	v_div_scale_f32 v145, s13, v80, v43, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v120, v120, v149
	v_mul_f32_e32 v129, 0xbfb8aa3b, v111
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v226, -v178, v204, 1.0
	v_rcp_f32_e32 v195, v160
	v_fma_f32 v209, -v140, v187, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v120, 1.0, v120
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v129
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v204, v226, v204
	v_div_scale_f32 v155, s18, v67, v121, v67
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v131, 1.0, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v129, 0, 0x42800000, s15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v156, null, v120, v120, v68
	v_mul_f32_e32 v214, v155, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v170, null, v131, v131, v117
	v_div_scale_f32 v171, s8, v117, v131, v117
	v_fma_f32 v211, -v148, v189, 1.0
	v_rcp_f32_e32 v200, v170
	v_fma_f32 v213, -v152, v191, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v157, 0, 0xffffffc0, s15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v164, null, v124, v124, v103
	v_rcp_f32_e32 v193, v156
	v_div_scale_f32 v179, s4, v107, v135, v107
	v_fma_f32 v217, -v160, v195, 1.0
	v_div_scale_f32 v149, s15, v76, v114, v76
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v222, -v170, v200, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v115, 1.0, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v230, -v138, v208, v139
	v_fmac_f32_e32 v189, v211, v189
	v_rcp_f32_e32 v197, v164
	v_fmac_f32_e32 v200, v222, v200
	v_div_scale_f32 v146, null, v115, v115, v77
	v_div_scale_f32 v147, s14, v77, v115, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v187, v209, v187 :: v_dual_mul_f32 v222, v171, v200
	v_rcp_f32_e32 v188, v146
	v_div_scale_f32 v153, s17, v72, v118, v72
	v_dual_fmac_f32 v195, v217, v195 :: v_dual_mul_f32 v226, v179, v204
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v244, -v170, v222, v171
	v_dual_mul_f32 v209, v145, v187 :: v_dual_fmac_f32 v208, v230, v186
	v_fma_f32 v215, -v156, v193, 1.0
	v_fma_f32 v248, -v178, v226, v179
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v210, -v146, v188, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v129, 0xbfb8aa3b, v111 :: v_dual_fmac_f32 v222, v244, v200
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v231, -v140, v209, v145
	v_fma_f32 v219, -v164, v197, 1.0
	v_fmac_f32_e32 v188, v210, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v129, v129
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v226, v248, v204 :: v_dual_fmac_f32 v209, v231, v187
	v_fma_f32 v138, -v138, v208, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v210, v147, v188
	v_div_scale_f32 v167, s10, v110, v127, v110
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v137, 1.0, v137
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v139, -v140, v209, v145
	v_fma_f32 v232, -v146, v210, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v220, v167, v198
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v129, v129, v157
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v182, null, v137, v137, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v193, v215, v193 :: v_dual_fmac_f32 v210, v232, v188
	v_div_fmas_f32 v138, v138, v186, v208
	v_rcp_f32_e32 v206, v182
	s_mov_b32 vcc_lo, s13
	v_div_scale_f32 v176, null, v132, v132, v104
	v_fma_f32 v140, -v146, v210, v147
	v_div_fmas_f32 v139, v139, v187, v209
	s_mov_b32 vcc_lo, s14
	v_div_scale_f32 v157, s19, v68, v120, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v140, v140, v188, v210
	v_fma_f32 v228, -v182, v206, 1.0
	s_mov_b32 vcc_lo, s15
	v_div_fixup_f32 v81, v138, v113, v81
	v_rcp_f32_e32 v203, v176
	v_div_fixup_f32 v43, v139, v43, v80
	v_fmac_f32_e32 v206, v228, v206
	v_div_scale_f32 v159, s20, v63, v123, v63
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v133, 1.0, v133
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v161, s21, v64, v122, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v216, v159, v194
	v_div_fixup_f32 v77, v140, v115, v77
	v_div_scale_f32 v174, null, v133, v133, v105
	v_div_scale_f32 v175, s6, v105, v133, v105
	v_fma_f32 v236, -v154, v214, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v202, v174
	v_div_scale_f32 v168, null, v126, v126, v116
	v_fma_f32 v225, -v176, v203, 1.0
	v_fma_f32 v238, -v158, v216, v159
	v_fmac_f32_e32 v214, v236, v192
	v_rcp_f32_e32 v199, v168
	v_div_scale_f32 v180, null, v134, v134, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v203, v225, v203 :: v_dual_fmac_f32 v216, v238, v194
	v_fma_f32 v224, -v174, v202, 1.0
	v_div_scale_f32 v184, null, v136, v136, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v205, v180
	v_div_scale_f32 v165, s11, v103, v124, v103
	v_dual_fmac_f32 v202, v224, v202 :: v_dual_fmac_f32 v191, v213, v191
	v_div_scale_f32 v151, s16, v71, v119, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v129, 1.0, v129 :: v_dual_mul_f32 v224, v175, v202
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v213, v153, v191 :: v_dual_mul_f32 v212, v151, v190
	v_fma_f32 v221, -v168, v199, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v172, null, v129, v129, v111
	v_fma_f32 v246, -v174, v224, v175
	v_mul_f32_e32 v211, v149, v189
	v_fma_f32 v234, -v150, v212, v151
	v_fma_f32 v235, -v152, v213, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v197, v219, v197 :: v_dual_fmac_f32 v224, v246, v202
	v_fma_f32 v233, -v148, v211, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v212, v234, v190 :: v_dual_fmac_f32 v213, v235, v191
	v_rcp_f32_e32 v201, v172
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v43, v142, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v211, v233, v189
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v146, -v150, v212, v151
	v_fma_f32 v147, -v152, v213, v153
	v_fma_f32 v150, -v158, v216, v159
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v77, v79, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v145, -v148, v211, v149
	v_fma_f32 v148, -v154, v214, v155
	v_rcp_f32_e32 v207, v184
	v_fma_f32 v223, -v172, v201, 1.0
	v_div_scale_f32 v169, s9, v116, v126, v116
	v_div_fmas_f32 v113, v145, v189, v211
	s_mov_b32 vcc_lo, s16
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v201, v223, v201
	v_div_fmas_f32 v80, v146, v190, v212
	s_mov_b32 vcc_lo, s17
	v_div_fixup_f32 v76, v113, v114, v76
	v_div_fmas_f32 v115, v147, v191, v213
	v_mul_f32_e32 v215, v157, v193
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v71, v80, v119, v71
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v76, v143, v76
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v72, v115, v118, v72
	v_mul_f32_e32 v217, v161, v195
	v_fma_f32 v237, -v156, v215, v157
	v_div_fmas_f32 v113, v148, v192, v214
	s_mov_b32 vcc_lo, s19
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v72, v108, v72
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v239, -v160, v217, v161
	v_fmac_f32_e32 v215, v237, v193
	v_div_scale_f32 v183, s1, v55, v137, v55
	v_fmac_f32_e32 v199, v221, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v217, v239, v195
	v_fma_f32 v149, -v156, v215, v157
	v_div_fixup_f32 v67, v113, v121, v67
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.l, v43.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v219, v165, v197
	v_fma_f32 v151, -v160, v217, v161
	v_div_fmas_f32 v79, v149, v193, v215
	s_mov_b32 vcc_lo, s20
	v_div_scale_f32 v173, s7, v111, v129, v111
	v_div_fmas_f32 v80, v150, v194, v216
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v227, -v180, v205, 1.0
	v_div_fmas_f32 v113, v151, v195, v217
	v_fma_f32 v240, -v162, v218, v163
	v_mul_f32_e32 v228, v183, v206
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v74, 1, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v241, -v164, v219, v165
	v_div_fixup_f32 v64, v113, v122, v64
	v_mul_f32_e32 v221, v169, v199
	v_fma_f32 v229, -v184, v207, 1.0
	v_fma_f32 v242, -v166, v220, v167
	v_dual_fmac_f32 v205, v227, v205 :: v_dual_fmac_f32 v218, v240, v196
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v81, v141, v81
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v72.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v223, v173, v201 :: v_dual_mul_f32 v64, v112, v64
	v_fma_f32 v243, -v168, v221, v169
	v_fmac_f32_e32 v219, v241, v197
	v_dual_fmac_f32 v207, v229, v207 :: v_dual_fmac_f32 v220, v242, v198
	v_fma_f32 v152, -v162, v218, v163
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v88.l, v81.h
	v_and_b32_e32 v70, 1, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v245, -v172, v223, v173
	v_fmac_f32_e32 v221, v243, v199
	v_fma_f32 v153, -v164, v219, v165
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v154, -v166, v220, v167
	v_div_fixup_f32 v68, v79, v120, v68
	v_fma_f32 v250, -v182, v228, v183
	v_fmac_f32_e32 v223, v245, v201
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v79, 1, v88
	v_mov_b16_e32 v88.l, v77.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v108, v152, v196, v218
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v155, -v168, v221, v169
	v_div_fixup_f32 v63, v80, v123, v63
	v_div_fmas_f32 v80, v153, v197, v219
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v156, -v170, v222, v171
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v68, v109, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v109, v154, v198, v220
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v157, -v172, v223, v173
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s13, v81, v81
	v_mov_b16_e32 v75.l, v76.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v61, v108, v125, v61
	v_fmac_f32_e32 v228, v250, v206
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v79, v81, v79, 0x7fff
	v_and_b32_e32 v81, 1, v88
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v108, v155, v199, v221
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v80, v80, v124, v103
	v_div_fmas_f32 v103, v156, v200, v222
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v177, s5, v104, v132, v104
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s15, v77, v77
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v40, v40, v52 :: v_dual_and_b32 v75, 1, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v109, v109, v127, v110
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v77, v77, v81, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v61, v78, v61
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v78, v157, v201, v223
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s12, v76, v76
	v_mov_b16_e32 v66.l, v68.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v225, v177, v203
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v75, v76, v75, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v76, v108, v126, v116
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v81, v45, v109
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v45.h, 0x7fff, v77.h, s15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v77, v78, v129, v111
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v66, 1, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v247, -v176, v225, v177
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v69, v69, v76
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v158, -v174, v224, v175
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v65, v65, v77
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s14, v43, v43
	v_add3_u32 v74, v43, v74, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v71, v144, v71
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v50.l, v65.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v225, v247, v203
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v43.l, 0x7fff, v74.h, s14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v74, v158, v202, v224
	s_mov_b32 vcc_lo, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v50, 1, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v159, -v176, v225, v177
	v_div_scale_f32 v181, s3, v106, v134, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v88.l, v71.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v73, v73, v80
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v80, v103, v131, v117
	v_div_fmas_f32 v103, v159, v203, v225
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v36, v100, s2
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v53, v53, v57
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v128, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s8, v68, v68
	v_cndmask_b16 v43.h, 0x7fff, v79.h, s13
	v_and_b32_e32 v79, 1, v88
	v_add3_u32 v66, v68, v66, 0x7fff
	v_mov_b16_e32 v88.l, v67.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v227, v181, v205
	v_div_fixup_f32 v68, v103, v132, v104
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s10, v72, v72
	v_add3_u32 v70, v72, v70, 0x7fff
	v_and_b32_e32 v72, 1, v88
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v249, -v180, v227, v181
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v59, v59, v68
	v_mul_f32_e32 v63, v130, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v160, -v178, v226, v179
	v_div_scale_f32 v185, s0, v56, v136, v56
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v59.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v227, v249, v205
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.l, v64.h
	v_mov_b16_e32 v88.l, v63.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v46, 1, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v161, -v180, v227, v181
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v45.l, 0x7fff, v75.h, s12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v75, v160, v204, v226
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v229, v185, v207 :: v_dual_and_b32 v62, 1, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s11, v71, v71
	v_add3_u32 v71, v71, v79, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v74, v74, v133, v105
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v76, v47, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v78, v161, v205, v227
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v47.l, 0x7fff, v70.h, s10
	v_and_b32_e32 v70, 1, v88
	v_mov_b16_e32 v88.l, v61.h
	v_mov_b16_e32 v54.l, v69.h
	v_cmp_o_f32_e64 s9, v67, v67
	v_cmp_o_f32_e64 s6, v64, v64
	v_mov_b16_e32 v58.l, v73.h
	v_cndmask_b16 v47.h, 0x7fff, v71.h, s11
	v_add3_u32 v67, v67, v72, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v71, v75, v135, v107
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v72, v49, v74
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v62, v64, v62, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v64, v78, v134, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v49.l, 0x7fff, v66.h, s8
	v_and_b32_e32 v66, 1, v88
	v_mov_b16_e32 v88.l, v81.h
	v_and_b32_e32 v54, 1, v54
	v_cmp_o_f32_e64 s7, v63, v63
	v_cmp_o_f32_e64 s5, v61, v61
	v_cmp_o_f32_e64 s3, v69, v69
	v_and_b32_e32 v58, 1, v58
	v_cndmask_b16 v49.h, 0x7fff, v67.h, s9
	v_add3_u32 v63, v63, v70, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v51, v71
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v51.l, 0x7fff, v62.h, s6
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v62, v48, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v48, v61, v66, 0x7fff
	v_and_b32_e32 v61, 1, v88
	v_add3_u32 v54, v69, v54, 0x7fff
	v_cmp_o_f32_e64 s4, v73, v73
	v_add3_u32 v58, v73, v58, 0x7fff
	v_cndmask_b16 v51.h, 0x7fff, v63.h, s7
	v_add3_u32 v63, v65, v50, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v54.h, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v60
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v14, v35, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v60, 0xbfb8aa3b, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s6, v59, v59
	v_cndmask_b16 v48.l, 0x7fff, v58.h, s4
	v_add3_u32 v46, v59, v46, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v184, v229, v185
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v59, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v60
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	v_add3_u32 v61, v81, v61, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v229, v57, v207
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v44
	v_cndmask_b32_e64 v57, 0, 0x42800000, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s8, v65, v65
	v_cndmask_b16 v50.h, 0x7fff, v61.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v182, v228, v183
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v59, v59
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v88.l, v76.h
	v_cndmask_b16 v46.l, 0x7fff, v63.h, s8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v60, v61, v206, v228
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s3
	v_exp_f32_e32 v41, v57
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v62.h
	v_and_b32_e32 v58, 1, v88
	v_mov_b16_e32 v88.l, v72.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v184, v229, v185
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v52, v59, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v55, v60, v137, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s4
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v9, v9, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v54, 1, v42
	v_and_b32_e32 v42, 1, v88
	v_cmp_o_f32_e64 s10, v76, v76
	v_add3_u32 v58, v76, v58, 0x7fff
	v_mov_b16_e32 v88.l, v67.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v61, v61, v207, v229
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v52, 1.0, v52 :: v_dual_mul_f32 v55, v13, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v13, v41, v57
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v9, v26, v9 :: v_dual_mul_f32 v12, v12, v39
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v19, v19, v39
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v72, v42, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v46.h, s6
	v_cndmask_b16 v46.h, 0x7fff, v58.h, s10
	v_and_b32_e32 v58, 1, v88
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v56, v61, v136, v56
	v_div_scale_f32 v41, null, v52, v52, v44
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v19, v31, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v57, 1.0, v13 :: v_dual_mul_f32 v40, v40, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v56, v67, v58, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v58, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v54, v62, v54, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v59, null, v57, v57, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v88.l, v55.h
	v_mov_b16_e32 v13.l, v40.h
	v_mov_b16_e32 v13.h, v88.h
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_cmp_o_f32_e64 s0, v62, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v62, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v60, 1, v88
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v18, v30, v18 :: v_dual_and_b32 v61, 1, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.h, 0x7fff, v56.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v56, -v41, v58, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.l, 0x7fff, v54.h, s0
	v_add3_u32 v60, v55, v60, 0x7fff
	v_cmp_o_f32_e64 s0, v55, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v55, vcc_lo, v44, v52, v44
	v_fmac_f32_e32 v58, v56, v58
	v_fma_f32 v56, -v59, v62, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v54, v40, v61, 0x7fff
	v_cmp_o_f32_e64 s1, v40, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v37, v99, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v40, v55, v58
	v_fmac_f32_e32 v62, v56, v62
	v_div_scale_f32 v56, s3, v53, v57, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v41, v40, v55
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v10, v10, v39 :: v_dual_mul_f32 v61, v56, v62
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v15, v36, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v63, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v40, v37, v58
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v10, v27, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v59, v61, v56
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v5, v5, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v63
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v41, v40, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v61, v37, v62
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v63, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v34, v58, v40
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v41, -v59, v61, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v37
	v_mul_f32_e32 v56, 0xbfb8aa3b, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v34, v34, v52, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v41, v41, v62, v61
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s5
	v_mul_f32_e32 v58, 0xbfb8aa3b, v18
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v15, v15, v34
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v5, v32, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v35, v41, v57, v53
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v16
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v41.l, 0x7fff, v54.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v41.h, 0x7fff, v60.h, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v14, v35
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v37
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v30, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v58
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v88.l, v15.h
	v_mov_b16_e32 v34.l, v14.h
	v_mov_b16_e32 v34.h, v88.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v44, 1, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v37, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v30, v30
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v11, v11, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v15, v44, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v14, v34, 0x7fff
	v_cmp_o_f32_e64 s9, v72, v72
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v3, v3, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v52, null, v35, v35, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s9
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v1, v1, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v54, v52
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v1, v22, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v52, v54, 1.0
	v_fmac_f32_e32 v54, v31, v54
	v_div_scale_f32 v31, s0, v16, v35, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v31, v54
	v_fma_f32 v33, -v52, v57, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v57, v33, v54
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v52, v57, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v30, v33
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v17
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v40, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v30, v30, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v40, v55
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v36, v36, v17
	v_rcp_f32_e32 v37, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v40, v37, 1.0
	v_fmac_f32_e32 v37, v53, v37
	v_div_scale_f32 v53, vcc_lo, v17, v36, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v53, v37
	v_fma_f32 v56, -v40, v55, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v55, v56, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v56, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v40, v55, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v37, v40, v37, v55
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v40, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v14, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v31, v54, v57
	v_div_fixup_f32 v17, v37, v36, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_mov_b16_e32 v14.h, v88.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v31, v35, v16
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v17
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v40, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.h, 0x7fff, v44.h, vcc_lo
	v_cndmask_b16 v35.l, 0x7fff, v34.h, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v16, v32
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v88.l, v6.h
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v14.l, v5.h
	v_cmp_o_f32_e64 s1, v5, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v15, v15, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v14, 1, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v32, v16, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v33, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v6, v31, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v6, s0, v19, v30, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v16, v36, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v14, v5, v14, 0x7fff
	v_cndmask_b16 v31.h, 0x7fff, v31.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v17, v33, 1.0
	v_mul_f32_e32 v5, v6, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.l, 0x7fff, v14.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v24, v89, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, s3, v18, v15, v18
	v_fma_f32 v36, -v32, v5, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v11, v14, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v37, v34, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v5, v36, v16
	v_fma_f32 v27, -v17, v37, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v32, v5, v6
	v_fmac_f32_e32 v37, v27, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v6, v16, v5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v6, -v17, v37, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v5, v30, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v6, v6, v33, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_exp_f32_e32 v17, v27
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v8, v5
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v25, v90, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v6, v15, v18
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v88.l, v5.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v8, v8, v12
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v7, v6
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v9
	v_ldexp_f32 v7, v17, v15
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v17, 0xbfb8aa3b, v11 :: v_dual_and_b32 v24, 1, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v15, v16
	v_dual_mul_f32 v16, 0xbfb8aa3b, v8 :: v_dual_add_f32 v7, 1.0, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v5, v24, 0x7fff
	v_mov_b16_e32 v18.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v14, null, v7, v7, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	v_ldexp_f32 v12, v15, v12
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v15, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v8
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v88.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v12, v12, v9
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v16, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v14, v15, 1.0
	v_div_scale_f32 v29, s1, v9, v12, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v26, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v15, v25, v15
	v_div_scale_f32 v25, vcc_lo, v10, v7, v10
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v16, v16, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v19, v26, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v5, 1.0, v16 :: v_dual_mul_f32 v16, v25, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v6, v18, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v26, v27, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v27, null, v5, v5, v8
	v_fma_f32 v32, -v14, v16, v25
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_mul_f32 v34, v29, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v30, v27
	v_fmac_f32_e32 v16, v32, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v28, null, v17, v17, v11
	v_fma_f32 v32, -v19, v34, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v14, -v14, v16, v25
	v_rcp_f32_e32 v33, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v27, v30, 1.0
	v_fmac_f32_e32 v34, v32, v26
	v_div_scale_f32 v32, s0, v8, v5, v8
	v_div_fmas_f32 v14, v14, v15, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v36, v30
	v_fma_f32 v15, -v19, v34, v29
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v25, -v28, v33, 1.0
	v_div_fixup_f32 v7, v14, v7, v10
	v_mul_f32_e32 v16, v32, v30
	v_div_fmas_f32 v15, v15, v26, v34
	s_mov_b32 vcc_lo, s0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v21, v84, s2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v7
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v27, v16, v32
	v_div_fixup_f32 v9, v15, v12, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v4, v14, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v88.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v16, v26, v30
	v_fma_f32 v10, -v27, v16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v10, v10, v30, v16
	v_div_fixup_f32 v5, v10, v5, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v10, 0x7632 :: v_dual_fmac_f32 v33, v25, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, s3, v11, v17, v11
	s_mov_b32 vcc_lo, s3
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v19, v25, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v28, v19, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v22, v33
	v_fma_f32 v12, -v28, v19, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v12, v12, v33, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v6.h, v88.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v12, v17, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.l, 0x7fff, v18.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v20, v85, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v9, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v1.h
	v_mov_b16_e32 v9.h, v88.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v88
	v_and_b32_e32 v5, 1, v9
	v_mov_b32_e32 v9, 0x5410
	v_mov_b16_e32 v88.l, v4.h
	v_mov_b16_e32 v6.l, v3.h
	v_add3_u32 v7, v2, v7, 0x7fff
	v_add3_u32 v5, v1, v5, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	v_and_b32_e32 v8, 1, v88
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v2, v4, v8, 0x7fff
	v_add3_u32 v1, v3, v6, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v7.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v9, 0x1054, v9, vcc_lo
	v_cndmask_b32_e32 v10, 0x3276, v10, vcc_lo
	v_dual_cndmask_b32 v2, v43, v47 :: v_dual_cndmask_b32 v5, v45, v49
	v_cndmask_b32_e32 v7, v51, v50, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v10, v10, 8, v10
	v_dual_cndmask_b32 v11, v48, v46 :: v_dual_cndmask_b32 v14, v42, v41
	v_cndmask_b32_e32 v15, v35, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 0x540054, v9
	v_dual_cndmask_b32 v13, v13, v35 :: v_dual_and_b32 v10, 0x760076, v10
	v_cndmask_b32_e32 v16, v3, v31, vcc_lo
	v_cndmask_b32_e32 v3, v31, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 4, v9
	v_lshl_or_b32 v10, v10, 4, v10
	v_cndmask_b32_e32 v17, v0, v24, vcc_lo
	v_dual_cndmask_b32 v0, v24, v0 :: v_dual_cndmask_b32 v1, v47, v43
	v_cndmask_b32_e32 v4, v49, v45, vcc_lo
	v_cndmask_b32_e32 v6, v50, v51, vcc_lo
	v_cndmask_b32_e32 v8, v46, v48, vcc_lo
	v_cndmask_b32_e32 v12, v41, v42, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v18, 0x5040504, v9
	v_and_b32_e32 v19, 0x7060706, v10
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v18
	v_perm_b32 v1, v2, v1, v19
	v_perm_b32 v2, v5, v4, v18
	v_perm_b32 v3, v5, v4, v19
	v_perm_b32 v4, v7, v6, v18
	v_perm_b32 v5, v7, v6, v19
	v_perm_b32 v6, v11, v8, v18
	v_perm_b32 v7, v11, v8, v19
	v_perm_b32 v8, v14, v12, v18
	v_perm_b32 v9, v14, v12, v19
	v_perm_b32 v10, v13, v15, v18
	v_perm_b32 v11, v13, v15, v19
	v_perm_b32 v12, v20, v16, v18
	v_perm_b32 v13, v20, v16, v19
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v16, v83, v82, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v14, v21, v17, v18
	v_perm_b32 v15, v21, v17, v19
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v17, v83, v38, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v16, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v17, s[24:27], 0 offen offset:256
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 12
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
		.amdhsa_next_free_sgpr 42
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 12
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26432
; TotalNumSgprs: 44
; NumVgprs: 256
; ScratchSize: 12
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 44
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 12
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 2
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
