	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[16:17], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s8, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s16, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s17, 0x7f
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_lshr_b32 s6, s6, 27
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_lshr_b32 s7, s7, 25
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s22, s4, 5
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s9, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s9, s22
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s8, s8, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s8, s11, s8
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s10, s6
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s6, s9
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s5, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s8, s6
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s18, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s6
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s18, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s11, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s7, s11
	s_xor_b32 s10, s11, s9
	s_ashr_i32 s23, s10, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s8
	s_mul_hi_u32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s8, s7, s8
	s_mul_i32 s12, s8, s6
	s_add_i32 s10, s8, 1
	s_sub_i32 s7, s7, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s12, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s7, s12, s7
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s6, s10, s8
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s19, s18, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s24, s6, s23
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[6:7], s[18:19], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s10, s24, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s8, s10, s9
	.loc	1 1001 17 is_stmt 0             ; ragged.py:1001:17
	s_sub_i32 s11, s11, s8
	.loc	1 1007 19 is_stmt 1             ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1016 22                       ; ragged.py:1016:22
	s_lshl_b32 s21, s3, 5
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s4, s[4:5], 0x0
	s_mov_b32 s3, 0
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1008 26 is_stmt 0             ; ragged.py:1008:26
	s_lshr_b32 s5, s4, 31
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s20, s4, 1
	.loc	1 1018 23 is_stmt 1             ; ragged.py:1018:23
	s_cmp_lt_i32 s21, s20
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_lshl_b32 s8, s17, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s3, -1
                                        ; implicit-def: $sgpr8
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x28
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v49, 15, v0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v47, 0
	s_lshl_b32 s19, s10, 5
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s3, s11, 7
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x38
	s_load_b128 s[12:15], s[0:1], 0x0
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_lshrrev_b32_e32 v1, 2, v0
	v_lshlrev_b32_e32 v2, 3, v0
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_lshl_b32 s0, s2, 7
	s_lshl_b32 s2, s24, 5
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_mul_i32 s22, s22, s18
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v7, 24, v2
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_sub_i32 s22, s23, s22
	s_lshl_b32 s23, s23, 5
	v_or_b32_e32 v5, 0x3f0, v0
	v_lshrrev_b32_e32 v6, 1, v0
	s_sub_i32 s22, s22, s24
	s_mov_b32 s11, 0x31027000
	s_mul_i32 s9, s9, s22
	s_mov_b32 s10, 0x7ffffffe
	s_lshl_b32 s1, s17, 5
	.loc	1 1021 39                       ; ragged.py:1021:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s8, s18, s8
	s_and_b32 s13, s13, 0xffff
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_add_i32 s8, s8, s21
	s_and_b32 s15, s15, 0xffff
	v_add_nc_u32_e32 v1, s8, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_lo_u32 v1, s16, v1
	v_add3_u32 v1, v1, s2, v7
	s_lshl_b32 s2, s16, 5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v55, s23, v1
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v4, s8, v4
	.loc	1 1018 17 is_stmt 0             ; ragged.py:1018:17
	v_add_nc_u32_e32 v50, 0, v49
	v_and_b32_e32 v6, 48, v6
	v_dual_mov_b32 v11, v1 :: v_dual_add_nc_u32 v56, 0, v5
	v_mov_b32_e32 v5, v1
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add_nc_u32_e32 v9, 16, v4
	.loc	1 1004 36 is_stmt 1             ; ragged.py:1004:36
	v_lshlrev_b32_e32 v3, 4, v0
	v_add_nc_u32_e32 v51, 0, v2
	v_add_nc_u32_e32 v52, v50, v6
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mul_lo_u32 v4, s17, v4
	v_mul_lo_u32 v6, s17, v9
	s_lshl_b32 s8, s9, 7
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v57, v51, v2
	v_dual_mov_b32 v2, v1 :: v_dual_and_b32 v3, 0x70, v3
	s_add_i32 s8, s0, s8
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_add3_u32 v54, s8, v6, v3
	v_mov_b32_e32 v6, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v10, s3, v3
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add3_u32 v53, s8, v4, v3
	v_mov_b32_e32 v4, v1
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v8, s19, v7
	v_mov_b32_e32 v3, v1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s17, v10
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v10, v1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s16, v8
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1028 34                       ; ragged.py:1028:34
	v_cndmask_b32_e32 v33, 0x80000000, v55, vcc_lo
	.loc	1 1029 34                       ; ragged.py:1029:34
	v_cndmask_b32_e64 v34, 0x80000000, v53, s0
	v_cndmask_b32_e64 v37, 0x80000000, v54, s0
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add_nc_u32_e32 v53, s1, v53
	v_add_nc_u32_e32 v54, s1, v54
	.loc	1 1028 34                       ; ragged.py:1028:34
	buffer_load_b64 v[41:42], v33, s[8:11], 0 offen
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_clause 0x1
	buffer_load_b128 v[33:36], v34, s[12:15], 0 offen
	buffer_load_b128 v[37:40], v37, s[12:15], 0 offen
	.loc	1 1028 34                       ; ragged.py:1028:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add_nc_u32_e32 v55, s2, v55
	.loc	1 1040 21                       ; ragged.py:1040:21
	s_add_i32 s21, s21, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cmp_lt_i32 s21, s20
	.loc	1 1028 34                       ; ragged.py:1028:34
	s_waitcnt vmcnt(2)
	ds_store_b64 v51, v[41:42]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1030 31                       ; ragged.py:1030:31
	ds_load_u8 v41, v50 offset:96
	ds_load_u8 v42, v50 offset:64
	ds_load_u8 v43, v50 offset:224
	ds_load_u8 v44, v50 offset:192
	ds_load_u8 v45, v50 offset:160
	ds_load_u8 v46, v50 offset:128
	ds_load_u8 v47, v50 offset:352
	ds_load_u8 v48, v50 offset:320
	ds_load_u8 v90, v50 offset:288
	ds_load_u8 v91, v50 offset:256
	ds_load_u8 v92, v50 offset:480
	ds_load_u8 v93, v50 offset:448
	ds_load_u8 v94, v50 offset:416
	ds_load_u8 v95, v50 offset:384
	ds_load_u8 v96, v50 offset:608
	ds_load_u8 v97, v50 offset:576
	ds_load_u8 v98, v50 offset:544
	ds_load_u8 v99, v50 offset:512
	ds_load_u8 v100, v50 offset:736
	ds_load_u8 v101, v50 offset:704
	ds_load_u8 v102, v50 offset:672
	ds_load_u8 v103, v50 offset:640
	ds_load_u8 v104, v50 offset:864
	ds_load_u8 v105, v50 offset:832
	ds_load_u8 v106, v50 offset:800
	ds_load_u8 v107, v50 offset:768
	ds_load_u8 v108, v50 offset:992
	ds_load_u8 v109, v50 offset:960
	ds_load_u8 v110, v50 offset:928
	ds_load_u8 v111, v50 offset:896
	ds_load_u8 v58, v50 offset:112
	ds_load_u8 v59, v50 offset:80
	ds_load_u8 v62, v50 offset:240
	ds_load_u8 v63, v50 offset:208
	ds_load_u8 v64, v50 offset:176
	ds_load_u8 v65, v50 offset:144
	ds_load_u8 v112, v50
	ds_load_u8 v66, v50 offset:16
	ds_load_u8 v113, v50 offset:32
	ds_load_u8 v67, v50 offset:48
	ds_load_u8 v68, v50 offset:368
	ds_load_u8 v69, v50 offset:336
	ds_load_u8 v70, v50 offset:304
	ds_load_u8 v71, v50 offset:272
	ds_load_u8 v72, v50 offset:496
	ds_load_u8 v73, v50 offset:464
	ds_load_u8 v74, v50 offset:432
	ds_load_u8 v75, v50 offset:400
	ds_load_u8 v76, v50 offset:624
	ds_load_u8 v77, v50 offset:592
	ds_load_u8 v78, v50 offset:560
	ds_load_u8 v79, v50 offset:528
	ds_load_u8 v80, v50 offset:752
	ds_load_u8 v81, v50 offset:720
	ds_load_u8 v82, v50 offset:688
	ds_load_u8 v83, v50 offset:656
	ds_load_u8 v60, v56
	ds_load_u8 v61, v50 offset:976
	ds_load_u8 v84, v50 offset:944
	ds_load_u8 v85, v50 offset:912
	ds_load_u8 v86, v50 offset:880
	ds_load_u8 v87, v50 offset:848
	ds_load_u8 v88, v50 offset:816
	ds_load_u8 v89, v50 offset:784
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b128 v57, v[33:36]
	s_waitcnt vmcnt(0)
	ds_store_b128 v57, v[37:40] offset:2048
	.loc	1 1030 31                       ; ragged.py:1030:31
	v_perm_b32 v33, v46, v45, 0xc0c0004
	v_perm_b32 v34, v44, v43, 0xc0c0004
	v_perm_b32 v35, v42, v41, 0xc0c0004
	v_perm_b32 v36, v112, v113, 0xc0c0004
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1030 31                       ; ragged.py:1030:31
	v_lshl_or_b32 v34, v34, 16, v33
	v_perm_b32 v40, v48, v47, 0xc0c0004
	v_lshl_or_b32 v33, v35, 16, v36
	ds_load_u8 v35, v52 offset:640
	ds_load_u8 v36, v52 offset:512
	v_perm_b32 v64, v65, v64, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	v_perm_b32 v65, v59, v58, 0xc0c0004
	v_perm_b32 v66, v66, v67, 0xc0c0004
	v_perm_b32 v67, v75, v74, 0xc0c0004
	v_perm_b32 v72, v73, v72, 0xc0c0004
	v_perm_b32 v70, v71, v70, 0xc0c0004
	v_perm_b32 v68, v69, v68, 0xc0c0004
	v_lshl_or_b32 v63, v62, 16, v64
	v_lshl_or_b32 v62, v65, 16, v66
	v_perm_b32 v69, v83, v82, 0xc0c0004
	v_perm_b32 v71, v81, v80, 0xc0c0004
	v_perm_b32 v73, v79, v78, 0xc0c0004
	v_perm_b32 v74, v77, v76, 0xc0c0004
	v_lshl_or_b32 v65, v72, 16, v67
	v_lshl_or_b32 v64, v68, 16, v70
	v_perm_b32 v75, v89, v88, 0xc0c0004
	v_perm_b32 v76, v87, v86, 0xc0c0004
	v_perm_b32 v77, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v52 offset:896
	ds_load_u8 v37, v52 offset:768
	v_perm_b32 v78, v61, v60, 0xc0c0004
	v_lshl_or_b32 v67, v71, 16, v69
	v_lshl_or_b32 v66, v74, 16, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v52 offset:128
	ds_load_u8 v38, v52
	v_lshl_or_b32 v36, v36, 16, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v52 offset:384
	ds_load_u8 v39, v52 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	v_perm_b32 v39, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v35, v38, 16, v37
	v_perm_b32 v37, v95, v94, 0xc0c0004
	v_perm_b32 v38, v93, v92, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[62:63], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v38, v38, 16, v37
	v_lshl_or_b32 v37, v40, 16, v39
	ds_load_u8 v39, v52 offset:1664
	ds_load_u8 v40, v52 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v52 offset:1920
	ds_load_u8 v41, v52 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	ds_load_u8 v41, v52 offset:1152
	ds_load_u8 v42, v52 offset:1024
	v_lshl_or_b32 v44, v40, 16, v39
	v_perm_b32 v39, v103, v102, 0xc0c0004
	v_perm_b32 v40, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v40, 16, v39
	ds_load_u8 v39, v52 offset:2688
	ds_load_u8 v40, v52 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v52 offset:1408
	ds_load_u8 v43, v52 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v43, v42, 16, v41
	v_perm_b32 v41, v99, v98, 0xc0c0004
	v_perm_b32 v42, v97, v96, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[43:44], v[37:38], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[64:65], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v45, v42, 16, v41
	ds_load_u8 v40, v52 offset:2944
	ds_load_u8 v41, v52 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	ds_load_u8 v41, v52 offset:2176
	ds_load_u8 v42, v52 offset:2048
	v_lshl_or_b32 v48, v40, 16, v39
	v_perm_b32 v39, v111, v110, 0xc0c0004
	v_perm_b32 v40, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v52 offset:2432
	ds_load_u8 v47, v52 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v47, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v47, v42, 16, v41
	v_perm_b32 v41, v107, v106, 0xc0c0004
	v_perm_b32 v42, v105, v104, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[47:48], v[66:67], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v39, v42, 16, v41
	ds_load_u8 v41, v52 offset:3712
	ds_load_u8 v42, v52 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v52 offset:3968
	ds_load_u8 v90, v52 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v90, v42, 0xc0c0004
	ds_load_u8 v90, v52 offset:3200
	ds_load_u8 v91, v52 offset:3072
	v_lshl_or_b32 v42, v42, 16, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v52 offset:3456
	ds_load_u8 v92, v52 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v91, 16, v90
	ds_load_u8 v90, v52 offset:704
	ds_load_u8 v91, v52 offset:576
	v_wmma_i32_16x16x16_iu4 v[1:8], v[41:42], v[39:40], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v52 offset:960
	ds_load_u8 v92, v52 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v52 offset:192
	ds_load_u8 v93, v52 offset:64
	v_lshl_or_b32 v91, v91, 16, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v52 offset:448
	ds_load_u8 v94, v52 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v93, 16, v92
	ds_load_u8 v92, v52 offset:1728
	ds_load_u8 v93, v52 offset:1600
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[62:63], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v33, v76, 16, v75
	v_lshl_or_b32 v34, v78, 16, v77
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[33:34], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v52 offset:1984
	ds_load_u8 v94, v52 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v52 offset:1216
	ds_load_u8 v95, v52 offset:1088
	v_lshl_or_b32 v93, v93, 16, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v52 offset:1472
	ds_load_u8 v96, v52 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v95, 16, v94
	ds_load_u8 v94, v52 offset:2752
	ds_load_u8 v95, v52 offset:2624
	v_wmma_i32_16x16x16_iu4 v[9:16], v[92:93], v[37:38], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[92:93], v[64:65], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v52 offset:3008
	ds_load_u8 v96, v52 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v52 offset:2240
	ds_load_u8 v97, v52 offset:2112
	v_lshl_or_b32 v59, v95, 16, v94
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v52 offset:2496
	ds_load_u8 v98, v52 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v52 offset:3776
	ds_load_u8 v99, v52 offset:3648
	v_lshl_or_b32 v58, v97, 16, v96
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[58:59], v[45:46], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[58:59], v[66:67], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v52 offset:4032
	ds_load_u8 v100, v52 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v52 offset:3264
	ds_load_u8 v101, v52 offset:3136
	v_lshl_or_b32 v61, v99, 16, v98
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v52 offset:3520
	ds_load_u8 v102, v52 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v101, 16, v100
	v_wmma_i32_16x16x16_iu4 v[9:16], v[60:61], v[39:40], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[60:61], v[33:34], v[25:32] neg_lo:[1,1,0]
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v48, v1
	v_cvt_f32_i32_e32 v47, v2
	v_cvt_f32_i32_e32 v46, v3
	v_cvt_f32_i32_e32 v45, v4
	v_cvt_f32_i32_e32 v44, v5
	v_cvt_f32_i32_e32 v43, v6
	v_cvt_f32_i32_e32 v42, v7
	v_cvt_f32_i32_e32 v41, v8
	v_cvt_f32_i32_e32 v40, v9
	v_cvt_f32_i32_e32 v39, v10
	v_cvt_f32_i32_e32 v38, v11
	v_cvt_f32_i32_e32 v37, v12
	v_cvt_f32_i32_e32 v36, v13
	v_cvt_f32_i32_e32 v35, v14
	v_cvt_f32_i32_e32 v34, v15
	v_cvt_f32_i32_e32 v33, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v13, v20
	v_cvt_f32_i32_e32 v12, v21
	v_cvt_f32_i32_e32 v11, v22
	v_cvt_f32_i32_e32 v10, v23
	v_cvt_f32_i32_e32 v9, v24
	v_cvt_f32_i32_e32 v8, v25
	v_cvt_f32_i32_e32 v7, v26
	v_cvt_f32_i32_e32 v6, v27
	v_cvt_f32_i32_e32 v5, v28
	v_cvt_f32_i32_e32 v4, v29
	v_cvt_f32_i32_e32 v3, v30
	v_cvt_f32_i32_e32 v2, v31
	v_cvt_f32_i32_e32 v1, v32
	s_lshl_b32 s8, s17, 4
