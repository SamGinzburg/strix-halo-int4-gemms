	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[44:45], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v67, 15, v0
	v_and_b32_e32 v133, 0x80, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s4, s45, s8
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s8, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s9, s4, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s10, s9
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_mul_hi_u32 s3, s5, s4
	s_xor_b32 s4, s2, s9
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s11, s4, 31
	s_sub_i32 s12, s5, s6
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s10
	s_cmp_ge_u32 s12, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s10
	s_cselect_b32 s3, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s11
	s_sub_i32 s45, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s45, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s6, s2
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[34:35], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_addc_u32 s7, s7, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s8, s2
	s_addc_u32 s5, s9, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v0
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow362
	s_load_b128 s[36:39], s[0:1], 0x40
	s_load_b64 s[40:41], s[6:7], 0x0
	s_load_b64 s[42:43], s[4:5], 0x0
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v68, 0xf0, v0
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v69, 4, v67
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v119, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v124, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v25, 5, v0
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b32 s46, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_mov_b32_e32 v134, 0
	v_dual_mov_b32 v119, 0 :: v_dual_and_b32 v26, 0xe0, v0
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s34, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_add_co_u32 v15, s0, s34, v67
	v_add_co_u32 v3, vcc_lo, v1, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	v_add_co_u32 v9, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v10, null, 0, v2, vcc_lo
	v_add_co_u32 v11, vcc_lo, v1, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v12, null, 0, v2, vcc_lo
	v_add_co_u32 v13, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v16, null, s35, 0, s0
	v_add_co_ci_u32_e64 v14, null, 0, v2, vcc_lo
	v_add_co_u32 v17, vcc_lo, v1, 56
	v_add_co_ci_u32_e64 v18, null, 0, v2, vcc_lo
	v_add_co_u32 v19, vcc_lo, v15, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v20, null, 0, v16, vcc_lo
	v_add_co_u32 v21, vcc_lo, v15, 32
	v_add_co_ci_u32_e64 v22, null, 0, v16, vcc_lo
	v_add_co_u32 v23, vcc_lo, v15, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v24, null, 0, v16, vcc_lo
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[42:43], v[1:2]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, s34, v67
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[40:41], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[42:43], v[3:4]
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s50, s4, s2
	s_addc_u32 s51, s5, s3
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v3, 32, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[40:41], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[42:43], v[5:6]
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v138, v2, s44
	v_mul_lo_u32 v139, v3, s44
	v_bfe_i32 v2, v0, 7, 1
	v_dual_mov_b32 v118, 0 :: v_dual_lshlrev_b32 v3, 3, v0
	v_dual_mov_b32 v108, 0 :: v_dual_lshlrev_b32 v5, 1, v0
	v_lshrrev_b32_e32 v6, 2, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s47, vcc_lo, s11
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s11, s[50:51], 0x0
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v135, 3, v68
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v140, v4, s44
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v4, 0x7f, v0
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v3, 24, v3
	v_xor_b32_e32 v6, v5, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[40:41], v[7:8]
	v_cmp_le_i64_e64 s5, s[40:41], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[42:43], v[7:8]
	v_cmp_gt_i64_e64 s17, s[42:43], v[13:14]
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v7, 5, v67
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v14, s34, v25
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[40:41], v[11:12]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[42:43], v[11:12]
	v_xor_b32_e32 v141, v2, v4
	v_xor_b32_e32 v2, v3, v135
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v3, 4, v26
	v_dual_mov_b32 v71, 0 :: v_dual_and_b32 v4, 24, v6
	v_dual_mov_b32 v76, 0 :: v_dual_lshlrev_b32 v13, 5, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[40:41], v[17:18]
	v_cmp_le_i64_e64 s7, s[40:41], v[15:16]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[42:43], v[17:18]
	v_cmp_gt_i64_e64 s19, s[42:43], v[15:16]
	v_and_or_b32 v142, v5, 24, v7
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v16, 8, v14
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v17, 16, v14
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s49, s4, s16
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s4, s45, 8
	v_lshl_or_b32 v143, v67, 9, v2
	v_or3_b32 v144, v4, v3, v7
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v15, 2, v68
	v_dual_mov_b32 v70, 0 :: v_dual_and_b32 v13, 32, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[40:41], v[19:20]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[42:43], v[19:20]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v137, v1, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s4, v69
	v_xor_b32_e32 v2, 8, v142
	v_mul_lo_u32 v146, v14, s46
	v_mul_lo_u32 v147, v16, s46
	v_mul_lo_u32 v148, v17, s46
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v16, 24, v14
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v17, 32, v14
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v18, 40, v14
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v19, 48, v14
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v14, 56, v14
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[40:41], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[42:43], v[9:10]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s50, s5, s17
	.loc	1 1153 29 is_stmt 1             ; ragged.py:1153:29
	s_mul_i32 s5, s46, s33
	v_xor_b32_e32 v6, 0x110, v141
	v_xor_b32_e32 v8, 16, v142
	v_xor_b32_e32 v3, 24, v142
	v_xor_b32_e32 v4, 0x88, v143
	v_xor_b32_e32 v7, 0x110, v143
	v_xor_b32_e32 v9, 0x198, v143
	v_xor_b32_e32 v10, 8, v144
	v_xor_b32_e32 v11, 16, v144
	v_xor_b32_e32 v12, 24, v144
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v5, 28, v5
	v_add3_u32 v13, 0, v15, v13
	v_dual_mov_b32 v96, 0 :: v_dual_lshlrev_b32 v15, 1, v68
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[40:41], v[21:22]
	v_cmp_le_i64_e64 s10, s[40:41], v[23:24]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[42:43], v[21:22]
	v_cmp_gt_i64_e64 s22, s[42:43], v[23:24]
	v_mul_lo_u32 v149, v16, s46
	v_mul_lo_u32 v150, v17, s46
	v_mul_lo_u32 v151, v18, s46
	v_mul_lo_u32 v152, v19, s46
	v_mul_lo_u32 v153, v14, s46
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[65:66], null, s5, s11, v[1:2]
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v136, 31, v0
	v_or_b32_e32 v145, s4, v0
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v154, 0, v6
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v155, 0, v2
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v156, 0, v8
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v157, 0, v3
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v158, 0, v4
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v159, 0, v7
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v160, 0, v9
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v161, 0, v10
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v162, 0, v11
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v163, 0, v12
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v164, v13, v5
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v165, 0, v15
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v66, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s48, s0, s12
	s_and_b32 s51, s6, s18
	s_and_b32 s0, s7, s19
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s27, s27, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s31, s31, 0xffff
	s_and_b32 s13, s1, s13
	s_and_b32 s14, s2, s14
	s_and_b32 s15, s3, s15
	s_and_b32 s1, s8, s20
	s_and_b32 s2, s9, s21
	s_and_b32 s3, s10, s22
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_mul_i32 s52, s44, s11
	s_mov_b32 s53, 0
	s_mov_b32 s16, s24
	s_mov_b32 s17, s25
	s_mov_b32 s20, s26
	s_mov_b32 s21, s27
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s24, s28
	s_mov_b32 s25, s29
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	s_mov_b32 s28, s30
	s_mov_b32 s29, s31
	s_mov_b32 s30, s18
	s_mov_b32 s31, s19
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v134
	v_mov_b32_e32 v3, v134
	v_dual_mov_b32 v4, v134 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v134
	v_dual_mov_b32 v6, v134 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v134
	v_dual_mov_b32 v8, v134 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v134 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v134
	v_dual_mov_b32 v12, v134 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v134
	v_dual_mov_b32 v14, v134 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v134
	v_dual_mov_b32 v16, v134 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v134
	v_mov_b32_e32 v19, v134
	v_mov_b32_e32 v20, v134
	v_mov_b32_e32 v21, v134
	v_mov_b32_e32 v22, v134
	v_mov_b32_e32 v23, v134
	v_mov_b32_e32 v24, v134
	v_mov_b32_e32 v26, v134
	v_mov_b32_e32 v27, v134
	v_mov_b32_e32 v28, v134
	v_mov_b32_e32 v29, v134
	v_mov_b32_e32 v30, v134
	v_mov_b32_e32 v31, v134
	v_mov_b32_e32 v32, v134
	v_mov_b32_e32 v34, v134
	v_mov_b32_e32 v35, v134
	v_mov_b32_e32 v36, v134
	v_mov_b32_e32 v37, v134
	v_mov_b32_e32 v38, v134
	v_mov_b32_e32 v39, v134
	v_mov_b32_e32 v40, v134
	v_mov_b32_e32 v42, v134
	v_mov_b32_e32 v43, v134
	v_mov_b32_e32 v44, v134
	v_mov_b32_e32 v45, v134
	v_mov_b32_e32 v46, v134
	v_mov_b32_e32 v47, v134
	v_mov_b32_e32 v48, v134
	v_mov_b32_e32 v50, v134
	v_mov_b32_e32 v51, v134
	v_mov_b32_e32 v52, v134
	v_mov_b32_e32 v53, v134
	v_mov_b32_e32 v54, v134
	v_mov_b32_e32 v55, v134
	v_mov_b32_e32 v56, v134
	v_mov_b32_e32 v58, v134
	v_mov_b32_e32 v59, v134
	v_mov_b32_e32 v60, v134
	v_mov_b32_e32 v61, v134
	v_mov_b32_e32 v62, v134
	v_mov_b32_e32 v63, v134
	v_mov_b32_e32 v64, v134
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s54, s53, 6
	s_mov_b32 s55, -1
	s_mov_b32 s4, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	s_or_b32 s4, s4, s54
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v182, 0, v141
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v166, s4, v135
	v_or_b32_e32 v167, s4, v136
	v_or_b32_e32 v168, 1, v166
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s5, s46, v167
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_add_nc_u32_e32 v170, v147, v167
	v_add_nc_u32_e32 v171, v148, v167
	v_add_nc_u32_e32 v172, v149, v167
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s46, v168
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_add_nc_u32_e32 v169, v146, v167
	v_add_nc_u32_e32 v173, v150, v167
	v_add_nc_u32_e32 v174, v151, v167
	v_add_nc_u32_e32 v175, v152, v167
	v_add_nc_u32_e32 v167, v153, v167
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s6, s47, s5
	s_and_b32 s7, s48, s5
	s_and_b32 s8, s13, s5
	s_and_b32 s9, s14, s5
	s_and_b32 s10, s15, s5
	s_and_b32 s11, s49, s5
	s_and_b32 s12, s50, s5
	s_and_b32 s5, s51, s5
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v169, 0x80000000, v169, s6
	v_cndmask_b32_e64 v167, 0x80000000, v167, s5
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s4, s46, v166
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x1
	buffer_load_u8 v176, v169, s[16:19], 0 offen
	buffer_load_u8 v181, v167, s[16:19], 0 offen
	v_cndmask_b32_e64 v169, 0x80000000, v170, s7
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[166:167], null, v166, s33, v[65:66]
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_u8 v177, v169, s[16:19], 0 offen
	v_cndmask_b32_e64 v169, 0x80000000, v171, s8
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[170:171], null, v168, s33, v[65:66]
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v166, 0x80000000, v166, s4
	s_mov_b32 s4, 32
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_u8 v178, v169, s[16:19], 0 offen
	v_cndmask_b32_e64 v169, 0x80000000, v172, s9
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e32 v170, 0x80000000, v170, vcc_lo
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s55
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_u8 v179, v169, s[16:19], 0 offen
	v_cndmask_b32_e64 v169, 0x80000000, v173, s10
	s_mov_b32 s55, 0
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_b128 v[170:173], v170, s[20:23], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_u8 v180, v169, s[16:19], 0 offen
	v_cndmask_b32_e64 v169, 0x80000000, v174, s11
	buffer_load_u8 v174, v169, s[16:19], 0 offen
	v_cndmask_b32_e64 v169, 0x80000000, v175, s12
	buffer_load_u8 v175, v169, s[16:19], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_b128 v[166:169], v166, s[20:23], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b8 v182, v176
	s_waitcnt vmcnt(6)
	ds_store_b8 v182, v178 offset:512
	s_waitcnt vmcnt(3)
	ds_store_b8 v182, v180 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b8 v182, v175 offset:1536
	ds_store_b8 v154, v177
	ds_store_b8 v154, v179 offset:512
	ds_store_b8 v154, v174 offset:1024
	ds_store_b8 v154, v181 offset:1536
	v_add_nc_u32_e32 v178, 0, v142
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	v_perm_b32 v206, v170, v166, 0x5010400
	v_perm_b32 v207, v171, v167, 0x5010400
	v_perm_b32 v167, v171, v167, 0x7030602
	v_perm_b32 v171, v172, v168, 0x5010400
	v_perm_b32 v168, v172, v168, 0x7030602
	v_perm_b32 v172, v173, v169, 0x5010400
	v_perm_b32 v169, v173, v169, 0x7030602
	v_lshrrev_b32_e32 v173, 8, v206
	v_perm_b32 v170, v170, v166, 0x7030602
	v_and_b16 v166.l, 0xff, v206.l
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_2addr_stride64_b64 v[174:177], v178 offset1:1
	ds_load_2addr_stride64_b64 v[178:181], v178 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[182:185], v155 offset1:1
	ds_load_2addr_stride64_b64 v[186:189], v155 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[190:193], v156 offset1:1
	ds_load_2addr_stride64_b64 v[194:197], v156 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[198:201], v157 offset1:1
	ds_load_2addr_stride64_b64 v[202:205], v157 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b16 v166.h, 8, v173.l
	v_add_nc_u32_e32 v173, 0, v143
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v166.l, v166.l, v166.h
	ds_store_b16 v173, v166
	v_lshrrev_b32_e32 v166, 24, v206
	v_and_b16 v166.h, 0xff, v206.h
	v_lshrrev_b32_e32 v206, 8, v170
	v_lshlrev_b16 v166.l, 8, v166.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v166.l, v166.h, v166.l
	v_lshlrev_b16 v166.h, 8, v206.l
	ds_store_b16 v173, v166 offset:32
	v_and_b16 v166.l, 0xff, v170.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v166.l, v166.l, v166.h
	ds_store_b16 v173, v166 offset:64
	v_lshrrev_b32_e32 v166, 24, v170
	v_and_b16 v166.h, 0xff, v170.h
	v_lshrrev_b32_e32 v170, 8, v207
	v_lshlrev_b16 v166.l, 8, v166.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v166.l, v166.h, v166.l
	v_lshlrev_b16 v166.h, 8, v170.l
	v_lshrrev_b32_e32 v170, 8, v167
	ds_store_b16 v173, v166 offset:96
	v_and_b16 v166.l, 0xff, v207.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v166.l, v166.l, v166.h
	ds_store_b16 v158, v166
	v_lshrrev_b32_e32 v166, 24, v207
	v_and_b16 v166.h, 0xff, v207.h
	v_lshlrev_b16 v166.l, 8, v166.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v166.l, v166.h, v166.l
	v_lshlrev_b16 v166.h, 8, v170.l
	ds_store_b16 v158, v166 offset:32
	v_and_b16 v166.l, 0xff, v167.l
	v_or_b16 v166.l, v166.l, v166.h
	ds_store_b16 v158, v166 offset:64
	v_lshrrev_b32_e32 v166, 24, v167
	v_and_b16 v166.h, 0xff, v167.h
	v_lshrrev_b32_e32 v167, 8, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v166.l, 8, v166.l
	v_or_b16 v166.l, v166.h, v166.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v166.h, 8, v167.l
	v_lshrrev_b32_e32 v167, 8, v168
	ds_store_b16 v158, v166 offset:96
	v_and_b16 v166.l, 0xff, v171.l
	v_or_b16 v166.l, v166.l, v166.h
	ds_store_b16 v159, v166
	v_lshrrev_b32_e32 v166, 24, v171
	v_and_b16 v166.h, 0xff, v171.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v166.l, 8, v166.l
	v_or_b16 v166.l, v166.h, v166.l
	v_lshlrev_b16 v166.h, 8, v167.l
	v_lshrrev_b32_e32 v167, 8, v172
	ds_store_b16 v159, v166 offset:32
	v_and_b16 v166.l, 0xff, v168.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v166.l, v166.l, v166.h
	ds_store_b16 v159, v166 offset:64
	v_lshrrev_b32_e32 v166, 24, v168
	v_and_b16 v166.h, 0xff, v168.h
	v_lshlrev_b16 v166.l, 8, v166.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v166.l, v166.h, v166.l
	v_lshlrev_b16 v166.h, 8, v167.l
	v_lshrrev_b32_e32 v167, 8, v169
	ds_store_b16 v159, v166 offset:96
	v_and_b16 v166.l, 0xff, v172.l
	v_or_b16 v166.l, v166.l, v166.h
	ds_store_b16 v160, v166
	v_lshrrev_b32_e32 v166, 24, v172
	v_and_b16 v166.h, 0xff, v172.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v166.l, 8, v166.l
	v_or_b16 v166.l, v166.h, v166.l
	v_lshlrev_b16 v166.h, 8, v167.l
	ds_store_b16 v160, v166 offset:32
	v_and_b16 v166.l, 0xff, v169.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v166.l, v166.l, v166.h
	ds_store_b16 v160, v166 offset:64
	v_lshrrev_b32_e32 v166, 24, v169
	v_and_b16 v166.h, 0xff, v169.h
	v_lshlrev_b16 v166.l, 8, v166.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v166.l, v166.h, v166.l
	ds_store_b16 v160, v166 offset:96
	v_add_nc_u32_e32 v166, 0, v144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[166:169], v166 offset1:8
	ds_load_2addr_stride64_b64 v[170:173], v161 offset1:8
	ds_load_2addr_stride64_b64 v[206:209], v162 offset1:8
	ds_load_2addr_stride64_b64 v[210:213], v163 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[166:167], v[174:175], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[168:169], v[174:175], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[166:167], v[176:177], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[168:169], v[176:177], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[166:167], v[178:179], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[168:169], v[178:179], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[166:167], v[180:181], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[168:169], v[180:181], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[170:171], v[182:183], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[172:173], v[182:183], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[170:171], v[184:185], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[172:173], v[184:185], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[170:171], v[186:187], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[172:173], v[186:187], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[170:171], v[188:189], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[172:173], v[188:189], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[206:207], v[190:191], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[208:209], v[190:191], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[206:207], v[192:193], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[208:209], v[192:193], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[206:207], v[194:195], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[208:209], v[194:195], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[206:207], v[196:197], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[208:209], v[196:197], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[210:211], v[198:199], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[212:213], v[198:199], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[210:211], v[200:201], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[212:213], v[200:201], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[210:211], v[202:203], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[212:213], v[202:203], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[210:211], v[204:205], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[212:213], v[204:205], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v166, s53, v137, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s4, s53, s52
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v167, s53, v138, 1
	v_add_lshl_u32 v168, s53, v139, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s4, s4, s33
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v169, s53, v140, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v170, v145, s4, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v166, 0x80000000, v166, s0
	v_cndmask_b32_e64 v167, 0x80000000, v167, s1
	v_cndmask_b32_e64 v168, 0x80000000, v168, s2
	v_cndmask_b32_e64 v169, 0x80000000, v169, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v170, v170, s[28:31], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v166, v166, s[24:27], 0 offen
	buffer_load_u16 v167, v167, s[24:27], 0 offen
	buffer_load_u16 v168, v168, s[24:27], 0 offen
	buffer_load_u16 v169, v169, s[24:27], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v171, v1
	v_cvt_f32_i32_e32 v179, v9
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v172, v2
	v_cvt_f32_i32_e32 v173, v3
	v_cvt_f32_i32_e32 v174, v4
	v_cvt_f32_i32_e32 v175, v5
	v_cvt_f32_i32_e32 v176, v6
	v_cvt_f32_i32_e32 v177, v7
	v_cvt_f32_i32_e32 v178, v8
	v_cvt_f32_i32_e32 v180, v10
	v_cvt_f32_i32_e32 v181, v11
	v_cvt_f32_i32_e32 v182, v12
	v_cvt_f32_i32_e32 v183, v13
	v_cvt_f32_i32_e32 v184, v14
	v_cvt_f32_i32_e32 v185, v15
	v_cvt_f32_i32_e32 v186, v16
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s53, s53, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s53, s44
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v167, 16, v167
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v1, 16, v170
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v25, v25, v167 :: v_dual_lshlrev_b32 v166, 16, v166
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v168, 16, v168
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v170, v179, v166
	v_mul_f32_e32 v30, v30, v167
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v164, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v165
	ds_load_b128 v[5:8], v165 offset:16
	ds_load_b128 v[9:12], v165 offset:512
	ds_load_b128 v[13:16], v165 offset:528
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v169, 16, v169
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v179, v184, v166
	v_mul_f32_e32 v184, v185, v166
	v_dual_mul_f32 v185, v186, v166 :: v_dual_mul_f32 v32, v32, v167
	v_dual_mul_f32 v31, v31, v167 :: v_dual_mul_f32 v46, v46, v168
	v_dual_mul_f32 v41, v41, v168 :: v_dual_mul_f32 v62, v62, v169
	v_dual_mul_f32 v47, v47, v168 :: v_dual_mul_f32 v64, v64, v169
	v_dual_mul_f32 v48, v48, v168 :: v_dual_mul_f32 v57, v57, v169
	v_dual_mul_f32 v63, v63, v169 :: v_dual_mul_f32 v174, v166, v174
	v_dual_mul_f32 v173, v166, v173 :: v_dual_mul_f32 v20, v167, v20
	v_dual_mul_f32 v172, v166, v172 :: v_dual_mul_f32 v19, v167, v19
	v_dual_mul_f32 v171, v166, v171 :: v_dual_mul_f32 v18, v167, v18
	v_dual_mul_f32 v178, v166, v178 :: v_dual_mul_f32 v17, v167, v17
	v_dual_mul_f32 v177, v166, v177 :: v_dual_mul_f32 v24, v167, v24
	v_dual_mul_f32 v176, v166, v176 :: v_dual_mul_f32 v23, v167, v23
	v_dual_mul_f32 v175, v166, v175 :: v_dual_mul_f32 v22, v167, v22
	v_dual_mul_f32 v183, v166, v183 :: v_dual_mul_f32 v28, v167, v28
	v_dual_mul_f32 v182, v166, v182 :: v_dual_mul_f32 v21, v167, v21
	v_dual_mul_f32 v181, v166, v181 :: v_dual_mul_f32 v26, v167, v26
	v_dual_mul_f32 v166, v166, v180 :: v_dual_mul_f32 v29, v167, v29
	v_dual_mul_f32 v27, v167, v27 :: v_dual_mul_f32 v36, v168, v36
	v_dual_mul_f32 v35, v168, v35 :: v_dual_mul_f32 v52, v169, v52
	v_dual_mul_f32 v34, v168, v34 :: v_dual_mul_f32 v51, v169, v51
	v_dual_mul_f32 v33, v168, v33 :: v_dual_mul_f32 v50, v169, v50
	v_dual_mul_f32 v40, v168, v40 :: v_dual_mul_f32 v49, v169, v49
	v_dual_mul_f32 v39, v168, v39 :: v_dual_mul_f32 v56, v169, v56
	v_dual_mul_f32 v38, v168, v38 :: v_dual_mul_f32 v55, v169, v55
	v_dual_mul_f32 v37, v168, v37 :: v_dual_mul_f32 v54, v169, v54
	v_dual_mul_f32 v45, v168, v45 :: v_dual_mul_f32 v60, v169, v60
	v_dual_mul_f32 v44, v168, v44 :: v_dual_mul_f32 v53, v169, v53
	v_dual_mul_f32 v43, v168, v43 :: v_dual_mul_f32 v58, v169, v58
	v_dual_mul_f32 v42, v168, v42 :: v_dual_mul_f32 v61, v169, v61
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v59, v169, v59 :: v_dual_fmac_f32 v132, v171, v1
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v131, v172, v2 :: v_dual_fmac_f32 v130, v173, v3
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v129, v174, v4 :: v_dual_fmac_f32 v128, v175, v5
	v_dual_fmac_f32 v127, v176, v6 :: v_dual_fmac_f32 v126, v177, v7
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v125, v178, v8 :: v_dual_fmac_f32 v122, v181, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v124, v170, v9 :: v_dual_fmac_f32 v119, v179, v14
	v_dual_fmac_f32 v123, v166, v10 :: v_dual_fmac_f32 v120, v183, v13
	v_dual_fmac_f32 v121, v182, v12 :: v_dual_fmac_f32 v118, v184, v15
	v_dual_fmac_f32 v117, v185, v16 :: v_dual_fmac_f32 v114, v19, v3
	v_dual_fmac_f32 v116, v17, v1 :: v_dual_fmac_f32 v115, v18, v2
	v_dual_fmac_f32 v113, v20, v4 :: v_dual_fmac_f32 v112, v21, v5
	v_dual_fmac_f32 v111, v22, v6 :: v_dual_fmac_f32 v110, v23, v7
	v_dual_fmac_f32 v109, v24, v8 :: v_dual_fmac_f32 v108, v25, v9
	v_dual_fmac_f32 v107, v26, v10 :: v_dual_fmac_f32 v106, v27, v11
	v_dual_fmac_f32 v105, v28, v12 :: v_dual_fmac_f32 v104, v29, v13
	v_dual_fmac_f32 v103, v30, v14 :: v_dual_fmac_f32 v102, v31, v15
	v_dual_fmac_f32 v101, v32, v16 :: v_dual_fmac_f32 v100, v33, v1
	v_dual_fmac_f32 v99, v34, v2 :: v_dual_fmac_f32 v98, v35, v3
	v_dual_fmac_f32 v97, v36, v4 :: v_dual_fmac_f32 v96, v37, v5
	v_dual_fmac_f32 v95, v38, v6 :: v_dual_fmac_f32 v94, v39, v7
	v_dual_fmac_f32 v93, v40, v8 :: v_dual_fmac_f32 v92, v41, v9
	v_dual_fmac_f32 v91, v42, v10 :: v_dual_fmac_f32 v90, v43, v11
	v_dual_fmac_f32 v89, v44, v12 :: v_dual_fmac_f32 v88, v45, v13
	v_dual_fmac_f32 v87, v46, v14 :: v_dual_fmac_f32 v86, v47, v15
	v_dual_fmac_f32 v85, v48, v16 :: v_dual_fmac_f32 v84, v49, v1
	v_dual_fmac_f32 v83, v50, v2 :: v_dual_fmac_f32 v82, v51, v3
	v_dual_fmac_f32 v81, v52, v4 :: v_dual_fmac_f32 v80, v53, v5
	v_dual_fmac_f32 v79, v54, v6 :: v_dual_fmac_f32 v78, v55, v7
	v_dual_fmac_f32 v77, v56, v8 :: v_dual_fmac_f32 v76, v57, v9
	v_dual_fmac_f32 v75, v58, v10 :: v_dual_fmac_f32 v74, v59, v11
	v_dual_fmac_f32 v73, v60, v12 :: v_dual_fmac_f32 v66, v61, v13
	v_dual_fmac_f32 v72, v62, v14 :: v_dual_fmac_f32 v71, v63, v15
	v_fmac_f32_e32 v70, v64, v16
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_mov_b32_e32 v1, v133
.LBB0_9:                                ; %._crit_edge
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v2, |v131|, |v131|
	v_max_f32_e64 v3, |v132|, |v132|
	v_max3_f32 v4, |v129|, |v128|, |v127|
	v_max3_f32 v5, |v123|, |v122|, |v121|
	v_max3_f32 v6, |v120|, |v119|, |v118|
	v_max_f32_e64 v7, |v116|, |v116|
	v_max_f32_e32 v2, v3, v2
	v_max_f32_e64 v3, |v115|, |v115|
	v_max3_f32 v10, |v107|, |v106|, |v105|
	v_max3_f32 v5, v5, v6, |v117|
	v_max_f32_e64 v6, |v100|, |v100|
	v_max3_f32 v2, v2, |v130|, v4
	v_max_f32_e64 v4, |v99|, |v99|
	v_max_f32_e32 v3, v7, v3
	v_max3_f32 v7, |v113|, |v112|, |v111|
	v_max3_f32 v11, |v104|, |v103|, |v102|
	v_max3_f32 v12, |v91|, |v90|, |v89|
	v_max_f32_e32 v4, v6, v4
	v_max3_f32 v6, |v97|, |v96|, |v95|
	v_max3_f32 v13, |v88|, |v87|, |v86|
	v_max3_f32 v8, |v126|, |v125|, |v124|
	v_max3_f32 v9, |v110|, |v109|, |v108|
	v_max3_f32 v3, v3, |v114|, v7
	v_max3_f32 v7, v10, v11, |v101|
	v_max3_f32 v10, |v94|, |v93|, |v92|
	v_max3_f32 v4, v4, |v98|, v6
	v_max3_f32 v6, v12, v13, |v85|
	v_max_f32_e64 v11, |v83|, |v83|
	v_max_f32_e64 v12, |v84|, |v84|
	v_max3_f32 v2, v2, v8, v5
	v_max3_f32 v3, v3, v9, v7
	v_max3_f32 v4, v4, v10, v6
	v_max3_f32 v6, |v81|, |v80|, |v79|
	v_max_f32_e32 v5, v12, v11
	v_max3_f32 v8, |v75|, |v74|, |v73|
	v_max3_f32 v9, |v66|, |v72|, |v71|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v7, |v78|, |v77|, |v76|
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v10, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, |v82|, v6
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v8, v8, v9, |v70|
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v10, v10 :: v_dual_lshlrev_b32 v12, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v6, v6, v6
	v_max3_f32 v5, v5, v7, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v10, v11, v11 :: v_dual_and_b32 v7, 3, v0
	v_dual_max_f32 v2, v2, v9 :: v_dual_max_f32 v3, v3, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v5, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v10 :: v_dual_and_b32 v11, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v9, v7, 9, 0
	v_lshlrev_b32_e32 v8, 5, v7
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_and_b32 v13, 8, v0
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v10, 4, v0
	v_lshrrev_b32_e32 v16, 3, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v12, 0x680, v12, v8
	v_xor_b32_e32 v15, v8, v11
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v6
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v14, v10, 2, v9
	v_lshlrev_b32_e32 v9, 1, v1
	v_xor_b32_e32 v12, v12, v11
	v_lshl_add_u32 v17, v10, 6, 0
	s_waitcnt lgkmcnt(0)
	v_lshl_add_u32 v14, v13, 4, v14
	s_barrier
	v_lshl_add_u32 v7, v7, 4, 0
	v_add3_u32 v12, v17, v16, v12
	v_lshlrev_b32_e32 v13, 3, v13
	v_add3_u32 v6, v14, v9, v15
	v_add_nc_u32_e32 v1, 0, v1
	ds_store_b128 v6, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v6, v2 :: v_dual_max_f32 v15, v5, v5
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v12, v3
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v5, v15, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v14, v4 :: v_dual_mov_b32 v15, v5
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v6 :: v_dual_max_f32 v3, v3, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v12, v2
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v2, v2, v12
	v_max_f32_e32 v12, v15, v15
	v_max_f32_e32 v6, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v14, v3 :: v_dual_max_f32 v5, v5, v12
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v12, v5
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v14 :: v_dual_mov_b32 v14, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v12, v12, v12 :: v_dual_mov_b32 v15, v3
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v12
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v15, v15, v15
	v_max_f32_e32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v2, v2, v14
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v14, 1, v11
.Ltmp37:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v11, v69, v11
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v15 :: v_dual_mov_b32 v6, v4
.Ltmp39:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v69, 6, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v1, v14, v13
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp41:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v8, 0x1b00, v69, v8
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v8, v8, v68, 0
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v4, v4, v6
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v6, 5, v10
	ds_store_b128 v1, v[2:5]
	v_add3_u32 v6, v7, v6, v13
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp48:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v7, 4, v68
	v_and_b32_e32 v5, 63, v0
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[12:15], v6
.Ltmp50:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 48, v7
	v_or_b32_e32 v18, 16, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v12, v12
	v_max_f32_e32 v3, v14, v14
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v14, 32, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_max_f32 v6, 0x2b8cbccc, v1 :: v_dual_max_f32 v19, 0x2b8cbccc, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v5
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v10, null, 0x40e00000, 0x40e00000, v6
	v_div_scale_f32 v20, vcc_lo, v6, 0x40e00000, v6
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v19
	v_rcp_f32_e32 v12, v10
	v_max_f32_e32 v13, 0x2b8cbccc, v13
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s34, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v22, v21
	v_div_scale_f32 v24, null, 0x40e00000, 0x40e00000, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v3, -v10, v12, 1.0
	v_fmac_f32_e32 v12, v3, v12
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s34, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v23, v20, v12
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v16, s0, s34, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v17, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[40:41], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[42:43], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v3, -v10, v23, v20
	v_max_f32_e32 v14, v15, v15
	v_fma_f32 v15, -v21, v22, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[40:41], v[16:17]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v23, v3, v12
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v18
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v22, v15, v22
	v_div_scale_f32 v18, s6, v19, 0x40e00000, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v10, -v10, v23, v20
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[42:43], v[16:17]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v17.h, 0
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v10, v10, v12, v23
	v_mul_f32_e32 v12, v18, v22
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[40:41], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[42:43], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v15, v24
	v_div_fixup_f32 v6, v10, 0x40e00000, v6
	v_fma_f32 v10, -v21, v12, v18
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v12, v10, v22
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v10.l, v6.h
	v_mov_b16_e32 v10.h, v17.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v16, -v24, v15, 1.0
	v_fma_f32 v3, -v21, v12, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v15, v16, v15 :: v_dual_and_b32 v4, 1, v10
	v_div_scale_f32 v16, s7, v13, 0x40e00000, v13
	v_div_fmas_f32 v12, v3, v22, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v6, v6, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v26, v16, v15
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v29, 0xffff0000, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v12, v12, 0x40e00000, v19
	v_fma_f32 v10, -v24, v26, v16
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v27, s9, v130, v29, v130
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v14, 0x2b8cbccc, v14
	v_fmac_f32_e32 v26, v10, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v19, null, v29, v29, v132
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v17.l, v12.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v14
	v_fma_f32 v16, -v24, v26, v16
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[40:41], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[42:43], v[3:4]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v23, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v24, null, v29, v29, v129
	v_div_scale_f32 v28, null, v29, v29, v128
	v_div_scale_f32 v30, null, v29, v29, v127
	v_div_scale_f32 v33, null, v29, v29, v124
	v_div_scale_f32 v38, null, v29, v29, v119
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v25, -v20, v23, 1.0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v31, v30
	v_div_scale_f32 v39, null, v29, v29, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v23, v25, v23
	v_div_scale_f32 v25, s8, v14, 0x40e00000, v14
	v_mul_f32_e32 v18, v25, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v20, v18, v25
	v_fmac_f32_e32 v18, v10, v23
	v_div_fmas_f32 v10, v16, v15, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v15, v19
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v26, s8, v131, v29, v131
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v16, -v20, v18, v25
	v_div_fixup_f32 v10, v10, 0x40e00000, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v13, v16, v23, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v16, null, v29, v29, v131
	v_fma_f32 v20, -v19, v15, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v18, 1, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v13, v13, 0x40e00000, v14
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v14.l, v10.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v21, v16
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v14.h, v17.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v15, v20, v15
	v_div_scale_f32 v20, vcc_lo, v132, v29, v132
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v12, v18, 0x7fff
	v_mov_b16_e32 v17.l, v13.h
	v_and_b32_e32 v4, 1, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v14, v20, v15
	v_div_scale_f32 v18, null, v29, v29, v130
	v_fma_f32 v12, -v16, v21, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v22, -v19, v14, v20
	v_rcp_f32_e32 v23, v18
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v10, v10, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v21, v12, v21
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v13, v17, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v14, v22, v15
	v_rcp_f32_e32 v17, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v22, v26, v21 :: v_dual_and_b32 v25, 0xffff0000, v3
	v_fma_f32 v19, -v19, v14, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v18, v23, 1.0
	v_div_scale_f32 v58, null, v25, v25, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v20, -v16, v22, v26
	v_div_fmas_f32 v14, v19, v15, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v23, v13, v23
	v_fma_f32 v13, -v24, v17, 1.0
	v_rcp_f32_e32 v19, v28
	v_fmac_f32_e32 v22, v20, v21
	v_div_scale_f32 v20, s10, v129, v29, v129
	v_mul_f32_e32 v15, v27, v23
	v_fmac_f32_e32 v17, v13, v17
	v_div_fixup_f32 v13, v14, v29, v132
	v_fma_f32 v14, -v16, v22, v26
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v16, -v18, v15, v27
	v_mul_f32_e32 v26, v20, v17
	v_fma_f32 v32, -v28, v19, 1.0
	v_div_fmas_f32 v14, v14, v21, v22
	v_div_scale_f32 v21, s8, v128, v29, v128
	v_fmac_f32_e32 v15, v16, v23
	v_fma_f32 v16, -v24, v26, v20
	v_fmac_f32_e32 v19, v32, v19
	v_fma_f32 v22, -v30, v31, 1.0
	v_div_scale_f32 v32, null, v29, v29, v126
	v_fma_f32 v18, -v18, v15, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v26, v16, v17 :: v_dual_mul_f32 v27, v21, v19
	v_fmac_f32_e32 v31, v22, v31
	v_div_scale_f32 v22, s11, v127, v29, v127
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v16, -v24, v26, v20
	v_div_fmas_f32 v15, v18, v23, v15
	v_fma_f32 v18, -v28, v27, v21
	v_rcp_f32_e32 v20, v32
	v_mul_f32_e32 v23, v22, v31
	v_div_scale_f32 v24, null, v29, v29, v125
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v27, v18, v19
	v_div_fmas_f32 v16, v16, v17, v26
	v_rcp_f32_e32 v26, v24
	v_fma_f32 v17, -v30, v23, v22
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v44, 0xffff0000, v10
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v18, -v32, v20, 1.0
	v_fma_f32 v21, -v28, v27, v21
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v23, v17, v31
	v_div_scale_f32 v28, s9, v126, v29, v126
	v_fmac_f32_e32 v20, v18, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v24, v26, 1.0
	v_div_fmas_f32 v18, v21, v19, v27
	v_fma_f32 v19, -v30, v23, v22
	v_rcp_f32_e32 v22, v33
	v_dual_mul_f32 v21, v28, v20 :: v_dual_fmac_f32 v26, v17, v26
	v_div_scale_f32 v27, s8, v125, v29, v125
	v_div_scale_f32 v30, null, v29, v29, v123
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v17, v18, v29, v128
	v_div_fmas_f32 v19, v19, v31, v23
	v_fma_f32 v23, -v32, v21, v28
	v_mul_f32_e32 v31, v27, v26
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v34, -v33, v22, 1.0
	v_rcp_f32_e32 v35, v30
	v_div_fixup_f32 v18, v19, v29, v127
	v_fmac_f32_e32 v21, v23, v20
	v_fma_f32 v19, -v24, v31, v27
	v_fmac_f32_e32 v22, v34, v22
	v_div_scale_f32 v23, s10, v124, v29, v124
	v_div_scale_f32 v34, null, v29, v29, v122
	v_fma_f32 v28, -v32, v21, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v30, v35, 1.0
	v_fmac_f32_e32 v31, v19, v26
	v_mul_f32_e32 v32, v23, v22
	v_rcp_f32_e32 v37, v34
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, s11, v123, v29, v123
	v_div_fmas_f32 v19, v28, v20, v21
	v_fma_f32 v20, -v24, v31, v27
	v_fma_f32 v21, -v33, v32, v23
	v_div_scale_f32 v28, null, v29, v29, v121
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v24, v36, v35
	v_fma_f32 v27, -v34, v37, 1.0
	v_div_fmas_f32 v20, v20, v26, v31
	v_fmac_f32_e32 v32, v21, v22
	v_rcp_f32_e32 v26, v28
	v_fma_f32 v21, -v30, v24, v36
	v_fmac_f32_e32 v37, v27, v37
	v_div_scale_f32 v27, s8, v122, v29, v122
	v_fma_f32 v23, -v33, v32, v23
	v_div_scale_f32 v33, null, v29, v29, v120
	s_mov_b32 vcc_lo, s10
	v_dual_fmac_f32 v24, v21, v35 :: v_dual_mul_f32 v31, v27, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v28, v26, 1.0
	v_div_fmas_f32 v22, v23, v22, v32
	v_rcp_f32_e32 v32, v33
	v_fma_f32 v23, -v30, v24, v36
	v_fma_f32 v30, -v34, v31, v27
	v_fmac_f32_e32 v26, v21, v26
	v_div_scale_f32 v36, s9, v121, v29, v121
	s_mov_b32 vcc_lo, s11
	v_dual_fmac_f32 v31, v30, v37 :: v_dual_and_b32 v12, 0xffff0000, v4
	v_div_fmas_f32 v23, v23, v35, v24
	v_rcp_f32_e32 v30, v38
	v_mul_f32_e32 v24, v36, v26
	v_fma_f32 v35, -v33, v32, 1.0
	v_div_fixup_f32 v21, v22, v29, v124
	v_div_fixup_f32 v22, v23, v29, v123
	v_fma_f32 v23, -v34, v31, v27
	v_fma_f32 v27, -v28, v24, v36
	v_fmac_f32_e32 v32, v35, v32
	v_div_scale_f32 v34, s10, v120, v29, v120
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v35, -v38, v30, 1.0
	v_div_fmas_f32 v23, v23, v37, v31
	v_dual_fmac_f32 v24, v27, v26 :: v_dual_mul_f32 v27, v34, v32
	v_rcp_f32_e32 v31, v39
	v_div_scale_f32 v37, null, v29, v29, v117
	v_fmac_f32_e32 v30, v35, v30
	v_div_scale_f32 v35, s8, v119, v29, v119
	v_fma_f32 v28, -v28, v24, v36
	v_fma_f32 v36, -v33, v27, v34
	v_rcp_f32_e32 v41, v37
	v_div_scale_f32 v50, null, v44, v44, v107
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v39, v31, 1.0
	v_fmac_f32_e32 v27, v36, v32
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v51, v50
	v_mul_f32_e32 v40, v35, v30
	v_div_fmas_f32 v24, v28, v26, v24
	v_fmac_f32_e32 v31, v42, v31
	v_div_scale_f32 v28, s9, v118, v29, v118
	v_fma_f32 v26, -v38, v40, v35
	v_fma_f32 v36, -v37, v41, 1.0
	v_fma_f32 v33, -v33, v27, v34
	v_div_scale_f32 v42, null, v44, v44, v116
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v40, v26, v30
	v_mul_f32_e32 v34, v28, v31
	v_fmac_f32_e32 v41, v36, v41
	v_div_scale_f32 v36, s11, v117, v29, v117
	v_div_fmas_f32 v26, v33, v32, v27
	v_rcp_f32_e32 v33, v42
	v_fma_f32 v27, -v38, v40, v35
	v_fma_f32 v32, -v39, v34, v28
	v_mul_f32_e32 v35, v36, v41
	v_div_scale_f32 v38, null, v44, v44, v115
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v34, v32, v31
	v_div_fmas_f32 v27, v27, v30, v40
	v_rcp_f32_e32 v30, v38
	v_fma_f32 v32, -v37, v35, v36
	v_fma_f32 v40, -v42, v33, 1.0
	v_fma_f32 v28, -v39, v34, v28
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v14, v14, v29, v131
	v_fmac_f32_e32 v35, v32, v41
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, null, v44, v44, v114
	v_div_scale_f32 v32, s8, v116, v44, v116
	v_fma_f32 v39, -v38, v30, 1.0
	v_div_fmas_f32 v28, v28, v31, v34
	v_fma_f32 v31, -v37, v35, v36
	v_rcp_f32_e32 v36, v40
	v_mul_f32_e32 v34, v32, v33
	v_fmac_f32_e32 v30, v39, v30
	v_div_scale_f32 v37, s9, v115, v44, v115
	v_div_scale_f32 v39, null, v44, v44, v113
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v15, v15, v29, v130
	v_div_fmas_f32 v31, v31, v41, v35
	v_fma_f32 v35, -v42, v34, v32
	v_mul_f32_e32 v41, v37, v30
	v_fma_f32 v43, -v40, v36, 1.0
	v_rcp_f32_e32 v45, v39
	v_div_fixup_f32 v16, v16, v29, v129
	v_div_fixup_f32 v19, v19, v29, v126
	v_div_fixup_f32 v20, v20, v29, v125
	v_div_fixup_f32 v23, v23, v29, v122
	v_div_fixup_f32 v24, v24, v29, v121
	v_div_fixup_f32 v26, v26, v29, v120
	v_div_fixup_f32 v27, v27, v29, v119
	v_div_fixup_f32 v28, v28, v29, v118
	v_div_fixup_f32 v29, v31, v29, v117
	v_fmac_f32_e32 v34, v35, v33
	v_fma_f32 v31, -v38, v41, v37
	v_fmac_f32_e32 v36, v43, v36
	v_div_scale_f32 v43, null, v44, v44, v112
	v_div_scale_f32 v35, s10, v114, v44, v114
	v_fma_f32 v46, -v39, v45, 1.0
	v_fma_f32 v32, -v42, v34, v32
	v_fmac_f32_e32 v41, v31, v30
	v_rcp_f32_e32 v47, v43
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v42, v35, v36 :: v_dual_fmac_f32 v45, v46, v45
	v_div_scale_f32 v46, s11, v113, v44, v113
	v_div_fmas_f32 v31, v32, v33, v34
	v_fma_f32 v32, -v38, v41, v37
	v_div_scale_f32 v38, null, v44, v44, v111
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v33, -v40, v42, v35
	v_mul_f32_e32 v34, v46, v45
	v_fma_f32 v37, -v43, v47, 1.0
	v_div_fmas_f32 v32, v32, v30, v41
	v_rcp_f32_e32 v41, v38
	v_fmac_f32_e32 v42, v33, v36
	v_fma_f32 v33, -v39, v34, v46
	v_fmac_f32_e32 v47, v37, v47
	v_div_scale_f32 v37, s8, v112, v44, v112
	v_div_fixup_f32 v30, v31, v44, v116
	v_div_fixup_f32 v31, v32, v44, v115
	v_fma_f32 v32, -v40, v42, v35
	v_fmac_f32_e32 v34, v33, v45
	v_mul_f32_e32 v35, v37, v47
	v_fma_f32 v33, -v38, v41, 1.0
	v_div_scale_f32 v40, null, v44, v44, v110
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v48, null, v44, v44, v109
	v_div_fmas_f32 v32, v32, v36, v42
	v_fma_f32 v36, -v39, v34, v46
	v_fma_f32 v39, -v43, v35, v37
	v_fmac_f32_e32 v41, v33, v41
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v46, s9, v111, v44, v111
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v35, v39, v47
	v_div_fmas_f32 v33, v36, v45, v34
	v_rcp_f32_e32 v36, v48
	v_mul_f32_e32 v39, v46, v41
	v_div_scale_f32 v49, null, v44, v44, v108
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v40, v42, 1.0
	v_fma_f32 v37, -v43, v35, v37
	v_fma_f32 v43, -v38, v39, v46
	v_div_scale_f32 v45, s10, v110, v44, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v42, v34, v42
	v_fma_f32 v34, -v48, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v41
	v_rcp_f32_e32 v43, v49
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v55, null, v44, v44, v102
	v_div_fmas_f32 v35, v37, v47, v35
	v_dual_mul_f32 v37, v45, v42 :: v_dual_fmac_f32 v36, v34, v36
	v_div_scale_f32 v47, s8, v109, v44, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v34, v35, v44, v112
	v_fma_f32 v35, -v38, v39, v46
	v_fma_f32 v38, -v40, v37, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v46, v47, v36
	v_fma_f32 v52, -v49, v43, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v57, null, v44, v44, v101
	v_div_fmas_f32 v35, v35, v41, v39
	v_fmac_f32_e32 v37, v38, v42
	v_fma_f32 v38, -v48, v46, v47
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v39, s9, v108, v44, v108
	v_fma_f32 v41, -v50, v51, 1.0
	v_fma_f32 v40, -v40, v37, v45
	v_fmac_f32_e32 v46, v38, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v38, v39, v43
	v_div_scale_f32 v45, null, v44, v44, v106
	v_fmac_f32_e32 v51, v41, v51
	v_div_scale_f32 v41, s11, v107, v44, v107
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v52, null, v44, v44, v105
	v_div_fmas_f32 v37, v40, v42, v37
	v_fma_f32 v40, -v48, v46, v47
	v_fma_f32 v42, -v49, v38, v39
	v_rcp_f32_e32 v47, v45
	v_mul_f32_e32 v48, v41, v51
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v59, null, v25, v25, v98
	v_div_fmas_f32 v40, v40, v36, v46
	v_fmac_f32_e32 v38, v42, v43
	v_rcp_f32_e32 v42, v52
	v_fma_f32 v46, -v50, v48, v41
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v53, -v45, v47, 1.0
	v_fma_f32 v39, -v49, v38, v39
	v_div_scale_f32 v49, null, v44, v44, v104
	v_fmac_f32_e32 v48, v46, v51
	v_div_fixup_f32 v36, v37, v44, v110
	v_div_fixup_f32 v37, v40, v44, v109
	v_fmac_f32_e32 v47, v53, v47
	v_div_scale_f32 v40, s8, v106, v44, v106
	v_fma_f32 v46, -v52, v42, 1.0
	v_div_fmas_f32 v38, v39, v43, v38
	v_fma_f32 v39, -v50, v48, v41
	v_rcp_f32_e32 v43, v49
	v_div_scale_f32 v50, null, v44, v44, v103
	v_dual_mul_f32 v41, v40, v47 :: v_dual_fmac_f32 v42, v46, v42
	v_div_scale_f32 v46, s9, v105, v44, v105
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v54, v50
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v32, v32, v44, v114
	v_div_fmas_f32 v39, v39, v51, v48
	v_fma_f32 v48, -v45, v41, v40
	v_mul_f32_e32 v51, v46, v42
	v_fma_f32 v53, -v49, v43, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v33, v33, v44, v113
	v_fmac_f32_e32 v41, v48, v47
	v_fma_f32 v48, -v52, v51, v46
	v_fmac_f32_e32 v43, v53, v43
	v_div_scale_f32 v53, s10, v104, v44, v104
	v_fma_f32 v56, -v50, v54, 1.0
	v_fma_f32 v40, -v45, v41, v40
	v_fmac_f32_e32 v51, v48, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v45, v53, v43
	v_rcp_f32_e32 v48, v55
	v_fmac_f32_e32 v54, v56, v54
	v_div_scale_f32 v56, s11, v103, v44, v103
	v_div_fmas_f32 v40, v40, v47, v41
	v_fma_f32 v41, -v52, v51, v46
	v_fma_f32 v46, -v49, v45, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v47, v56, v54
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v35, v35, v44, v111
	v_fma_f32 v52, -v55, v48, 1.0
	v_div_fmas_f32 v41, v41, v42, v51
	v_fmac_f32_e32 v45, v46, v43
	v_rcp_f32_e32 v46, v57
	v_fma_f32 v42, -v50, v47, v56
	v_fmac_f32_e32 v48, v52, v48
	v_div_scale_f32 v51, s8, v102, v44, v102
	v_fma_f32 v49, -v49, v45, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v47, v42, v54
	v_div_scale_f32 v53, null, v25, v25, v100
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v52, v51, v48
	v_fma_f32 v42, -v57, v46, 1.0
	v_div_fmas_f32 v43, v49, v43, v45
	v_fma_f32 v45, -v50, v47, v56
	v_rcp_f32_e32 v50, v53
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v49, -v55, v52, v51
	v_fmac_f32_e32 v46, v42, v46
	v_div_scale_f32 v56, s9, v101, v44, v101
	v_div_fmas_f32 v45, v45, v54, v47
	v_rcp_f32_e32 v47, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v52, v49, v48 :: v_dual_mul_f32 v49, v56, v46
	v_fma_f32 v54, -v53, v50, 1.0
	v_div_fixup_f32 v42, v43, v44, v104
	v_div_fixup_f32 v43, v45, v44, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v45, -v55, v52, v51
	v_fma_f32 v51, -v57, v49, v56
	v_fmac_f32_e32 v50, v54, v50
	v_div_scale_f32 v54, s10, v100, v25, v100
	v_fma_f32 v55, -v58, v47, 1.0
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v49, v51, v46
	v_div_fmas_f32 v45, v45, v48, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v48, v54, v50 :: v_dual_fmac_f32 v47, v55, v47
	v_rcp_f32_e32 v51, v59
	v_div_scale_f32 v52, s8, v99, v25, v99
	v_div_scale_f32 v55, null, v25, v25, v97
	v_fma_f32 v56, -v57, v49, v56
	v_fma_f32 v57, -v53, v48, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v60, v52, v47
	v_rcp_f32_e32 v61, v55
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v62, -v59, v51, 1.0
	v_div_fmas_f32 v46, v56, v46, v49
	v_fmac_f32_e32 v48, v57, v50
	v_fma_f32 v49, -v58, v60, v52
	v_div_fixup_f32 v38, v38, v44, v108
	v_div_fixup_f32 v39, v39, v44, v107
	v_div_fixup_f32 v40, v40, v44, v106
	v_div_fixup_f32 v41, v41, v44, v105
	v_div_fixup_f32 v45, v45, v44, v102
	v_fmac_f32_e32 v51, v62, v51
	v_div_scale_f32 v56, s9, v98, v25, v98
	v_fma_f32 v57, -v55, v61, 1.0
	v_div_fixup_f32 v44, v46, v44, v101
	v_fma_f32 v46, -v53, v48, v54
	v_fmac_f32_e32 v60, v49, v47
	v_div_scale_f32 v54, null, v25, v25, v96
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v49, v56, v51
	v_fmac_f32_e32 v61, v57, v61
	v_div_scale_f32 v53, s11, v97, v25, v97
	v_div_fmas_f32 v46, v46, v50, v48
	v_fma_f32 v48, -v58, v60, v52
	v_rcp_f32_e32 v52, v54
	v_fma_f32 v50, -v59, v49, v56
	v_mul_f32_e32 v57, v53, v61
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v58, null, v25, v25, v95
	v_div_fmas_f32 v47, v48, v47, v60
	v_fmac_f32_e32 v49, v50, v51
	v_fma_f32 v48, -v55, v57, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v50, v58
	v_fma_f32 v60, -v54, v52, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v56, -v59, v49, v56
	v_fmac_f32_e32 v57, v48, v61
	v_div_scale_f32 v59, s8, v96, v25, v96
	v_fmac_f32_e32 v52, v60, v52
	v_div_scale_f32 v60, null, v25, v25, v94
	v_div_fmas_f32 v49, v56, v51, v49
	v_fma_f32 v51, -v55, v57, v53
	v_fma_f32 v48, -v58, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v55, v60
	v_mul_f32_e32 v53, v59, v52
	v_div_scale_f32 v56, s9, v95, v25, v95
	v_fmac_f32_e32 v50, v48, v50
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v48, v49, v25, v98
	v_div_fmas_f32 v51, v51, v61, v57
	v_fma_f32 v57, -v54, v53, v59
	v_mul_f32_e32 v61, v56, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v60, v55, 1.0
	v_div_scale_f32 v62, null, v25, v25, v93
	v_div_fixup_f32 v49, v51, v25, v97
	v_fmac_f32_e32 v53, v57, v52
	v_fmac_f32_e32 v55, v63, v55
	v_div_scale_f32 v63, null, v25, v25, v92
	v_fma_f32 v51, -v58, v61, v56
	v_div_scale_f32 v57, s10, v94, v25, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v97, v63
	v_fma_f32 v54, -v54, v53, v59
	v_fmac_f32_e32 v61, v51, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v59, v57, v55
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v64, v62
	v_div_fmas_f32 v51, v54, v52, v53
	v_fma_f32 v52, -v58, v61, v56
	v_fma_f32 v53, -v60, v59, v57
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v56, -v63, v97, 1.0
	v_div_scale_f32 v58, null, v25, v25, v91
	v_div_fmas_f32 v52, v52, v50, v61
	v_fmac_f32_e32 v59, v53, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v97, v56, v97
	v_div_scale_f32 v56, s8, v92, v25, v92
	v_fma_f32 v65, -v62, v64, 1.0
	v_div_fixup_f32 v50, v51, v25, v96
	v_div_fixup_f32 v51, v52, v25, v95
	v_fma_f32 v52, -v60, v59, v57
	v_mul_f32_e32 v57, v56, v97
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v61, v58
	v_div_scale_f32 v60, null, v25, v25, v90
	v_div_fmas_f32 v52, v52, v55, v59
	v_fma_f32 v59, -v63, v57, v56
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, s11, v93, v25, v93
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v57, v59, v97
	v_div_scale_f32 v95, null, v25, v25, v89
	v_mul_f32_e32 v54, v65, v64
	v_div_fixup_f32 v52, v52, v25, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v63, v57, v56
	v_div_scale_f32 v94, null, v25, v25, v87
	v_fma_f32 v53, -v62, v54, v65
	v_div_fixup_f32 v46, v46, v25, v100
	v_div_fixup_f32 v47, v47, v25, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v96, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v54, v53, v64
	v_fma_f32 v53, -v58, v61, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v55, -v62, v54, v65
	v_rcp_f32_e32 v62, v60
	v_fmac_f32_e32 v61, v53, v61
	v_div_scale_f32 v65, s9, v91, v25, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v53, v55, v64, v54
	v_rcp_f32_e32 v54, v95
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v56, v56, v97, v57
	v_div_fixup_f32 v53, v53, v25, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v59, -v60, v62, 1.0
	v_mul_f32_e32 v55, v65, v61
	v_div_scale_f32 v93, null, v25, v25, v88
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v62, v59, v62
	v_fma_f32 v63, -v58, v55, v65
	v_div_scale_f32 v59, s10, v90, v25, v90
	v_fma_f32 v64, -v95, v54, 1.0
	v_div_fixup_f32 v56, v56, v25, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v55, v63, v61
	v_rcp_f32_e32 v63, v93
	v_mul_f32_e32 v57, v59, v62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v58, v55, v65
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v65, -v60, v57, v59
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v55, v58, v61, v55
	v_fma_f32 v97, -v93, v63, 1.0
	v_fmac_f32_e32 v54, v64, v54
	v_div_scale_f32 v64, s8, v89, v25, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v55, v55, v25, v91
	v_fmac_f32_e32 v63, v97, v63
	v_fmac_f32_e32 v57, v65, v62
	v_fma_f32 v65, -v94, v96, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v61, s9, v88, v25, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v60, v57, v59
	v_fmac_f32_e32 v96, v65, v96
	v_div_scale_f32 v60, s11, v87, v25, v87
	v_div_scale_f32 v65, null, v25, v25, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v57, v59, v62, v57
	v_mul_f32_e32 v91, v60, v96
	v_mul_f32_e32 v92, v64, v54
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v57, v57, v25, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v95, v92, v64
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v58, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v59, -v95, v92, v64
	v_rcp_f32_e32 v64, v65
	v_div_scale_f32 v95, null, v25, v25, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v54, v59, v54, v92
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v59, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v54, v54, v25, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v65, v64, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v64, v92, v64
	v_mul_f32_e32 v58, v61, v63
	v_fma_f32 v89, -v95, v59, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v62, -v93, v58, v61
	v_fmac_f32_e32 v59, v89, v59
	v_div_scale_f32 v89, s9, v85, v25, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v58, v62, v63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v89, v59
	v_fma_f32 v62, -v94, v91, v60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v93, v58, v61
	v_div_scale_f32 v93, null, v12, v12, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v62, v96
	v_div_scale_f32 v62, s8, v86, v25, v86
	v_div_fmas_f32 v58, v61, v63, v58
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v94, v91, v60
	v_mul_f32_e32 v61, v62, v64
	v_div_scale_f32 v63, null, v12, v12, v84
	v_div_fixup_f32 v58, v58, v25, v88
	v_rcp_f32_e32 v88, v93
	v_div_fmas_f32 v60, v60, v96, v91
	v_fma_f32 v91, -v65, v61, v62
	v_rcp_f32_e32 v90, v63
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v96, null, v12, v12, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v61, v91, v64
	v_div_fixup_f32 v60, v60, v25, v87
	v_fma_f32 v87, -v95, v92, v89
	v_fma_f32 v94, -v93, v88, 1.0
	v_rcp_f32_e32 v98, v96
	v_fma_f32 v62, -v65, v61, v62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v63, v90, 1.0
	v_div_scale_f32 v65, null, v12, v12, v82
	v_fmac_f32_e32 v88, v94, v88
	v_fmac_f32_e32 v92, v87, v59
	v_div_fmas_f32 v61, v62, v64, v61
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v87, s10, v84, v12, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v95, v92, v89
	v_div_scale_f32 v89, s8, v83, v12, v83
	v_div_fixup_f32 v61, v61, v25, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v97, v89, v88
	v_div_fmas_f32 v59, v62, v59, v92
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v62, -v93, v97, v89
	v_fmac_f32_e32 v90, v91, v90
	v_rcp_f32_e32 v91, v65
	v_div_fixup_f32 v25, v59, v25, v85
	v_div_scale_f32 v85, null, v12, v12, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v97, v62, v88 :: v_dual_mul_f32 v64, v87, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v65, v91, 1.0
	v_fma_f32 v95, -v63, v64, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, s11, v82, v12, v82
	v_fmac_f32_e32 v64, v95, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v94, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v59, -v63, v64, v87
	v_fma_f32 v63, -v96, v98, 1.0
	v_div_scale_f32 v87, null, v12, v12, v79
	v_fma_f32 v62, -v65, v92, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v59, v59, v90, v64
	v_fma_f32 v64, -v93, v97, v89
	v_fmac_f32_e32 v98, v63, v98
	v_div_scale_f32 v63, s9, v81, v12, v81
	v_fmac_f32_e32 v92, v62, v91
	v_rcp_f32_e32 v62, v85
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v86, v63, v98
	v_div_fmas_f32 v64, v64, v88, v97
	v_fma_f32 v65, -v65, v92, v94
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v96, v86, v63
	v_div_fixup_f32 v64, v64, v12, v83
	v_div_fmas_f32 v65, v65, v91, v92
	v_fma_f32 v88, -v85, v62, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v86, v90, v98
	v_div_fixup_f32 v59, v59, v12, v84
	v_div_fixup_f32 v65, v65, v12, v82
	v_fmac_f32_e32 v62, v88, v62
	v_div_scale_f32 v88, s8, v80, v12, v80
	v_fma_f32 v83, -v87, v89, 1.0
	v_fma_f32 v63, -v96, v86, v63
	v_div_scale_f32 v84, null, v12, v12, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v82, v88, v62 :: v_dual_fmac_f32 v89, v83, v89
	v_div_scale_f32 v83, s10, v79, v12, v79
	v_div_fmas_f32 v63, v63, v98, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v85, v82, v88
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v86, v83, v89
	v_rcp_f32_e32 v91, v84
	v_div_fixup_f32 v63, v63, v12, v81
	v_fmac_f32_e32 v82, v90, v62
	v_div_scale_f32 v90, null, v12, v12, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v85, v82, v88
	v_fma_f32 v85, -v87, v86, v83
	v_rcp_f32_e32 v92, v90
	v_fma_f32 v88, -v84, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v62, v81, v62, v82
	v_div_scale_f32 v81, null, v12, v12, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v85, v89 :: v_dual_fmac_f32 v91, v88, v91
	v_div_scale_f32 v82, s8, v78, v12, v78
	v_rcp_f32_e32 v85, v81
	v_div_fixup_f32 v62, v62, v12, v80
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v80, -v90, v92, 1.0
	v_fma_f32 v83, -v87, v86, v83
	v_mul_f32_e32 v87, v82, v91
	v_div_scale_f32 v88, null, v12, v12, v75
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v95, s10, v76, v12, v76
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v81, v85, 1.0
	v_rcp_f32_e32 v94, v88
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v84, v87, v82
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v85, v93, v85
	v_div_scale_f32 v93, null, v12, v12, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v86, v91
	v_div_fixup_f32 v79, v83, v12, v79
	v_mul_f32_e32 v98, v95, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v97, v93
	v_fmac_f32_e32 v92, v80, v92
	v_div_scale_f32 v80, s9, v77, v12, v77
	v_fma_f32 v96, -v88, v94, 1.0
	v_fma_f32 v82, -v84, v87, v82
	v_fma_f32 v83, -v81, v98, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v89, v80, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v91, v87
	v_fmac_f32_e32 v98, v83, v85
	v_fma_f32 v86, -v90, v89, v80
	v_div_scale_f32 v87, null, v12, v12, v73
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v81, -v81, v98, v95
	v_fmac_f32_e32 v89, v86, v92
	v_fma_f32 v86, -v93, v97, 1.0
	v_div_fixup_f32 v78, v82, v12, v78
	v_div_scale_f32 v91, null, v12, v12, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v90, v89, v80
	v_fmac_f32_e32 v97, v86, v97
	v_div_scale_f32 v86, s8, v74, v12, v74
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s11, v75, v12, v75
	v_div_fmas_f32 v80, v80, v92, v89
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v89, v87
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v84, v96, v94
	v_div_fmas_f32 v81, v81, v85, v98
	v_div_fixup_f32 v77, v80, v12, v77
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v78, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v88, v84, v96
	v_div_fixup_f32 v76, v81, v12, v76
	v_div_scale_f32 v81, null, v12, v12, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v87, v89, 1.0
	v_dual_fmac_f32 v84, v83, v94 :: v_dual_mul_f32 v83, v86, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v82, v89
	v_fma_f32 v85, -v88, v84, v96
	v_fma_f32 v88, -v93, v83, v86
	v_div_scale_f32 v82, null, v12, v12, v72
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v85, v94, v84
	v_fmac_f32_e32 v83, v88, v97
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v75, v84, v12, v75
	v_fma_f32 v80, -v93, v83, v86
	v_rcp_f32_e32 v86, v82
	v_div_scale_f32 v84, null, v12, v12, v71
	v_rcp_f32_e32 v93, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v80, v97, v83
	v_div_scale_f32 v85, vcc_lo, v73, v12, v73
	v_rcp_f32_e32 v83, v81
	v_rcp_f32_e32 v88, v84
	v_div_fixup_f32 v74, v80, v12, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v90, v85, v89
	v_fma_f32 v92, -v82, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v91, v93, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v87, v90, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v80, -v81, v83, 1.0
	v_fma_f32 v95, -v84, v88, 1.0
	v_fmac_f32_e32 v93, v97, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v94, v89
	v_div_scale_f32 v97, s11, v70, v12, v70
	v_fmac_f32_e32 v83, v80, v83
	v_div_scale_f32 v80, s8, v66, v12, v66
	v_fma_f32 v85, -v87, v90, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_div_fmas_f32 v85, v85, v89, v90
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v80, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v37, v37
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v81, v96, v80
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s9, v72, v12, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v94, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s10, v71, v12, v71
	v_fma_f32 v80, -v81, v96, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v83, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v100, v97, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v66, v80, v12, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v80, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v98, v92, v86 :: v_dual_and_b32 v25, 15, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v27, 15, v29
	v_and_b32_e32 v29, 15, v31
	v_and_b32_e32 v31, 15, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v99, v95, v88
	v_fma_f32 v87, -v82, v98, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v33, 15, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v91, v100, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v35, 15, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v84, v99, v95
	v_dual_fmac_f32 v98, v87, v86 :: v_dual_and_b32 v37, 15, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v99, v94, v88
	v_fma_f32 v82, -v82, v98, v92
	v_fmac_f32_e32 v100, v81, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v84, v99, v95
	v_div_fmas_f32 v82, v82, v86, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v72, v82, v12, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_and_b32_e32 v39, 15, v41
	v_and_b32_e32 v41, 15, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v91, v100, v97
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v88, v99
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v62, v62, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v93, v100
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v78, v78, s8, 0x40e00000
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v73, v85, v12, v73
	v_div_fixup_f32 v71, v81, v12, v71
	v_div_fixup_f32 v12, v83, v12, v70
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_cvt_i32_f32_e32 v82, v62
	v_cvt_i32_f32_e32 v78, v78
	v_and_b32_e32 v43, 15, v44
	v_and_b32_e32 v44, 15, v46
	v_and_b32_e32 v46, 15, v48
	v_and_b32_e32 v48, 15, v50
	v_and_b32_e32 v50, 15, v52
	v_and_b32_e32 v52, 15, v56
	v_and_b32_e32 v56, 15, v58
	v_and_b32_e32 v58, 15, v61
	v_and_b32_e32 v61, 15, v64
	v_and_b32_e32 v62, 15, v65
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v64, 10, v0
	v_and_b32_e32 v65, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_cvt_i32_f32_e32 v86, v72
	v_and_b32_e32 v72, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v64, 0x1800, v64
	v_lshlrev_b32_e32 v78, 6, v65
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v77, v77, s8, 0x40e00000
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v81, v59
	v_cvt_i32_f32_e32 v63, v63
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v64, 0, v64, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v79, v54
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v84, v74
	v_cvt_i32_f32_e32 v85, v73
	v_cvt_i32_f32_e32 v88, v12
	v_and_b32_e32 v54, 15, v57
	v_and_b32_e32 v57, 15, v60
	v_and_b32_e32 v60, 15, v81
	v_and_b32_e32 v63, 15, v63
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v9, v64, v11, v9
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v12, 15, v13
	v_and_b32_e32 v13, 15, v14
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v16, 15, v17
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v21
	v_and_b32_e32 v21, 15, v22
	v_and_b32_e32 v22, 15, v23
	v_and_b32_e32 v23, 15, v24
	v_and_b32_e32 v24, 15, v26
	v_and_b32_e32 v26, 15, v28
	v_and_b32_e32 v28, 15, v30
	v_and_b32_e32 v30, 15, v32
	v_and_b32_e32 v32, 15, v34
	v_and_b32_e32 v34, 15, v36
	v_and_b32_e32 v36, 15, v38
	v_and_b32_e32 v38, 15, v40
	v_and_b32_e32 v40, 15, v42
	v_and_b32_e32 v42, 15, v45
	v_and_b32_e32 v45, 15, v47
	v_and_b32_e32 v47, 15, v49
	v_and_b32_e32 v49, 15, v51
	v_and_b32_e32 v51, 15, v53
	v_and_b32_e32 v53, 15, v55
	v_and_b32_e32 v55, 15, v79
	v_and_b32_e32 v73, 15, v77
	v_and_b32_e32 v74, 15, v76
	v_and_b32_e32 v75, 15, v75
	v_and_b32_e32 v76, 15, v84
	v_and_b32_e32 v77, 15, v85
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v9, v[12:15]
	ds_store_b128 v9, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v8
	ds_load_b128 v[20:23], v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v9, v[28:31]
	ds_store_b128 v9, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v8
	ds_load_b128 v[36:39], v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v9, v[44:47]
	ds_store_b128 v9, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v8
	ds_load_b128 v[52:55], v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v9, v[60:63]
	ds_store_b128 v9, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v8
	ds_load_b128 v[74:77], v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v9, v[16:19]
	ds_store_b128 v9, v[24:27] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v8
	ds_load_b128 v[24:27], v8 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v71, v71
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v70, v70, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_cvt_i32_f32_e32 v83, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v9, v[32:35]
	ds_store_b128 v9, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v87, v71
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[32:35], v8
	ds_load_b128 v[40:43], v8 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v59, 15, v80
	v_and_b32_e32 v70, 15, v82
	v_and_b32_e32 v71, 15, v83
	v_and_b32_e32 v78, 15, v66
	v_and_b32_e32 v79, 15, v86
	v_and_b32_e32 v80, 15, v87
	v_and_b32_e32 v81, 15, v88
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v9, v[48:51]
	ds_store_b128 v9, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v8
	ds_load_b128 v[56:59], v8 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v25, 4, v16
	v_lshl_or_b32 v25, v39, 4, v31
	v_lshl_or_b32 v31, v53, 4, v45
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v45, 3, v67
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v9, v[70:73]
	ds_store_b128 v9, v[78:81] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v8
	ds_load_b128 v[78:81], v8 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v8, v20, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, s34, v7
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v7, s45, 7, v45
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v22, 4, v13
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 16, v11
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v20, v23, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 32, v11
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v9, v21, 4, v12
	v_lshl_or_b32 v21, v24, 4, v15
	v_lshl_or_b32 v17, v26, 4, v17
	v_lshl_or_b32 v18, v27, 4, v18
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 48, v11
	v_mad_u64_u32 v[11:12], null, v11, s8, v[7:8]
	v_mad_u64_u32 v[12:13], null, v13, s8, v[7:8]
	v_mad_u64_u32 v[13:14], null, v14, s8, v[7:8]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v22, v36, 4, v28
	v_lshl_or_b32 v23, v37, 4, v29
	v_lshl_or_b32 v26, v40, 4, v32
	v_lshl_or_b32 v27, v41, 4, v33
	v_lshl_or_b32 v28, v42, 4, v34
	v_lshl_or_b32 v29, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v15, s8, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v20.l
	v_and_b16 v4.l, 0xff, v19.l
	v_lshlrev_b16 v6.l, 8, v9.l
	v_and_b16 v7.l, 0xff, v8.l
	v_lshlrev_b16 v7.h, 8, v18.l
	v_and_b16 v8.l, 0xff, v17.l
	v_lshlrev_b16 v8.h, 8, v16.l
	v_and_b16 v9.l, 0xff, v21.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v24, v38, 4, v30
	v_lshl_or_b32 v34, v56, 4, v48
	v_lshl_or_b32 v35, v57, 4, v49
	v_lshl_or_b32 v36, v58, 4, v50
	v_lshl_or_b32 v37, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v4.l, v3.l
	v_or_b16 v15.l, v7.l, v6.l
	v_or_b16 v16.h, v8.l, v7.h
	v_or_b16 v16.l, v9.l, v8.h
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v7.h, 8, v29.l
	v_and_b16 v8.l, 0xff, v28.l
	v_lshlrev_b16 v8.h, 8, v27.l
	v_and_b16 v9.l, 0xff, v26.l
	s_and_b32 s9, s37, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s36
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v52, 4, v44
	v_lshl_or_b32 v32, v54, 4, v46
	v_lshl_or_b32 v33, v55, 4, v47
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v42, v78, 4, v68
	v_lshl_or_b32 v43, v79, 4, v69
	v_lshl_or_b32 v44, v80, 4, v70
	v_lshl_or_b32 v46, v81, 4, v71
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v25.l
	v_and_b16 v4.l, 0xff, v24.l
	v_lshlrev_b16 v6.l, 8, v23.l
	v_and_b16 v7.l, 0xff, v22.l
	buffer_store_b64 v[15:16], v11, s[8:11], 0 offen
	v_or_b16 v16.h, v8.l, v7.h
	v_or_b16 v16.l, v9.l, v8.h
	v_lshlrev_b16 v7.h, 8, v37.l
	v_and_b16 v8.l, 0xff, v36.l
	v_lshlrev_b16 v8.h, 8, v35.l
	v_and_b16 v9.l, 0xff, v34.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v38, v74, 4, v60
	v_lshl_or_b32 v39, v75, 4, v61
	v_lshl_or_b32 v40, v76, 4, v62
	v_lshl_or_b32 v41, v77, 4, v63
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v4.l, v3.l
	v_or_b16 v15.l, v7.l, v6.l
	v_cndmask_b32_e32 v11, 0x80000000, v12, vcc_lo
	v_lshlrev_b16 v3.l, 8, v33.l
	v_and_b16 v4.l, 0xff, v32.l
	v_lshlrev_b16 v6.l, 8, v31.l
	v_and_b16 v7.l, 0xff, v30.l
	v_or_b16 v12.h, v8.l, v7.h
	v_or_b16 v12.l, v9.l, v8.h
	v_lshlrev_b16 v7.h, 8, v46.l
	v_and_b16 v8.l, 0xff, v44.l
	v_lshlrev_b16 v8.h, 8, v43.l
	v_and_b16 v9.l, 0xff, v42.l
	buffer_store_b64 v[15:16], v11, s[8:11], 0 offen
	v_or_b16 v11.h, v4.l, v3.l
	v_or_b16 v11.l, v7.l, v6.l
	v_lshlrev_b16 v3.l, 8, v41.l
	v_and_b16 v4.l, 0xff, v40.l
	v_lshlrev_b16 v6.l, 8, v39.l
	v_and_b16 v7.l, 0xff, v38.l
	v_or_b16 v16.h, v8.l, v7.h
	v_or_b16 v16.l, v9.l, v8.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshrrev_b32_e32 v9, 2, v65
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v4.l, v3.l
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.l, v7.l, v6.l
	v_dual_cndmask_b32 v7, 0x80000000, v14 :: v_dual_and_b32 v8, 2, v8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v9, 0, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[11:12], v13, s[8:11], 0 offen
	buffer_store_b64 v[15:16], v7, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v7, 0, v45
	v_mov_b16_e32 v4.l, v10.h
	v_mov_b16_e32 v3.l, v6.h
	v_add3_u32 v6, v9, v8, v45
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v7, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v3, v6
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v4, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[42:43], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s39, 0xffff
	s_mov_b32 s8, s38
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v4, s45, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v3, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp51:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 214
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 214
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14928
; TotalNumSgprs: 58
; NumVgprs: 214
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 214
; Occupancy: 7
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     214
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
