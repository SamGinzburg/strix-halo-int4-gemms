	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v35, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s19, 0x7f
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
	s_ashr_i32 s26, s4, 5
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s5, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s5, s26
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s8, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s6
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s6
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s6, s10, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s9, s5
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s6, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s7, s9
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s24, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s6, 0, s9
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s24, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s4, s2, s4
	.loc	1 1207 37                       ; ragged.py:1207:37
	s_mul_i32 s33, s24, s18
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s8, s4
	s_xor_b32 s11, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s27, s11, 31
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s7, s6
	s_add_i32 s10, s7, s6
	s_load_b64 s[6:7], s[0:1], 0x20
	s_mul_hi_u32 s10, s8, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s10, s9
	s_add_i32 s11, s10, 1
	s_sub_i32 s8, s8, s12
	s_sub_i32 s12, s8, s9
	s_cmp_ge_u32 s8, s9
	s_cselect_b32 s10, s11, s10
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s10, 1
	s_cmp_ge_u32 s8, s9
	s_cselect_b32 s8, s11, s10
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s25, s24, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s35, s8, s27
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[10:11], s[24:25], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s9, s35, s27
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s8, s9, s5
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s25, s9, 5
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s8, s4, s8
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s10
	s_addc_u32 s7, s7, s11
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v1, s25, v35
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s4, s[6:7], 0x0
	s_mov_b32 s9, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v2, 16, v1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s7, s18, v1
	v_cmp_gt_i32_e64 s6, s18, v2
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s4, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge4_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s30, s25, s33
	s_lshl_b32 s28, s19, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr30
                                        ; implicit-def: $sgpr28