.LBB0_7:                                ; %._crit_edge
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v17, s19, v49
	.loc	1 1098 33                       ; ragged.py:1098:33
	s_mul_i32 s0, s18, s16
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s5, 0xffff
	.loc	1 1098 21                       ; ragged.py:1098:21
	s_add_i32 s2, s19, s0
	s_mov_b32 s31, 0x31027000
	v_add_lshl_u32 v18, s2, v49, 1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s16, v17
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_mov_b32 s28, s4
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v17, 16, v17
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_dual_cndmask_b32 v19, 0x80000000, v18 :: v_dual_lshlrev_b32 v22, 5, v0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_dual_mov_b32 v29, 0x5410 :: v_dual_add_nc_u32 v18, 32, v18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s16, v17
	.loc	1 1105 33                       ; ragged.py:1105:33
	s_mul_i32 s1, s18, s17
	.loc	1 1097 36                       ; ragged.py:1097:36
	buffer_load_u16 v19, v19, s[28:31], 0 offen
	.loc	1 1105 21                       ; ragged.py:1105:21
	s_add_i32 s1, s3, s1
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mul_lo_u32 v23, s17, v49
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v18, s3, v0
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v20, s1, v0, 1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_dual_mov_b32 v30, 0x7632 :: v_dual_lshlrev_b32 v21, 1, v0
	.loc	1 1097 36                       ; ragged.py:1097:36
	buffer_load_u16 v17, v17, s[28:31], 0 offen
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s17, v18
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_and_b32 s29, s7, 0xffff
	s_mov_b32 s28, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_mov_b32 s38, s30
	s_mov_b32 s33, 0x76543210
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v18, 0x80000000, v20, s1
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s1, s2, s17
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	s_and_b32 s37, s37, 0xffff
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s1, s1, s3
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_mov_b32 s39, s31
	.loc	1 1104 36 is_stmt 1             ; ragged.py:1104:36
	buffer_load_u16 v18, v18, s[28:31], 0 offen
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_b32_e32 v20, 0x70, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v45, v45, v19 :: v_dual_and_b32 v0, 16, v0
	v_mul_f32_e32 v47, v47, v19
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v24, 1, v20
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshl_add_u32 v26, v20, 1, 0
	.loc	1 1102 17                       ; ragged.py:1102:17
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v48, v48, v19 :: v_dual_lshlrev_b32 v51, 16, v17
	v_mul_f32_e32 v46, v46, v19
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v25, s3, v24
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add3_u32 v23, s1, v24, v23
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshl_add_u32 v24, v20, 2, 0
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v44, v44, v19
	v_mul_f32_e32 v42, v42, v19
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v20, 64, v25
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s17, v25
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_lshlrev_b32_e32 v25, 1, v23
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v43, v43, v19
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v18
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s2, s17, v20
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, vcc_lo, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_nc_u32_e32 v20, 0x80, v25
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s1
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v40, v40, v19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_dual_cndmask_b32 v49, 0x80000000, v20 :: v_dual_and_b32 v22, 32, v22
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v16, v16, v51 :: v_dual_and_b32 v21, 28, v21
	v_mul_f32_e32 v35, v35, v19
	v_mul_f32_e32 v54, v12, v51
	v_mul_f32_e32 v6, v6, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_add3_u32 v21, v24, v22, v21
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add_lshl_u32 v22, v23, s8, 1
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v41, v41, v19
	v_mul_f32_e32 v38, v38, v19
	v_mul_f32_e32 v53, v13, v51
	.loc	1 1109 17                       ; ragged.py:1109:17
	ds_store_b32 v21, v17
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v32, 0x80000000, v22, s1
	v_add_nc_u32_e32 v22, 0x80, v22
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v4, v4, v51
	v_mul_f32_e32 v55, v11, v51
	v_mul_f32_e32 v33, v33, v19
	v_mul_f32_e32 v52, v14, v51
	.loc	1 1109 17                       ; ragged.py:1109:17
	ds_load_b128 v[11:14], v26 offset:256
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v39, v39, v19
	v_mul_f32_e32 v36, v36, v19
	v_mul_f32_e32 v37, v37, v19
	v_mul_f32_e32 v34, v34, v19
	.loc	1 1109 17                       ; ragged.py:1109:17
	ds_load_b128 v[17:20], v26
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e32 v50, 0x80000000, v22, vcc_lo
	.loc	1 1109 17                       ; ragged.py:1109:17
	ds_load_b128 v[21:24], v26 offset:16
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v6, v6, v13 :: v_dual_mul_f32 v15, v15, v51
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v48, v48, v17
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v31, 0x80000000, v25, s3
	.loc	1 1109 17                       ; ragged.py:1109:17
	ds_load_b128 v[25:28], v26 offset:272
	v_dual_mul_f32 v47, v47, v18 :: v_dual_mul_f32 v46, v46, v19
	v_dual_mul_f32 v45, v45, v20 :: v_dual_mul_f32 v16, v16, v17
	v_dual_mul_f32 v15, v15, v18 :: v_dual_mul_f32 v8, v8, v51
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v18, v53, v20 :: v_dual_mul_f32 v43, v43, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s15, v16, v16
	v_bfe_u32 v56, v15, 16, 1
	v_cmp_o_f32_e64 s16, v15, v15
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v41, v41, v24 :: v_dual_mul_f32 v38, v38, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v15, v15, v56, 0x7fff
	v_bfe_u32 v13, v46, 16, 1
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v39, v39, v12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s1, v46, v46
	v_bfe_u32 v65, v6, 16, 1
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v4, v4, v25
	v_dual_mul_f32 v20, v55, v22 :: v_dual_mul_f32 v33, v33, v28
	v_mul_f32_e32 v17, v52, v19
	v_mul_f32_e32 v19, v54, v21
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v55, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v60, v20, 16, 1
	v_cmp_o_f32_e64 s20, v20, v20
	v_bfe_u32 v57, v17, 16, 1
	v_bfe_u32 v59, v19, 16, 1
	v_cmp_o_f32_e64 s17, v17, v17
	v_cmp_o_f32_e64 s19, v19, v19
	v_add3_u32 v16, v16, v55, 0x7fff
	v_add3_u32 v17, v17, v57, 0x7fff
	v_add3_u32 v19, v19, v59, 0x7fff
	v_add3_u32 v20, v20, v60, 0x7fff
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v8, v8, v11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s15
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s16
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s17
	v_cndmask_b16 v17.l, 0x7fff, v19.h, s19
	v_cndmask_b16 v17.h, 0x7fff, v20.h, s20
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v40, v40, v11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v11, v48, 16, 1
	v_add3_u32 v13, v46, v13, 0x7fff
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v2, v2, v51
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v44, v44, v21
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s25, v6, v6
	v_add3_u32 v11, v48, v11, 0x7fff
	v_add3_u32 v6, v6, v65, 0x7fff
	v_bfe_u32 v22, v43, 16, 1
	v_bfe_u32 v21, v44, 16, 1
	v_cmp_o_f32_e64 s0, v47, v47
	v_cndmask_b16 v11.l, 0x7fff, v11.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v7, v7, v51
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s3, v44, v44
	v_cmp_o_f32_e64 s4, v43, v43
	v_add3_u32 v21, v44, v21, 0x7fff
	v_add3_u32 v22, v43, v22, 0x7fff
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v7, v7, v12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v12, v47, 16, 1
	v_bfe_u32 v58, v18, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v21.h, s3
	v_cmp_o_f32_e64 s18, v18, v18
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v36, v36, v25
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v12, v47, v12, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s1
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v5, v5, v51
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b16 v13.h, 0x7fff, v22.h, s4
	v_add3_u32 v18, v18, v58, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s0
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v9, v9, v51
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v5, v5, v14
	v_mul_f32_e32 v37, v37, v14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s18
	v_bfe_u32 v14, v45, 16, 1
	v_bfe_u32 v54, v33, 16, 1
	v_bfe_u32 v66, v5, 16, 1
	v_cmp_o_f32_e64 s26, v5, v5
	v_cmp_o_f32_e64 s2, v45, v45
	v_cmp_o_f32_e64 s6, v41, v41
	v_cmp_o_f32_e64 s9, v38, v38
	v_add3_u32 v5, v5, v66, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s25
	v_cmp_o_f32_e64 s14, v33, v33
	v_add3_u32 v14, v45, v14, 0x7fff
	v_add3_u32 v33, v33, v54, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s26
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v2, v2, v27 :: v_dual_mul_f32 v35, v35, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s2
	v_bfe_u32 v25, v40, 16, 1
	v_cmp_o_f32_e64 s7, v40, v40
	v_bfe_u32 v69, v2, 16, 1
	v_cmp_o_f32_e64 s29, v2, v2
	v_bfe_u32 v52, v35, 16, 1
	v_cmp_o_f32_e64 s12, v35, v35
	v_add3_u32 v25, v40, v25, 0x7fff
	v_add3_u32 v2, v2, v69, 0x7fff
	v_cmp_o_f32_e64 s10, v37, v37
	v_add3_u32 v35, v35, v52, 0x7fff
	v_bfe_u32 v67, v4, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v25.h, s7
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s29
	v_cndmask_b32_e32 v2, v11, v13, vcc_lo
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v10, v10, v51 :: v_dual_mul_f32 v9, v9, v24
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v24, v41, 16, 1
	v_bfe_u32 v63, v8, 16, 1
	v_bfe_u32 v64, v7, 16, 1
	v_cmp_o_f32_e64 s27, v4, v4
	v_bfe_u32 v62, v9, 16, 1
	v_cmp_o_f32_e64 s22, v9, v9
	v_add3_u32 v24, v41, v24, 0x7fff
	v_add3_u32 v4, v4, v67, 0x7fff
	v_cmp_o_f32_e64 s23, v8, v8
	v_add3_u32 v9, v9, v62, 0x7fff
	v_cmp_o_f32_e64 s24, v7, v7
	v_cndmask_b16 v14.h, 0x7fff, v24.h, s6
	v_cndmask_b16 v24.h, 0x7fff, v33.h, s14
	v_add3_u32 v8, v8, v63, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s22
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v10, v10, v23
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v7, v7, v64, 0x7fff
	v_cmp_o_f32_e64 s8, v39, v39
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s23
	v_cmp_o_f32_e64 s11, v36, v36
	v_bfe_u32 v61, v10, 16, 1
	v_cmp_o_f32_e64 s21, v10, v10
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s24
	v_permlanex16_b32 v2, v2, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v18, 0x3276, v30, vcc_lo
	v_add3_u32 v10, v10, v61, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s21
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v34, v34, v27
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v27, v38, 16, 1
	v_bfe_u32 v53, v34, 16, 1
	v_cmp_o_f32_e64 s13, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v27, v38, v27, 0x7fff
	v_add3_u32 v34, v34, v53, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v22.l, 0x7fff, v27.h, s9
	v_cndmask_b16 v24.l, 0x7fff, v34.h, s13
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v42, v42, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v23, v42, 16, 1
	v_cmp_o_f32_e64 s5, v42, v42
	v_add3_u32 v23, v42, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v14.l, 0x7fff, v23.h, s5
	v_cndmask_b16 v23.h, 0x7fff, v35.h, s12
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v1, v1, v51 :: v_dual_cndmask_b32 v6, v12, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v1, v1, v28
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v28, v37, 16, 1
	v_bfe_u32 v70, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v28, v37, v28, 0x7fff
	v_cmp_o_f32_e64 s30, v1, v1
	v_add3_u32 v1, v1, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v22.h, 0x7fff, v28.h, s10
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v3, v3, v51
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v51, v36, 16, 1
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s30
	v_cndmask_b32_e32 v1, v13, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v3, v3, v26
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v26, v39, 16, 1
	v_cndmask_b32_e32 v13, v17, v15, vcc_lo
	v_cndmask_b32_e32 v15, v15, v17, vcc_lo
	v_cndmask_b32_e32 v17, v9, v16, vcc_lo
	v_bfe_u32 v68, v3, 16, 1
	v_cmp_o_f32_e64 s28, v3, v3
	v_cndmask_b32_e32 v9, v16, v9, vcc_lo
	v_lshl_or_b32 v16, v18, 8, v18
	v_add3_u32 v26, v39, v26, 0x7fff
	v_add3_u32 v3, v3, v68, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s27
	v_cndmask_b32_e32 v4, v14, v12, vcc_lo
	v_cndmask_b32_e32 v14, 0x1054, v29, vcc_lo
	v_add3_u32 v36, v36, v51, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s28
	v_cndmask_b16 v21.h, 0x7fff, v26.h, s8
	v_cndmask_b32_e32 v19, v0, v5, vcc_lo
	v_lshl_or_b32 v14, v14, 8, v14
	v_cndmask_b16 v23.l, 0x7fff, v36.h, s11
	v_cndmask_b32_e32 v18, v3, v7, vcc_lo
	v_dual_cndmask_b32 v3, v7, v3 :: v_dual_cndmask_b32 v0, v5, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v7, 0x540054, v14
	v_and_b32_e32 v14, 0x760076, v16
	v_permlanex16_b32 v5, v6, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v12, v22, v24, vcc_lo
	v_cndmask_b32_e32 v8, v23, v21, vcc_lo
	v_lshl_or_b32 v6, v7, 4, v7
	v_lshl_or_b32 v7, v14, 4, v14
	v_cndmask_b32_e32 v10, v21, v23, vcc_lo
	v_permlanex16_b32 v14, v15, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v11, v24, v22, vcc_lo
	v_and_b32_e32 v15, 0x5040504, v6
	v_and_b32_e32 v16, 0x7060706, v7
	v_permlanex16_b32 v10, v10, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v9, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v3, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v0, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v15
	v_perm_b32 v1, v2, v1, v16
	v_perm_b32 v2, v5, v4, v15
	v_perm_b32 v3, v5, v4, v16
	v_perm_b32 v4, v10, v8, v15
	v_perm_b32 v5, v10, v8, v16
	v_perm_b32 v6, v12, v11, v15
	v_perm_b32 v7, v12, v11, v16
	v_perm_b32 v8, v14, v13, v15
	v_perm_b32 v9, v14, v13, v16
	v_perm_b32 v10, v20, v17, v15
	v_perm_b32 v11, v20, v17, v16
	v_perm_b32 v12, v21, v18, v15
	v_perm_b32 v13, v21, v18, v16
	v_perm_b32 v14, v22, v19, v15
	v_perm_b32 v15, v22, v19, v16
	s_clause 0x3
	buffer_store_b128 v[0:3], v31, s[36:39], 0 offen
	buffer_store_b128 v[4:7], v49, s[36:39], 0 offen
	buffer_store_b128 v[8:11], v32, s[36:39], 0 offen
	buffer_store_b128 v[12:15], v50, s[36:39], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 114
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
		.amdhsa_inst_pref_size 49
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 114
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6176
; TotalNumSgprs: 42
; NumVgprs: 114
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 114
; Occupancy: 12
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
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	995                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	996                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     114
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