.LBB0_3:                                ; %Flow216
	s_load_b64 s[16:17], s[0:1], 0x28
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v40, 0x70, v0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_mov_b32_e32 v64, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s29, s8, 7
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x38
	s_load_b256 s[8:15], s[0:1], 0x0
	v_dual_mov_b32 v64, 0 :: v_dual_lshlrev_b32 v1, 3, v0
	v_dual_mov_b32 v67, 0 :: v_dual_lshlrev_b32 v2, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v63, 0 :: v_dual_and_b32 v4, 24, v1
	.loc	1 1118 23 is_stmt 1             ; ragged.py:1118:23
	s_lshl_b32 s34, s3, 5
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v2, 0x70, v2
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s38, s4, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v6, s25, v4
	s_cmp_lt_i32 s34, 32
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v7, s29, v2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v3, 2, v0
	v_lshrrev_b32_e32 v5, 3, v0
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s18, v6
	v_lshrrev_b32_e32 v6, 1, v0
	s_cselect_b32 s39, -1, 0
	.loc	1 1123 43                       ; ragged.py:1123:43
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s36, s24, s36
	s_add_i32 s30, s25, s33
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v65, 0, v35
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s4, s19, v7
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v7, s30, v35
	v_dual_mov_b32 v59, 0 :: v_dual_and_b32 v6, 48, v6
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_add_i32 s36, s36, s34
	s_mul_i32 s26, s26, s24
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v5, s36, v5
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v3, s36, v3
	s_mov_b32 s20, s8
	s_mov_b32 s8, s10
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v8, 16, v7
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v70, v65, v6
	v_dual_mov_b32 v53, 0 :: v_dual_lshlrev_b32 v6, 5, v0
	s_sub_i32 s10, s27, s26
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v10, 16, v5
	s_sub_i32 s10, s10, s35
	v_mul_lo_u32 v3, s18, v3
	s_mul_i32 s5, s5, s10
	v_mul_lo_u32 v71, v7, s37
	v_mul_lo_u32 v72, v8, s37
	v_dual_mov_b32 v58, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	v_dual_mov_b32 v51, 0 :: v_dual_lshlrev_b32 v8, 2, v40
	v_dual_mov_b32 v49, 0 :: v_dual_and_b32 v6, 32, v6
	s_lshl_b32 s5, s5, 7
	s_lshl_b32 s2, s2, 7
	v_mul_lo_u32 v10, s19, v10
	v_mul_lo_u32 v5, s19, v5
	s_add_i32 s5, s2, s5
	s_lshl_b32 s2, s35, 5
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v62, s29, v0
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v69, 0, v1
	v_or_b32_e32 v9, 0x3f0, v0
	v_dual_mov_b32 v56, 0 :: v_dual_and_b32 v7, 28, v7
	v_add3_u32 v6, 0, v8, v6
	v_dual_mov_b32 v47, 0 :: v_dual_lshlrev_b32 v8, 1, v40
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add3_u32 v3, v3, s2, v4
	v_cndmask_b32_e64 v4, 0, 1, s39
	s_lshl_b32 s10, s27, 5
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s19, v62
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add3_u32 v73, s5, v10, v2
	v_add3_u32 v74, s5, v5, v2
	v_subrev_nc_u32_e32 v75, s10, v3
	v_cmp_ne_u32_e64 s5, 1, v4
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v76, 0, v9
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v77, v69, v1
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v78, v6, v7
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v79, 0, v8
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v34, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_i32 s38, s38, -1
	s_mov_b32 s3, 0
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s31, s24, s37
	s_and_b32 s21, s9, 0xffff
	s_lshl_b32 s28, s19, 4
	s_and_b32 s9, s11, 0xffff
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshr_b32 s33, s38, 5
	s_sub_i32 s34, s34, 32
	s_lshl_b32 s2, s19, 5
	s_lshl_b32 s18, s18, 5
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s10, s3, s31
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v17, v71, s3, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s10, s10, s19
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v18, v72, s3, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v19, v62, s10, 1
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s10, s3, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s7
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_lg_u32 s3, s33
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s6
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	s_mov_b32 s3, s10
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x1
	buffer_load_u16 v17, v17, s[24:27], 0 offen
	buffer_load_u16 v18, v18, s[24:27], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 1218 21                       ; ragged.py:1218:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add_nc_u32_e32 v75, s18, v75
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v29, 16, v18
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v19
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v31, v94, v17 :: v_dual_add_nc_u32 v74, s2, v74
	v_mul_f32_e32 v30, v95, v17
	v_mul_f32_e32 v91, v91, v17
	v_mul_f32_e32 v90, v90, v17
	v_mul_f32_e32 v32, v93, v17
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_store_b32 v78, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v94, v13, v29
	v_mul_f32_e32 v5, v5, v29
	v_mul_f32_e32 v93, v14, v29
	v_mul_f32_e32 v3, v3, v29
	v_mul_f32_e32 v95, v12, v29
	v_mul_f32_e32 v1, v1, v29
	v_mul_f32_e32 v96, v11, v29
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[11:14], v79 offset:256
	ds_load_b128 v[25:28], v79 offset:272
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v7, v7, v29
	v_mul_f32_e32 v8, v8, v29
	v_mul_f32_e32 v87, v87, v17
	v_mul_f32_e32 v89, v89, v17
	v_mul_f32_e32 v80, v80, v17
	v_mul_f32_e32 v2, v2, v29
	v_mul_f32_e32 v9, v9, v29
	v_mul_f32_e32 v6, v6, v29
	v_mul_f32_e32 v4, v4, v29
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[21:24], v79 offset:16
	.loc	1 1219 17                       ; ragged.py:1219:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v38, v5, v14 :: v_dual_mul_f32 v15, v15, v29
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v84, v84, v17
	v_mul_f32_e32 v82, v82, v17
	v_dual_mul_f32 v88, v88, v17 :: v_dual_fmac_f32 v41, v7, v12
	v_dual_mul_f32 v81, v81, v17 :: v_dual_fmac_f32 v42, v8, v11
	v_mul_f32_e32 v83, v83, v17
	.loc	1 1219 17                       ; ragged.py:1219:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v53, v82, v26
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v86, v86, v17 :: v_dual_fmac_f32 v59, v88, v24
	v_dual_mul_f32 v92, v92, v17 :: v_dual_fmac_f32 v33, v1, v28
	v_dual_mul_f32 v10, v10, v29 :: v_dual_fmac_f32 v45, v96, v22
	v_mul_f32_e32 v85, v85, v17
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[17:20], v79
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_fmac_f32_e32 v34, v2, v27
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v16, v16, v29 :: v_dual_fmac_f32 v43, v9, v24
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add_nc_u32_e32 v73, s2, v73
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_fmac_f32_e32 v63, v91, v21
	v_dual_fmac_f32 v61, v90, v22 :: v_dual_fmac_f32 v58, v87, v11
	v_dual_fmac_f32 v60, v89, v23 :: v_dual_fmac_f32 v57, v86, v12
	v_fmac_f32_e32 v52, v81, v27
	v_fmac_f32_e32 v54, v83, v25
	v_fmac_f32_e32 v44, v10, v23
	v_fmac_f32_e32 v56, v85, v13
	v_fmac_f32_e32 v39, v6, v13
	v_dual_fmac_f32 v37, v4, v25 :: v_dual_fmac_f32 v36, v3, v26
	v_fmac_f32_e32 v46, v95, v21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v64, v30, v17
	v_dual_fmac_f32 v68, v31, v18 :: v_dual_fmac_f32 v67, v32, v19
	v_fmac_f32_e32 v66, v92, v20
	v_fmac_f32_e32 v50, v16, v17
	v_dual_fmac_f32 v48, v93, v19 :: v_dual_fmac_f32 v49, v15, v18
	v_fmac_f32_e32 v55, v84, v14
	v_fmac_f32_e32 v47, v94, v20
	v_fmac_f32_e32 v51, v80, v28
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	.loc	1 1120 27 is_stmt 1             ; ragged.py:1120:27
	s_and_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v80, v75
	v_dual_mov_b32 v81, v74 :: v_dual_mov_b32 v82, v73
	s_mov_b32 s35, s34
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
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
.LBB0_8:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1130 38 is_stmt 1             ; ragged.py:1130:38
	v_cndmask_b32_e64 v83, 0x80000000, v80, s1
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_cndmask_b32_e64 v87, 0x80000000, v82, s4
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	.loc	1 1120 27                       ; ragged.py:1120:27
	v_add_nc_u32_e32 v82, s2, v82
	.loc	1 1130 38                       ; ragged.py:1130:38
	buffer_load_b64 v[91:92], v83, s[20:23], 0 offen
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_cndmask_b32_e64 v83, 0x80000000, v81, s4
	.loc	1 1120 27                       ; ragged.py:1120:27
	v_add_nc_u32_e32 v81, s2, v81
	v_add_nc_u32_e32 v80, s18, v80
	s_add_i32 s35, s35, 32
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_clause 0x1
	buffer_load_b128 v[87:90], v87, s[8:11], 0 offen
	buffer_load_b128 v[83:86], v83, s[8:11], 0 offen
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cmp_lt_i32 s35, 0
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt vmcnt(2)
	ds_store_b64 v69, v[91:92]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1132 35                       ; ragged.py:1132:35
	ds_load_u8 v91, v65 offset:96
	ds_load_u8 v92, v65 offset:64
	ds_load_u8 v93, v65 offset:224
	ds_load_u8 v94, v65 offset:192
	ds_load_u8 v95, v65 offset:160
	ds_load_u8 v96, v65 offset:128
	ds_load_u8 v97, v65 offset:352
	ds_load_u8 v98, v65 offset:320
	ds_load_u8 v99, v65 offset:288
	ds_load_u8 v100, v65 offset:256
	ds_load_u8 v101, v65 offset:480
	ds_load_u8 v102, v65 offset:448
	ds_load_u8 v103, v65 offset:416
	ds_load_u8 v104, v65 offset:384
	ds_load_u8 v105, v65 offset:608
	ds_load_u8 v106, v65 offset:576
	ds_load_u8 v107, v65 offset:544
	ds_load_u8 v108, v65 offset:512
	ds_load_u8 v109, v65 offset:736
	ds_load_u8 v110, v65 offset:704
	ds_load_u8 v111, v65 offset:672
	ds_load_u8 v112, v65 offset:640
	ds_load_u8 v113, v65 offset:864
	ds_load_u8 v114, v65 offset:832
	ds_load_u8 v115, v65 offset:800
	ds_load_u8 v116, v65 offset:768
	ds_load_u8 v117, v65 offset:992
	ds_load_u8 v118, v65 offset:960
	ds_load_u8 v119, v65 offset:928
	ds_load_u8 v120, v65 offset:896
	ds_load_u8 v121, v65 offset:112
	ds_load_u8 v122, v65 offset:80
	ds_load_u8 v123, v65 offset:240
	ds_load_u8 v124, v65 offset:208
	ds_load_u8 v125, v65 offset:176
	ds_load_u8 v126, v65 offset:144
	ds_load_u8 v127, v65
	ds_load_u8 v128, v65 offset:16
	ds_load_u8 v129, v65 offset:32
	ds_load_u8 v130, v65 offset:48
	ds_load_u8 v131, v65 offset:368
	ds_load_u8 v132, v65 offset:336
	ds_load_u8 v133, v65 offset:304
	ds_load_u8 v134, v65 offset:272
	ds_load_u8 v135, v65 offset:496
	ds_load_u8 v136, v65 offset:464
	ds_load_u8 v137, v65 offset:432
	ds_load_u8 v138, v65 offset:400
	ds_load_u8 v139, v65 offset:624
	ds_load_u8 v140, v65 offset:592
	ds_load_u8 v141, v65 offset:560
	ds_load_u8 v142, v65 offset:528
	ds_load_u8 v143, v65 offset:752
	ds_load_u8 v144, v65 offset:720
	ds_load_u8 v145, v65 offset:688
	ds_load_u8 v146, v65 offset:656
	ds_load_u8 v147, v76
	ds_load_u8 v148, v65 offset:976
	ds_load_u8 v149, v65 offset:944
	ds_load_u8 v150, v65 offset:912
	ds_load_u8 v151, v65 offset:880
	ds_load_u8 v152, v65 offset:848
	ds_load_u8 v153, v65 offset:816
	ds_load_u8 v154, v65 offset:784
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v77, v[83:86]
	ds_store_b128 v77, v[87:90] offset:2048
	.loc	1 1132 35                       ; ragged.py:1132:35
	v_perm_b32 v83, v96, v95, 0xc0c0004
	v_perm_b32 v84, v94, v93, 0xc0c0004
	v_perm_b32 v85, v127, v129, 0xc0c0004
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1132 35                       ; ragged.py:1132:35
	v_perm_b32 v89, v98, v97, 0xc0c0004
	v_lshl_or_b32 v84, v84, 16, v83
	v_perm_b32 v83, v92, v91, 0xc0c0004
	v_perm_b32 v93, v106, v105, 0xc0c0004
	v_perm_b32 v97, v114, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v83, v83, 16, v85
	ds_load_u8 v85, v70 offset:640
	ds_load_u8 v86, v70 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:896
	ds_load_u8 v87, v70 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v70 offset:128
	ds_load_u8 v87, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v70 offset:384
	ds_load_u8 v88, v70 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v88, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v85, v87, 16, v85
	v_perm_b32 v87, v104, v103, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[83:84], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v88, v88, 16, v87
	v_perm_b32 v87, v100, v99, 0xc0c0004
	v_lshl_or_b32 v87, v89, 16, v87
	ds_load_u8 v89, v70 offset:1664
	ds_load_u8 v90, v70 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v70 offset:1920
	ds_load_u8 v91, v70 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v70 offset:1152
	ds_load_u8 v91, v70 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v70 offset:1408
	ds_load_u8 v92, v70 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_perm_b32 v92, v110, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v89, v91, 16, v89
	v_perm_b32 v91, v112, v111, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[89:90], v[87:88], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	v_perm_b32 v91, v108, v107, 0xc0c0004
	v_lshl_or_b32 v91, v93, 16, v91
	ds_load_u8 v93, v70 offset:2688
	ds_load_u8 v94, v70 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v70 offset:2944
	ds_load_u8 v95, v70 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v94, 16, v93
	ds_load_u8 v93, v70 offset:2176
	ds_load_u8 v95, v70 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v95, v93, 0xc0c0004
	ds_load_u8 v95, v70 offset:2432
	ds_load_u8 v96, v70 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	v_perm_b32 v96, v118, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v93, v95, 16, v93
	v_perm_b32 v95, v120, v119, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[91:92], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v95
	v_perm_b32 v95, v116, v115, 0xc0c0004
	v_lshl_or_b32 v95, v97, 16, v95
	ds_load_u8 v97, v70 offset:3712
	ds_load_u8 v98, v70 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v70 offset:3968
	ds_load_u8 v99, v70 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v98, 16, v97
	ds_load_u8 v97, v70 offset:3200
	ds_load_u8 v99, v70 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v99, v97, 0xc0c0004
	ds_load_u8 v99, v70 offset:3456
	ds_load_u8 v100, v70 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v99, 16, v97
	ds_load_u8 v99, v70 offset:704
	ds_load_u8 v100, v70 offset:576
	v_wmma_i32_16x16x16_iu4 v[1:8], v[97:98], v[95:96], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v70 offset:960
	ds_load_u8 v101, v70 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v100, 16, v99
	ds_load_u8 v99, v70 offset:192
	ds_load_u8 v101, v70 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v101, v99, 0xc0c0004
	ds_load_u8 v101, v70 offset:448
	ds_load_u8 v102, v70 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v99, v101, 16, v99
	v_wmma_i32_16x16x16_iu4 v[9:16], v[99:100], v[83:84], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v83, v70 offset:1728
	ds_load_u8 v84, v70 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v70 offset:1984
	ds_load_u8 v101, v70 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v101, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v84, 16, v83
	ds_load_u8 v83, v70 offset:1216
	ds_load_u8 v101, v70 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v101, v83, 0xc0c0004
	ds_load_u8 v101, v70 offset:1472
	ds_load_u8 v102, v70 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v101, 16, v83
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[87:88], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v87, v70 offset:2752
	ds_load_u8 v88, v70 offset:2624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v70 offset:3008
	ds_load_u8 v101, v70 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v101, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v88, 16, v87
	ds_load_u8 v87, v70 offset:2240
	ds_load_u8 v101, v70 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v101, v87, 0xc0c0004
	ds_load_u8 v101, v70 offset:2496
	ds_load_u8 v102, v70 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v87, v101, 16, v87
	v_wmma_i32_16x16x16_iu4 v[9:16], v[87:88], v[91:92], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v91, v70 offset:3776
	ds_load_u8 v92, v70 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v70 offset:4032
	ds_load_u8 v101, v70 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v101, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v70 offset:3264
	ds_load_u8 v101, v70 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v101, v91, 0xc0c0004
	ds_load_u8 v101, v70 offset:3520
	ds_load_u8 v102, v70 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v91, v101, 16, v91
	v_perm_b32 v101, v128, v130, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[91:92], v[95:96], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v95, v126, v125, 0xc0c0004
	v_perm_b32 v96, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v95
	v_perm_b32 v95, v122, v121, 0xc0c0004
	v_lshl_or_b32 v95, v95, 16, v101
	v_perm_b32 v101, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[85:86], v[95:96], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v85, v138, v137, 0xc0c0004
	v_perm_b32 v86, v136, v135, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[99:100], v[95:96], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v86, v86, 16, v85
	v_perm_b32 v85, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v85, v101, 16, v85
	v_perm_b32 v101, v140, v139, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[85:86], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v89, v146, v145, 0xc0c0004
	v_perm_b32 v90, v144, v143, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[85:86], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	v_perm_b32 v89, v142, v141, 0xc0c0004
	v_lshl_or_b32 v89, v101, 16, v89
	v_perm_b32 v101, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[93:94], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v93, v154, v153, 0xc0c0004
	v_perm_b32 v94, v152, v151, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[87:88], v[89:90], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v93, v94, 16, v93
	v_perm_b32 v94, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v94, v101, 16, v94
	v_wmma_i32_16x16x16_iu4 v[17:24], v[97:98], v[93:94], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[91:92], v[93:94], v[25:32] neg_lo:[1,1,0]
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v95, v1
	v_cvt_f32_i32_e32 v94, v2
	v_cvt_f32_i32_e32 v93, v3
	v_cvt_f32_i32_e32 v92, v4
	v_cvt_f32_i32_e32 v91, v5
	v_cvt_f32_i32_e32 v90, v6
	v_cvt_f32_i32_e32 v89, v7
	v_cvt_f32_i32_e32 v88, v8
	v_cvt_f32_i32_e32 v87, v9
	v_cvt_f32_i32_e32 v86, v10
	v_cvt_f32_i32_e32 v85, v11
	v_cvt_f32_i32_e32 v84, v12
	v_cvt_f32_i32_e32 v83, v13
	v_cvt_f32_i32_e32 v82, v14
	v_cvt_f32_i32_e32 v81, v15
	v_cvt_f32_i32_e32 v80, v16
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
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge4
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mul_lo_u32 v2, s19, v35
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v1, 1, v40
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v3, v64, 16, 1
	v_bfe_u32 v5, v68, 16, 1
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	s_mul_i32 s0, s30, s19
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s0, s0, s29
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v4, s29, v1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v6, v67, 16, 1
	v_add3_u32 v3, v64, v3, 0x7fff
	v_bfe_u32 v8, v66, 16, 1
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	v_add3_u32 v16, s0, v1, v2
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v2, v68, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v68, v68
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v7, 64, v4
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s19, v4
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b16 v1.l, 0x7fff, v3.h, vcc_lo
	v_add3_u32 v3, v67, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v67, v67
	v_add3_u32 v4, v66, v8, 0x7fff
	v_cmp_o_f32_e64 s3, v66, v66
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v63, 16, 1
	v_bfe_u32 v5, v61, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s2
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s3
	v_bfe_u32 v4, v60, 16, 1
	v_add3_u32 v2, v63, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_add3_u32 v5, v61, v5, 0x7fff
	v_cmp_o_f32_e64 s2, v61, v61
	v_bfe_u32 v6, v59, 16, 1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v4, v60, v4, 0x7fff
	v_cmp_o_f32_e64 s3, v60, v60
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s1
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s2
	v_bfe_u32 v5, v58, 16, 1
	v_bfe_u32 v7, v57, 16, 1
	v_add3_u32 v6, v59, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v59, v59
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s3
	v_add3_u32 v5, v58, v5, 0x7fff
	v_cmp_o_f32_e64 s2, v58, v58
	v_add3_u32 v7, v57, v7, 0x7fff
	v_cmp_o_f32_e64 s3, v57, v57
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v56, 16, 1
	v_bfe_u32 v8, v55, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s2
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s3
	v_bfe_u32 v7, v54, 16, 1
	v_add3_u32 v6, v56, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v56, v56
	v_add3_u32 v8, v55, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v55, v55
	v_bfe_u32 v9, v53, 16, 1
	v_add3_u32 v7, v54, v7, 0x7fff
	v_cmp_o_f32_e64 s3, v54, v54
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s1
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s2
	v_bfe_u32 v8, v52, 16, 1
	v_bfe_u32 v10, v51, 16, 1
	v_add3_u32 v9, v53, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v53, v53
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s3
	v_add3_u32 v8, v52, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v52, v52
	v_add3_u32 v10, v51, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v51, v51
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s1
	v_bfe_u32 v9, v50, 16, 1
	v_bfe_u32 v11, v49, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s2
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s3
	v_bfe_u32 v10, v48, 16, 1
	v_add3_u32 v9, v50, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v50, v50
	v_add3_u32 v11, v49, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v49, v49
	v_bfe_u32 v12, v47, 16, 1
	v_add3_u32 v10, v48, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v48, v48
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s1
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s2
	v_bfe_u32 v11, v46, 16, 1
	v_bfe_u32 v13, v45, 16, 1
	v_add3_u32 v12, v47, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v47, v47
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s3
	v_add3_u32 v11, v46, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v46, v46
	v_add3_u32 v13, v45, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v45, v45
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s1
	v_bfe_u32 v12, v44, 16, 1
	v_bfe_u32 v14, v43, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s2
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s3
	v_bfe_u32 v13, v42, 16, 1
	v_add3_u32 v12, v44, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v44, v44
	v_add3_u32 v14, v43, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v43, v43
	v_bfe_u32 v15, v41, 16, 1
	v_add3_u32 v13, v42, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v42, v42
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s1
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s2
	v_bfe_u32 v14, v39, 16, 1
	v_bfe_u32 v17, v38, 16, 1
	v_add3_u32 v15, v41, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v41, v41
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s3
	v_add3_u32 v14, v39, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v39, v39
	v_add3_u32 v17, v38, v17, 0x7fff
	v_cmp_o_f32_e64 s3, v38, v38
	v_bfe_u32 v18, v37, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s1
	v_bfe_u32 v15, v36, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s2
	v_cndmask_b16 v14.h, 0x7fff, v17.h, s3
	v_add3_u32 v17, v37, v18, 0x7fff
	v_bfe_u32 v18, v34, 16, 1
	v_cmp_o_f32_e64 s1, v37, v37
	v_bfe_u32 v19, v33, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_add3_u32 v15, v36, v15, 0x7fff
	v_add3_u32 v18, v34, v18, 0x7fff
	v_cmp_o_f32_e64 s3, v34, v34
	v_add3_u32 v19, v33, v19, 0x7fff
	v_cmp_o_f32_e64 s4, v33, v33
	v_cndmask_b16 v15.l, 0x7fff, v17.h, s1
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v18.h, s3
	v_cmp_o_f32_e64 s2, v36, v36
	v_cndmask_b16 v0.h, 0x7fff, v19.h, s4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e64 v17, v2, v1, s1
	v_cndmask_b32_e64 v1, v1, v2, s1
	v_cndmask_b32_e64 v18, v4, v3, s1
	v_cndmask_b32_e64 v2, v3, v4, s1
	v_cndmask_b32_e64 v19, v7, v5, s1
	v_cndmask_b32_e64 v3, v5, v7, s1
	v_mov_b32_e32 v4, 0x5410
	v_mov_b32_e32 v5, 0x7632
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s2
	s_mov_b32 s2, 0x76543210
	v_cndmask_b32_e64 v7, v8, v6, s1
	v_cndmask_b32_e64 v4, 0x1054, v4, s1
	v_cndmask_b32_e64 v5, 0x3276, v5, s1
	v_cndmask_b32_e64 v6, v6, v8, s1
	v_cndmask_b32_e64 v20, v11, v9, s1
	v_cndmask_b32_e64 v8, v9, v11, s1
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v5, v5, 8, v5
	v_cndmask_b32_e64 v11, v12, v10, s1
	v_cndmask_b32_e64 v9, v10, v12, s1
	v_permlanex16_b32 v12, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v5, 0x760076, v5
	v_cndmask_b32_e64 v21, v15, v13, s1
	v_cndmask_b32_e64 v10, v13, v15, s1
	v_cndmask_b32_e64 v15, v0, v14, s1
	v_lshl_or_b32 v2, v4, 4, v4
	v_lshl_or_b32 v4, v5, 4, v5
	v_cndmask_b32_e64 v0, v14, v0, s1
	v_permlanex16_b32 v1, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v3, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 0x5040504, v2
	v_and_b32_e32 v23, 0x7060706, v4
	v_permlanex16_b32 v26, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v6, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v17, v22
	v_perm_b32 v1, v1, v17, v23
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	v_lshlrev_b32_e32 v17, 1, v16
	v_add_lshl_u32 v16, v16, s28, 1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v2, v12, v18, v22
	v_perm_b32 v3, v12, v18, v23
	v_permlanex16_b32 v24, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v18, 0x80, v17
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s1, s7, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_permlanex16_b32 v25, v10, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v5, v19, v22
	v_perm_b32 v5, v5, v19, v23
	v_add_nc_u32_e32 v19, 0x80, v16
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s7, vcc_lo
	s_and_b32 s0, s6, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v6, v13, v7, v22
	v_perm_b32 v7, v13, v7, v23
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, s6, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v8, v14, v20, v22
	v_perm_b32 v9, v14, v20, v23
	v_perm_b32 v10, v24, v11, v22
	v_perm_b32 v11, v24, v11, v23
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_perm_b32 v12, v25, v21, v22
	v_perm_b32 v13, v25, v21, v23
	v_perm_b32 v14, v26, v15, v22
	v_perm_b32 v15, v26, v15, v23
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v17, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v18, s[16:19], 0 offen
	buffer_store_b128 v[8:11], v16, s[16:19], 0 offen
	buffer_store_b128 v[12:15], v19, s[16:19], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 155
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
		.amdhsa_inst_pref_size 52
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 155
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6620
; TotalNumSgprs: 42
; NumVgprs: 155
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 155
; Occupancy: 9
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
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
      - .offset:         60
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     155
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
