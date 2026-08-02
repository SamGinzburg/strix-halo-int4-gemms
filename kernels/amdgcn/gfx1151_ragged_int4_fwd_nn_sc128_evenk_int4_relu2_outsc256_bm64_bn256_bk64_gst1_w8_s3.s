	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v83, 15, v0
	v_lshlrev_b32_e32 v87, 4, v0
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
	s_sub_i32 s4, s41, s8
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
	s_sub_i32 s41, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s41, s9
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
	s_load_b64 s[34:35], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s6, s2
	s_addc_u32 s5, s7, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 4, v0
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_load_b128 s[20:23], s[0:1], 0x40
	s_load_b64 s[36:37], s[4:5], 0x0
	s_load_b64 s[38:39], s[6:7], 0x0
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v84, 0xf0, v0
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v85, 4, v83
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v86, 3, v0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v50, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s10, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s34, v83
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v11, 2, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_u32 v5, vcc_lo, v1, 16
	v_add_co_u32 v3, s0, s34, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 32
	v_mov_b32_e32 v88, 0
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s8, s4, s2
	s_addc_u32 s9, s5, s3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v9, vcc_lo, v1, 48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[1:2]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, s34, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[38:39], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v3, 32, v1
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_load_b32 s9, s[8:9], 0x0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v93, v2, s40
	v_dual_mov_b32 v165, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[36:37], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[38:39], v[5:6]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v89, 3, v84
	v_dual_mov_b32 v172, 0 :: v_dual_lshlrev_b32 v91, 3, v86
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v94, v3, s40
	v_lshrrev_b32_e32 v3, 1, v0
	v_xor_b32_e32 v6, v2, v11
	v_mul_lo_u32 v95, v4, s40
	v_dual_mov_b32 v163, 0 :: v_dual_lshlrev_b32 v4, 5, v83
	v_dual_mov_b32 v159, 0 :: v_dual_lshlrev_b32 v16, 5, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[7:8]
	v_cmp_le_i64_e64 s3, s[36:37], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[7:8]
	v_cmp_gt_i64_e64 s8, s[38:39], v[9:10]
	v_dual_mov_b32 v170, 0 :: v_dual_lshlrev_b32 v5, 3, v0
	v_dual_mov_b32 v168, 0 :: v_dual_and_b32 v3, 24, v3
	v_xor_b32_e32 v7, v91, v89
	v_dual_mov_b32 v166, 0 :: v_dual_and_b32 v9, 0xe00, v87
	v_dual_mov_b32 v161, 0 :: v_dual_and_b32 v6, 24, v6
	v_and_or_b32 v8, v2, 24, v4
	v_dual_mov_b32 v153, 0 :: v_dual_lshlrev_b32 v18, 2, v84
	v_dual_mov_b32 v151, 0 :: v_dual_and_b32 v16, 32, v16
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s4, s41, 8
	v_xor_b32_e32 v3, v5, v3
	v_lshl_or_b32 v5, v83, 9, v7
	v_or3_b32 v4, v9, v6, v4
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v92, v1, s40
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s4, v85
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v11, s34, v11
	v_dual_mov_b32 v149, 0 :: v_dual_and_b32 v2, 28, v2
	v_xor_b32_e32 v7, 8, v8
	v_xor_b32_e32 v6, 24, v8
	v_add3_u32 v16, 0, v18, v16
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s5
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s5, s10, s33
	v_xor_b32_e32 v10, 16, v8
	v_xor_b32_e32 v9, 0x88, v5
	v_xor_b32_e32 v12, 0x110, v5
	v_xor_b32_e32 v13, 0x198, v5
	v_xor_b32_e32 v14, 8, v4
	v_xor_b32_e32 v15, 16, v4
	v_xor_b32_e32 v17, 24, v4
	v_dual_mov_b32 v147, 0 :: v_dual_lshlrev_b32 v18, 1, v84
	v_or_b32_e32 v126, s4, v0
	s_mov_b32 s4, 0
	v_mul_lo_u32 v135, v11, s10
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[81:82], null, s5, s9, v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	s_and_b32 s2, s2, s7
	s_and_b32 s3, s3, s8
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s42, s40, s9
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v142, 0, v3
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v143, 0, v8
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v144, 0, v7
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v148, 0, v6
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v150, 0, v5
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v156, 0, v4
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v167, v16, v2
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v1, s4
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v90, 1, v89
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v146, 0, v10
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v152, 0, v9
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v154, 0, v12
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v155, 0, v13
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v157, 0, v14
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v158, 0, v15
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v160, 0, v17
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v169, 0, v18
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v2, s5
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v6, s9
	v_mov_b32_e32 v8, s11
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s5, s4, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v9, s5, v89
	v_or_b32_e32 v12, s5, v91
	v_or_b32_e32 v11, s5, v90
	s_or_b32 s5, s5, 32
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[9:10], null, v9, s33, v[81:82]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_add_nc_u32_e32 v10, v135, v12
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[13:14], null, v11, s33, v[81:82]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v17, 0x80000000, v10, vcc_lo
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[12:15], 0 offen
	buffer_load_b128 v[13:16], v13, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_b64 v[17:18], v17, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(1)
	v_perm_b32 v19, v13, v9, 0x5010400
	v_perm_b32 v20, v13, v9, 0x7030602
	v_perm_b32 v21, v14, v10, 0x5010400
	v_perm_b32 v22, v14, v10, 0x7030602
	v_perm_b32 v23, v15, v11, 0x5010400
	v_perm_b32 v24, v15, v11, 0x7030602
	v_perm_b32 v25, v16, v12, 0x5010400
	v_perm_b32 v26, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v27, 8, v19
	v_lshrrev_b32_e32 v28, 24, v19
	v_lshrrev_b32_e32 v29, 8, v20
	v_lshrrev_b32_e32 v30, 24, v20
	v_lshrrev_b32_e32 v31, 8, v21
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_store_b64 v142, v[17:18]
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_and_b16 v17.l, 0xff, v19.l
	v_and_b16 v19.l, 0xff, v21.l
	v_lshrrev_b32_e32 v32, 24, v21
	v_lshrrev_b32_e32 v33, 8, v22
	v_lshrrev_b32_e32 v34, 24, v22
	v_and_b16 v21.l, 0xff, v23.l
	v_lshrrev_b32_e32 v35, 8, v23
	v_lshrrev_b32_e32 v36, 24, v23
	v_lshrrev_b32_e32 v37, 8, v24
	v_lshrrev_b32_e32 v38, 24, v24
	v_and_b16 v23.l, 0xff, v25.l
	v_lshrrev_b32_e32 v39, 8, v25
	v_lshrrev_b32_e32 v40, 24, v25
	v_lshrrev_b32_e32 v41, 8, v26
	v_lshrrev_b32_e32 v42, 24, v26
	v_lshlrev_b16 v25.l, 8, v27.l
	v_and_b16 v17.h, 0xff, v19.h
	v_and_b16 v19.h, 0xff, v21.h
	v_and_b16 v21.h, 0xff, v23.h
	v_and_b16 v23.h, 0xff, v25.h
	v_lshlrev_b16 v25.h, 8, v28.l
	v_and_b16 v18.l, 0xff, v20.l
	v_and_b16 v20.l, 0xff, v22.l
	v_and_b16 v22.l, 0xff, v24.l
	v_and_b16 v24.l, 0xff, v26.l
	v_lshlrev_b16 v26.l, 8, v29.l
	v_and_b16 v18.h, 0xff, v20.h
	v_and_b16 v20.h, 0xff, v22.h
	v_and_b16 v22.h, 0xff, v24.h
	v_and_b16 v24.h, 0xff, v26.h
	v_lshlrev_b16 v26.h, 8, v30.l
	v_lshlrev_b16 v27.l, 8, v31.l
	v_lshlrev_b16 v27.h, 8, v32.l
	v_lshlrev_b16 v28.l, 8, v33.l
	v_lshlrev_b16 v28.h, 8, v34.l
	v_lshlrev_b16 v29.l, 8, v35.l
	v_lshlrev_b16 v29.h, 8, v36.l
	v_lshlrev_b16 v30.l, 8, v37.l
	v_lshlrev_b16 v30.h, 8, v38.l
	v_lshlrev_b16 v31.l, 8, v39.l
	v_lshlrev_b16 v31.h, 8, v40.l
	v_lshlrev_b16 v32.l, 8, v41.l
	v_lshlrev_b16 v32.h, 8, v42.l
	v_or_b16 v17.l, v17.l, v25.l
	v_or_b16 v17.h, v17.h, v25.h
	v_or_b16 v18.l, v18.l, v26.l
	v_or_b16 v18.h, v18.h, v26.h
	v_or_b16 v19.l, v19.l, v27.l
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[9:12], v143 offset1:1
	ds_load_2addr_stride64_b64 v[175:178], v143 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v144 offset1:1
	ds_load_2addr_stride64_b64 v[179:182], v144 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[183:186], v146 offset1:1
	ds_load_2addr_stride64_b64 v[187:190], v146 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v148 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v148 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b16 v19.h, v19.h, v27.h
	v_or_b16 v20.l, v20.l, v28.l
	v_or_b16 v20.h, v20.h, v28.h
	v_or_b16 v21.l, v21.l, v29.l
	v_or_b16 v21.h, v21.h, v29.h
	v_or_b16 v22.l, v22.l, v30.l
	v_or_b16 v22.h, v22.h, v30.h
	v_or_b16 v23.l, v23.l, v31.l
	v_or_b16 v23.h, v23.h, v31.h
	v_or_b16 v24.l, v24.l, v32.l
	v_or_b16 v24.h, v24.h, v32.h
	ds_store_b16 v150, v17
	ds_store_b16_d16_hi v150, v17 offset:32
	ds_store_b16 v150, v18 offset:64
	ds_store_b16_d16_hi v150, v18 offset:96
	ds_store_b16 v152, v19
	ds_store_b16_d16_hi v152, v19 offset:32
	ds_store_b16 v152, v20 offset:64
	ds_store_b16_d16_hi v152, v20 offset:96
	ds_store_b16 v154, v21
	ds_store_b16_d16_hi v154, v21 offset:32
	ds_store_b16 v154, v22 offset:64
	ds_store_b16_d16_hi v154, v22 offset:96
	ds_store_b16 v155, v23
	ds_store_b16_d16_hi v155, v23 offset:32
	ds_store_b16 v155, v24 offset:64
	ds_store_b16_d16_hi v155, v24 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[191:194], v156 offset1:8
	ds_load_2addr_stride64_b64 v[195:198], v157 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[191:192], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[193:194], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[191:192], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[193:194], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[191:192], v[175:176], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[195:196], v[13:14], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[197:198], v[13:14], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[195:196], v[15:16], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[197:198], v[15:16], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[193:194], v[175:176], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[191:192], v[177:178], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[193:194], v[177:178], v[1:8] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[175:178], v158 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[33:40], v[195:196], v[179:180], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[197:198], v[179:180], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[195:196], v[181:182], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[197:198], v[181:182], v[9:16] neg_lo:[1,1,0]
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v179, s5, v91
	v_or_b32_e32 v180, s5, v89
	v_or_b32_e32 v181, s5, v90
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s5, s4, s42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_add_nc_u32_e32 v182, v135, v179
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[179:180], null, v180, s33, v[81:82]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s5, s5, s33
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[175:176], v[183:184], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[177:178], v[183:184], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[175:176], v[185:186], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[177:178], v[185:186], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[175:176], v[187:188], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[177:178], v[187:188], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[175:176], v[189:190], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[189:190], v[9:16] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[175:178], v160 offset1:8
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[183:184], null, v181, s33, v[81:82]
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v184, 0x80000000, v182, vcc_lo
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_b128 v[179:182], v179, s[12:15], 0 offen
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[175:176], v[77:78], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[177:178], v[77:78], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[175:176], v[79:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[177:178], v[79:80], v[41:48] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_b128 v[77:80], v183, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_b64 v[183:184], v184, s[24:27], 0 offen
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[33:40], v[175:176], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[177:178], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[175:176], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[75:76], v[9:16] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(1)
	v_perm_b32 v74, v77, v179, 0x5010400
	v_perm_b32 v75, v77, v179, 0x7030602
	v_perm_b32 v76, v78, v180, 0x5010400
	v_perm_b32 v77, v78, v180, 0x7030602
	v_perm_b32 v78, v79, v181, 0x5010400
	v_lshrrev_b32_e32 v176, 8, v74
	v_perm_b32 v79, v79, v181, 0x7030602
	v_and_b16 v73.l, 0xff, v74.l
	v_lshrrev_b32_e32 v177, 24, v74
	v_and_b16 v73.h, 0xff, v74.h
	v_lshrrev_b32_e32 v178, 8, v75
	v_lshrrev_b32_e32 v179, 24, v75
	v_and_b16 v74.h, 0xff, v75.h
	v_lshrrev_b32_e32 v180, 8, v76
	v_lshrrev_b32_e32 v181, 24, v76
	v_and_b16 v75.h, 0xff, v76.h
	v_lshlrev_b16 v76.h, 8, v176.l
	v_and_b16 v74.l, 0xff, v75.l
	v_and_b16 v75.l, 0xff, v76.l
	v_lshrrev_b32_e32 v176, 24, v77
	v_perm_b32 v175, v80, v182, 0x5010400
	v_or_b16 v199.l, v73.l, v76.h
	v_lshlrev_b16 v76.h, 8, v177.l
	v_perm_b32 v80, v80, v182, 0x7030602
	v_lshrrev_b32_e32 v182, 8, v77
	v_and_b16 v76.l, 0xff, v77.l
	v_and_b16 v73.l, 0xff, v77.h
	v_or_b16 v199.h, v73.h, v76.h
	v_lshlrev_b16 v73.h, 8, v178.l
	v_lshrrev_b32_e32 v77, 8, v78
	v_lshrrev_b32_e32 v177, 24, v78
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_store_b64 v142, v[183:184]
	s_waitcnt lgkmcnt(0)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_or_b16 v200.l, v74.l, v73.h
	v_lshlrev_b16 v74.l, 8, v179.l
	v_and_b16 v73.h, 0xff, v78.l
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_or_b16 v200.h, v74.h, v74.l
	v_lshlrev_b16 v74.h, 8, v180.l
	v_and_b16 v74.l, 0xff, v78.h
	v_lshrrev_b32_e32 v78, 8, v79
	v_or_b16 v201.l, v75.l, v74.h
	v_lshlrev_b16 v74.h, 8, v181.l
	v_lshlrev_b16 v75.l, 8, v182.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v201.h, v75.h, v74.h
	v_lshlrev_b16 v75.h, 8, v176.l
	v_and_b16 v74.h, 0xff, v79.l
	v_or_b16 v202.l, v76.l, v75.l
	v_lshrrev_b32_e32 v76, 24, v79
	v_and_b16 v75.l, 0xff, v79.h
	v_or_b16 v202.h, v73.l, v75.h
	v_lshlrev_b16 v73.l, 8, v77.l
	v_lshrrev_b32_e32 v79, 8, v175
	v_lshrrev_b32_e32 v77, 24, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v203.l, v73.h, v73.l
	v_lshlrev_b16 v73.h, 8, v177.l
	v_and_b16 v73.l, 0xff, v175.l
	v_or_b16 v203.h, v74.l, v73.h
	v_lshlrev_b16 v74.l, 8, v78.l
	v_lshrrev_b32_e32 v78, 8, v80
	v_and_b16 v73.h, 0xff, v175.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v204.l, v74.h, v74.l
	v_lshlrev_b16 v74.l, 8, v76.l
	v_lshrrev_b32_e32 v76, 24, v80
	v_lshlrev_b16 v74.h, 8, v77.l
	v_or_b16 v204.h, v75.l, v74.l
	v_lshlrev_b16 v74.l, 8, v79.l
	v_lshlrev_b16 v75.l, 8, v78.l
	v_lshlrev_b16 v75.h, 8, v76.l
	v_or_b16 v205.h, v73.h, v74.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v205.l, v73.l, v74.l
	v_and_b16 v73.l, 0xff, v80.l
	v_and_b16 v74.l, 0xff, v80.h
	v_or_b16 v206.l, v73.l, v75.l
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v206.h, v74.l, v75.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_2addr_stride64_b64 v[175:178], v143 offset1:1
	ds_load_2addr_stride64_b64 v[179:182], v143 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[183:186], v144 offset1:1
	ds_load_2addr_stride64_b64 v[187:190], v144 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[191:194], v146 offset1:1
	ds_load_2addr_stride64_b64 v[195:198], v146 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v148 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v148 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v150, v199
	ds_store_b16_d16_hi v150, v199 offset:32
	ds_store_b16 v150, v200 offset:64
	ds_store_b16_d16_hi v150, v200 offset:96
	ds_store_b16 v152, v201
	ds_store_b16_d16_hi v152, v201 offset:32
	ds_store_b16 v152, v202 offset:64
	ds_store_b16_d16_hi v152, v202 offset:96
	ds_store_b16 v154, v203
	ds_store_b16_d16_hi v154, v203 offset:32
	ds_store_b16 v154, v204 offset:64
	ds_store_b16_d16_hi v154, v204 offset:96
	ds_store_b16 v155, v205
	ds_store_b16_d16_hi v155, v205 offset:32
	ds_store_b16 v155, v206 offset:64
	ds_store_b16_d16_hi v155, v206 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[199:202], v156 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[199:200], v[175:176], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[201:202], v[175:176], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[199:200], v[177:178], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[201:202], v[177:178], v[41:48] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[175:178], v157 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[33:40], v[199:200], v[179:180], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[201:202], v[179:180], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[199:200], v[181:182], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[201:202], v[181:182], v[9:16] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v179, s4, v92, 1
	v_add_lshl_u32 v180, s4, v93, 1
	v_add_lshl_u32 v181, s4, v94, 1
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[175:176], v[183:184], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[177:178], v[183:184], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[175:176], v[185:186], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[177:178], v[185:186], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[175:176], v[187:188], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[177:178], v[187:188], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[175:176], v[189:190], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[189:190], v[9:16] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[175:178], v158 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[175:176], v[191:192], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[175:176], v[193:194], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[175:176], v[195:196], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[175:176], v[197:198], v[17:24] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v175, s4, v95, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v176, v126, s5, 1
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[57:64], v[177:178], v[191:192], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[177:178], v[193:194], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[177:178], v[195:196], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[197:198], v[9:16] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v177, 0x80000000, v179, s0
	v_cndmask_b32_e64 v178, 0x80000000, v180, s1
	v_cndmask_b32_e64 v179, 0x80000000, v181, s2
	v_cndmask_b32_e64 v175, 0x80000000, v175, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v180, v176, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v181, v177, s[28:31], 0 offen
	buffer_load_u16 v182, v178, s[28:31], 0 offen
	buffer_load_u16 v179, v179, s[28:31], 0 offen
	buffer_load_u16 v183, v175, s[28:31], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[175:178], v160 offset1:8
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s4, s40
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[175:176], v[77:78], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[175:176], v[79:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[175:176], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[175:176], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[75:76], v[9:16] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[57:64], v[177:178], v[77:78], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[177:178], v[79:80], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[177:178], v[73:74], v[25:32] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v73, v9
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v74, v10
	v_cvt_f32_i32_e32 v75, v11
	v_cvt_f32_i32_e32 v76, v12
	v_cvt_f32_i32_e32 v77, v13
	v_cvt_f32_i32_e32 v78, v14
	v_cvt_f32_i32_e32 v79, v15
	v_cvt_f32_i32_e32 v80, v16
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v9, 16, v180
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v176, 16, v182
	v_lshlrev_b32_e32 v175, 16, v181
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v167, v9
	s_waitcnt lgkmcnt(0)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v50, v50, v176 :: v_dual_mul_f32 v67, v67, v175
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v52, v52, v176 :: v_dual_lshlrev_b32 v177, 16, v179
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v49, v49, v176 :: v_dual_lshlrev_b32 v178, 16, v183
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_barrier
	ds_load_b128 v[9:12], v169
	ds_load_b128 v[13:16], v169 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v34, v34, v177 :: v_dual_mul_f32 v179, v17, v178
	v_dual_mul_f32 v35, v35, v177 :: v_dual_mul_f32 v180, v18, v178
	v_dual_mul_f32 v36, v36, v177 :: v_dual_mul_f32 v181, v19, v178
	v_dual_mul_f32 v182, v20, v178 :: v_dual_mul_f32 v69, v69, v175
	v_dual_mul_f32 v38, v38, v177 :: v_dual_mul_f32 v183, v21, v178
	v_dual_mul_f32 v39, v39, v177 :: v_dual_mul_f32 v184, v22, v178
	v_dual_mul_f32 v40, v40, v177 :: v_dual_mul_f32 v185, v23, v178
	v_dual_mul_f32 v186, v24, v178 :: v_dual_mul_f32 v57, v57, v175
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[17:20], v169 offset:512
	ds_load_b128 v[21:24], v169 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v65, v65, v175
	v_dual_mul_f32 v66, v66, v175 :: v_dual_mul_f32 v51, v51, v176
	v_dual_mul_f32 v68, v68, v175 :: v_dual_mul_f32 v33, v33, v177
	v_dual_mul_f32 v70, v70, v175 :: v_dual_mul_f32 v53, v53, v176
	v_dual_mul_f32 v71, v71, v175 :: v_dual_mul_f32 v54, v54, v176
	v_dual_mul_f32 v72, v72, v175 :: v_dual_mul_f32 v55, v55, v176
	v_dual_mul_f32 v56, v56, v176 :: v_dual_mul_f32 v37, v37, v177
	v_dual_mul_f32 v58, v58, v175 :: v_dual_mul_f32 v41, v41, v176
	v_dual_mul_f32 v59, v59, v175 :: v_dual_mul_f32 v42, v42, v176
	v_dual_mul_f32 v60, v60, v175 :: v_dual_mul_f32 v43, v43, v176
	v_dual_mul_f32 v61, v61, v175 :: v_dual_mul_f32 v44, v44, v176
	v_dual_mul_f32 v62, v62, v175 :: v_dual_mul_f32 v45, v45, v176
	v_dual_mul_f32 v63, v63, v175 :: v_dual_mul_f32 v46, v46, v176
	v_dual_mul_f32 v64, v64, v175 :: v_dual_mul_f32 v47, v47, v176
	v_dual_mul_f32 v48, v48, v176 :: v_dual_mul_f32 v25, v25, v177
	v_dual_mul_f32 v26, v26, v177 :: v_dual_mul_f32 v73, v73, v178
	v_dual_mul_f32 v27, v27, v177 :: v_dual_mul_f32 v74, v74, v178
	v_dual_mul_f32 v28, v28, v177 :: v_dual_mul_f32 v75, v75, v178
	v_dual_mul_f32 v29, v29, v177 :: v_dual_mul_f32 v76, v76, v178
	v_dual_mul_f32 v30, v30, v177 :: v_dual_mul_f32 v77, v77, v178
	v_dual_mul_f32 v31, v31, v177 :: v_dual_mul_f32 v78, v78, v178
	v_dual_mul_f32 v32, v32, v177 :: v_dual_mul_f32 v79, v79, v178
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v80, v80, v178 :: v_dual_fmac_f32 v173, v67, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v88, v65, v9 :: v_dual_fmac_f32 v147, v50, v10
	v_dual_fmac_f32 v174, v66, v10 :: v_dual_fmac_f32 v149, v49, v9
	v_dual_fmac_f32 v172, v68, v12 :: v_dual_fmac_f32 v145, v51, v11
	v_dual_fmac_f32 v141, v52, v12 :: v_dual_fmac_f32 v124, v35, v11
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v127, v33, v9 :: v_dual_fmac_f32 v170, v70, v14
	v_dual_fmac_f32 v125, v34, v10 :: v_dual_fmac_f32 v110, v179, v9
	v_dual_fmac_f32 v123, v36, v12 :: v_dual_fmac_f32 v108, v181, v11
	v_dual_fmac_f32 v109, v180, v10 :: v_dual_fmac_f32 v168, v71, v15
	v_dual_fmac_f32 v107, v182, v12 :: v_dual_fmac_f32 v140, v53, v13
	v_dual_fmac_f32 v171, v69, v13 :: v_dual_fmac_f32 v166, v72, v16
	v_dual_fmac_f32 v139, v54, v14 :: v_dual_fmac_f32 v138, v55, v15
	v_dual_fmac_f32 v137, v56, v16 :: v_dual_fmac_f32 v122, v37, v13
	v_dual_fmac_f32 v121, v38, v14 :: v_dual_fmac_f32 v120, v39, v15
	v_dual_fmac_f32 v119, v40, v16 :: v_dual_fmac_f32 v106, v183, v13
	v_dual_fmac_f32 v105, v184, v14 :: v_dual_fmac_f32 v104, v185, v15
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v103, v186, v16 :: v_dual_fmac_f32 v136, v41, v17
	v_dual_fmac_f32 v165, v57, v17 :: v_dual_fmac_f32 v164, v58, v18
	v_dual_fmac_f32 v163, v59, v19 :: v_dual_fmac_f32 v162, v60, v20
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v161, v61, v21 :: v_dual_fmac_f32 v134, v42, v18
	v_dual_fmac_f32 v159, v62, v22 :: v_dual_fmac_f32 v132, v44, v20
	v_dual_fmac_f32 v153, v63, v23 :: v_dual_fmac_f32 v130, v46, v22
	v_dual_fmac_f32 v151, v64, v24 :: v_dual_fmac_f32 v118, v25, v17
	v_dual_fmac_f32 v133, v43, v19 :: v_dual_fmac_f32 v128, v48, v24
	v_dual_fmac_f32 v131, v45, v21 :: v_dual_fmac_f32 v116, v27, v19
	v_dual_fmac_f32 v129, v47, v23 :: v_dual_fmac_f32 v114, v29, v21
	v_dual_fmac_f32 v117, v26, v18 :: v_dual_fmac_f32 v112, v31, v23
	v_dual_fmac_f32 v115, v28, v20 :: v_dual_fmac_f32 v102, v73, v17
	v_dual_fmac_f32 v113, v30, v22 :: v_dual_fmac_f32 v100, v75, v19
	v_dual_fmac_f32 v111, v32, v24 :: v_dual_fmac_f32 v98, v77, v21
	v_dual_fmac_f32 v101, v74, v18 :: v_dual_fmac_f32 v96, v79, v23
	v_fmac_f32_e32 v99, v76, v20
	v_dual_fmac_f32 v97, v78, v22 :: v_dual_fmac_f32 v82, v80, v24
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v37, v122, v122 :: v_dual_max_f32 v38, v121, v121
	v_max_f32_e32 v39, v120, v120
	v_max_f32_e32 v43, v115, v115
	v_dual_max_f32 v1, v88, v88 :: v_dual_max_f32 v2, v174, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v40, v118, v118
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v45, 0, v39
	v_dual_max_f32 v42, v116, v116 :: v_dual_max_f32 v39, v119, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v78, 0, v40
	v_max_f32_e32 v40, v113, v113
	v_dual_max_f32 v41, v117, v117 :: v_dual_max_f32 v80, 0, v42
	v_max_f32_e32 v81, 0, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v42, v111, v111 :: v_dual_max_f32 v89, 0, v40
	v_dual_max_f32 v40, v108, v108 :: v_dual_max_f32 v79, 0, v41
	v_max_f32_e32 v41, v112, v112
	v_max_f32_e32 v71, 0, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v43, v110, v110 :: v_dual_max_f32 v94, 0, v40
	v_dual_max_f32 v39, v114, v114 :: v_dual_max_f32 v40, v103, v103
	v_dual_max_f32 v3, v173, v173 :: v_dual_max_f32 v4, v172, v172
	v_max_f32_e32 v92, 0, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v88, 0, v39 :: v_dual_max_f32 v39, v109, v109
	v_dual_max_f32 v90, 0, v41 :: v_dual_max_f32 v41, v107, v107
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_max_f32_e32 v93, 0, v39
	v_max_f32_e32 v39, v104, v104
	v_max_f32_e32 v43, v105, v105
	v_max_f32_e32 v91, 0, v42
	v_dual_max_f32 v42, v106, v106 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, v171, v171
	v_max_f32_e32 v6, v170, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_max_f32 v105, 0, v42 :: v_dual_max_f32 v42, v101, v101
	v_dual_max_f32 v101, 0, v40 :: v_dual_mul_f32 v50, v2, v2
	v_dual_max_f32 v40, v98, v98 :: v_dual_max_f32 v7, v168, v168
	v_max_f32_e32 v8, v166, v166
	v_dual_max_f32 v103, 0, v42 :: v_dual_max_f32 v42, v96, v96
	v_dual_max_f32 v9, v165, v165 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v15, v153, v153 :: v_dual_max_f32 v16, v151, v151
	v_dual_max_f32 v17, v149, v149 :: v_dual_max_f32 v18, v147, v147
	v_max_f32_e32 v19, v145, v145
	v_dual_max_f32 v25, v136, v136 :: v_dual_max_f32 v26, v134, v134
	v_dual_max_f32 v27, v133, v133 :: v_dual_max_f32 v28, v132, v132
	v_max_f32_e32 v29, v131, v131
	v_dual_max_f32 v106, 0, v43 :: v_dual_max_f32 v43, v100, v100
	v_dual_max_f32 v98, 0, v42 :: v_dual_max_f32 v95, 0, v41
	v_max_f32_e32 v100, 0, v39
	v_dual_max_f32 v39, v99, v99 :: v_dual_mul_f32 v54, v4, v4
	v_max_f32_e32 v41, v102, v102
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v10, v164, v164
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v12, v162, v162
	v_max_f32_e32 v11, v163, v163
	v_dual_max_f32 v13, v161, v161 :: v_dual_max_f32 v14, v159, v159
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v17, 0, v17
	v_max_f32_e32 v22, v139, v139
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v20, v141, v141
	v_dual_max_f32 v21, v140, v140 :: v_dual_max_f32 v24, v137, v137
	v_max_f32_e32 v23, v138, v138
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v30, v130, v130 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v32, v128, v128 :: v_dual_max_f32 v31, v129, v129
	v_dual_max_f32 v33, v127, v127 :: v_dual_max_f32 v34, v125, v125
	v_dual_max_f32 v35, v124, v124 :: v_dual_max_f32 v36, v123, v123
	v_dual_max_f32 v104, 0, v43 :: v_dual_max_f32 v43, v82, v82
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v60, v7, v7
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_max_f32_e32 v82, 0, v39
	v_max_f32_e32 v102, 0, v41
	v_dual_max_f32 v41, v97, v97 :: v_dual_mul_f32 v56, v6, v6
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_max_f32_e32 v18, 0, v18
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v25, 0, v25
	v_max_f32_e32 v28, 0, v28
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v33, 0, v33
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v35, 0, v35
	v_max_f32_e32 v36, 0, v36
	v_dual_max_f32 v96, 0, v40 :: v_dual_max_f32 v97, 0, v41
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v68, v12, v12 :: v_dual_max_f32 v99, 0, v43
	v_mul_f32_e32 v64, v9, v9
	v_dual_mul_f32 v47, v1, v1 :: v_dual_mul_f32 v76, v15, v15
	v_dual_mul_f32 v53, v3, v3 :: v_dual_mul_f32 v72, v13, v13
	v_dual_mul_f32 v55, v5, v5 :: v_dual_mul_f32 v74, v18, v18
	v_dual_mul_f32 v61, v8, v8 :: v_dual_mul_f32 v70, v19, v19
	v_dual_mul_f32 v65, v10, v10 :: v_dual_mul_f32 v66, v21, v21
	v_dual_mul_f32 v67, v11, v11 :: v_dual_mul_f32 v58, v25, v25
	v_dual_mul_f32 v73, v14, v14 :: v_dual_mul_f32 v62, v23, v23
	v_dual_mul_f32 v77, v16, v16 :: v_dual_mul_f32 v52, v27, v27
	v_dual_mul_f32 v75, v17, v17 :: v_dual_mul_f32 v48, v30, v30
	v_dual_mul_f32 v69, v20, v20 :: v_dual_mul_f32 v46, v31, v31
	v_dual_mul_f32 v63, v22, v22 :: v_dual_mul_f32 v44, v32, v32
	v_dual_mul_f32 v59, v24, v24 :: v_dual_mul_f32 v42, v34, v34
	v_dual_mul_f32 v57, v26, v26 :: v_dual_mul_f32 v40, v36, v36
	v_dual_mul_f32 v51, v28, v28 :: v_dual_mul_f32 v38, v38, v38
	v_dual_mul_f32 v49, v29, v29 :: v_dual_mul_f32 v36, v71, v71
	v_dual_mul_f32 v43, v33, v33 :: v_dual_mul_f32 v34, v79, v79
	v_dual_mul_f32 v41, v35, v35 :: v_dual_mul_f32 v32, v81, v81
	v_dual_mul_f32 v39, v37, v37 :: v_dual_mul_f32 v28, v91, v91
	v_dual_mul_f32 v37, v45, v45 :: v_dual_mul_f32 v24, v95, v95
	v_dual_mul_f32 v35, v78, v78 :: v_dual_mul_f32 v30, v89, v89
	v_dual_mul_f32 v33, v80, v80 :: v_dual_mul_f32 v26, v93, v93
	v_dual_mul_f32 v31, v88, v88 :: v_dual_mul_f32 v22, v106, v106
	v_dual_mul_f32 v29, v90, v90 :: v_dual_mul_f32 v20, v101, v101
	v_dual_mul_f32 v27, v92, v92 :: v_dual_mul_f32 v18, v103, v103
	v_dual_mul_f32 v25, v94, v94 :: v_dual_mul_f32 v16, v104, v104
	v_dual_mul_f32 v23, v105, v105 :: v_dual_mul_f32 v10, v96, v96
	v_dual_mul_f32 v21, v100, v100 :: v_dual_mul_f32 v8, v98, v98
	v_mul_f32_e32 v19, v102, v102
	v_mul_f32_e32 v11, v82, v82
	v_mul_f32_e32 v9, v97, v97
	v_mul_f32_e32 v7, v99, v99
	v_mov_b32_e32 v1, v87
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v50, v50 :: v_dual_max_f32 v3, v47, v47
	v_max3_f32 v4, v54, v55, v56
	v_max3_f32 v5, v65, v67, v68
	v_max3_f32 v6, v72, v73, v76
	v_max_f32_e32 v12, v75, v75
	v_max_f32_e32 v2, v3, v2
	v_max_f32_e32 v3, v74, v74
	v_max3_f32 v15, v57, v52, v51
	v_max3_f32 v5, v5, v6, v77
	v_max_f32_e32 v6, v43, v43
	v_max3_f32 v17, v49, v48, v46
	v_max_f32_e32 v3, v12, v3
	v_max3_f32 v2, v2, v53, v4
	v_max_f32_e32 v4, v42, v42
	v_max3_f32 v12, v69, v66, v63
	v_max3_f32 v45, v34, v33, v32
	v_max3_f32 v71, v31, v30, v29
	v_max3_f32 v13, v60, v61, v64
	v_max3_f32 v14, v62, v59, v58
	v_max3_f32 v3, v3, v70, v12
	v_max3_f32 v12, v15, v17, v44
	v_max_f32_e32 v17, v26, v26
	v_max_f32_e32 v4, v6, v4
	v_max3_f32 v6, v40, v39, v38
	v_max3_f32 v15, v37, v36, v35
	v_max3_f32 v2, v2, v13, v5
	v_max3_f32 v3, v3, v14, v12
	v_max3_f32 v13, v18, v16, v11
	v_max3_f32 v4, v4, v41, v6
	v_max3_f32 v6, v45, v71, v28
	v_max_f32_e32 v45, v27, v27
	v_max3_f32 v14, v10, v9, v8
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v12, v21, v20, v19
	v_max3_f32 v4, v4, v15, v6
	v_max_f32_e32 v5, v45, v17
	v_max3_f32 v6, v24, v23, v22
	v_max3_f32 v13, v13, v14, v7
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v15, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v45, 8, v0
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, v25, v6
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v14, v15, v15 :: v_dual_max_f32 v15, v17, v17
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, v12, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v6, v6, v6
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v13, 5, v86
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v14 :: v_dual_max_f32 v4, v4, v15
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v14, v86, 9, 0
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v6 :: v_dual_and_b32 v15, 0x60, v0
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v17, 0x80, v0
	v_and_or_b32 v1, 0x680, v1, v13
	s_barrier
	v_xor_b32_e32 v78, v13, v15
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v12, 4, v0
	v_lshrrev_b32_e32 v79, 3, v17
	v_xor_b32_e32 v1, v1, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v6
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v71, v12, 2, v14
	v_lshlrev_b32_e32 v14, 1, v17
	v_lshl_add_u32 v80, v12, 6, 0
	v_add_nc_u32_e32 v17, 0, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v71, v45, 4, v71
	v_add3_u32 v1, v80, v79, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v6, v71, v14, v78
	ds_store_b128 v6, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v6, v2
	v_dual_mov_b32 v71, v3 :: v_dual_max_f32 v2, v2, v2
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v71, v71 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v6, v6, v6
	v_max_f32_e32 v3, v3, v3
	v_dual_max_f32 v4, v4, v4 :: v_dual_lshlrev_b32 v45, 3, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, v1, v5 :: v_dual_max_f32 v2, v2, v6
	v_dual_max_f32 v5, v71, v71 :: v_dual_max_f32 v4, v78, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v71, v2
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v5 :: v_dual_mov_b32 v78, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v71, v71, v71
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v6
	v_max_f32_e32 v6, v78, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v2, v2, v71 :: v_dual_max_f32 v5, v5, v5
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v71, v1 :: v_dual_max_f32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v78, v2 :: v_dual_max_f32 v3, v3, v5
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v78, v78, v78 :: v_dual_max_f32 v71, v71, v71
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v2, v2, v78 :: v_dual_max_f32 v1, v1, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v5, v5, v5
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v71, 1, v15
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v6 :: v_dual_max_f32 v3, v3, v5
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v5, 5, v12
	v_lshl_add_u32 v12, v86, 4, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v6, v17, v71, v45
	v_add3_u32 v5, v12, v5, v45
	ds_store_b128 v6, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp39:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v12, 4, v84
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[78:81], v5
.Ltmp41:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 48, v12
	v_or_b32_e32 v71, 32, v12
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v78, v78
	v_max_f32_e32 v3, v80, v80
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v78, 16, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v6, 0x2b8cbccc, v1
	v_max_f32_e32 v80, 0x2b8cbccc, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v17, null, 0x40e00000, 0x40e00000, v6
	v_div_scale_f32 v82, vcc_lo, v6, 0x40e00000, v6
	v_div_scale_f32 v88, null, 0x40e00000, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v45, v17
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v3, -v17, v45, 1.0
	v_fmac_f32_e32 v45, v3, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v90, v82, v45 :: v_dual_and_b32 v5, 63, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_add_co_u32 v3, s0, s34, v4
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	v_add_co_u32 v86, s0, s34, v71
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v71, v79, v79
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v87, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[38:39], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v3, -v17, v90, v82
	v_max_f32_e32 v71, 0x2b8cbccc, v71
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[86:87]
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s34, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v90, v3, v45
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v78
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v91, null, 0x40e00000, 0x40e00000, v71
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[86:87]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v87.h, 0
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_max_f32_e32 v79, v81, v81
	v_fma_f32 v81, -v88, v89, 1.0
	v_fma_f32 v17, -v17, v90, v82
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_dual_max_f32 v78, 0x2b8cbccc, v79 :: v_dual_fmac_f32 v89, v81, v89
	v_rcp_f32_e32 v79, v91
	v_div_scale_f32 v81, s6, v80, 0x40e00000, v80
	v_div_scale_f32 v82, null, 0x40e00000, 0x40e00000, v78
	v_div_fmas_f32 v17, v17, v45, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v45, v81, v89
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v90, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v91, v79, 1.0
	v_div_fixup_f32 v6, v17, 0x40e00000, v6
	v_fma_f32 v17, -v88, v45, v81
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s7, v71, 0x40e00000, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v17, v89
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v17.l, v6.h
	v_mov_b16_e32 v17.h, v87.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v92, -v82, v90, 1.0
	v_mul_f32_e32 v93, v86, v79
	v_fma_f32 v3, -v88, v45, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v17
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s8, v78, 0x40e00000, v78
	v_fma_f32 v17, -v91, v93, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v6, v6, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v45, v3, v89, v45
	v_mul_f32_e32 v81, v92, v90
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v93, v17, v79 :: v_dual_and_b32 v88, 0xffff0000, v6
	v_div_fixup_f32 v45, v45, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v82, v81, v92
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v12
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v80, -v91, v93, v86
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v86, null, v88, v88, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v81, v17, v90
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v87.l, v45.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v17, v80, v79, v93
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v79, v86
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v80, -v82, v81, v92
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v17, v17, 0x40e00000, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v92, null, v88, v88, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v71, v80, v90, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v80, null, v88, v88, v50
	v_fma_f32 v82, -v86, v79, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v81, 1, v87
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v71, v71, 0x40e00000, v78
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[36:37], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v78.l, v17.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v82, v79
	v_div_scale_f32 v82, vcc_lo, v47, v88, v47
	v_rcp_f32_e32 v89, v80
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v78.h, v87.h
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v45, v81, 0x7fff
	v_mov_b16_e32 v87.l, v71.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v81, v82, v79 :: v_dual_and_b32 v4, 1, v78
	v_div_scale_f32 v90, null, v88, v88, v53
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v78, 1, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v86, v81, v82
	v_fma_f32 v45, -v80, v89, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v93, s8, v50, v88, v50
	v_fmac_f32_e32 v81, v87, v79
	v_rcp_f32_e32 v87, v92
	v_fmac_f32_e32 v89, v45, v89
	v_div_scale_f32 v97, null, v88, v88, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v86, v81, v82
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v17, v17, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v93, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v90, v91, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v71, v78, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v82, v79, v81
	v_fma_f32 v96, -v92, v87, 1.0
	v_fma_f32 v86, -v80, v94, v93
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s9, v53, v88, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v96, v87
	v_rcp_f32_e32 v82, v97
	v_div_scale_f32 v96, null, v88, v88, v56
	v_dual_fmac_f32 v94, v86, v89 :: v_dual_mul_f32 v81, v95, v91
	v_div_scale_f32 v86, s10, v54, v88, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v98, v96
	v_div_fixup_f32 v47, v79, v88, v47
	v_fma_f32 v79, -v80, v94, v93
	v_fma_f32 v80, -v90, v81, v95
	v_mul_f32_e32 v93, v86, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v97, v82, 1.0
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v78, 0xffff0000, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v89, v94
	v_fmac_f32_e32 v81, v80, v91
	v_fma_f32 v80, -v92, v93, v86
	v_fmac_f32_e32 v82, v99, v82
	v_div_scale_f32 v89, s8, v55, v88, v55
	v_fma_f32 v94, -v96, v98, 1.0
	v_div_fixup_f32 v50, v79, v88, v50
	v_fma_f32 v79, -v90, v81, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v93, v80, v87 :: v_dual_mul_f32 v80, v89, v82
	v_fmac_f32_e32 v98, v94, v98
	v_div_scale_f32 v94, null, v88, v88, v60
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, s11, v56, v88, v56
	v_div_fmas_f32 v79, v79, v91, v81
	v_fma_f32 v81, -v92, v93, v86
	v_fma_f32 v86, -v97, v80, v89
	v_rcp_f32_e32 v91, v94
	v_div_scale_f32 v95, null, v88, v88, v61
	v_mul_f32_e32 v92, v90, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v86, v82
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v86, v95
	v_div_fmas_f32 v81, v81, v87, v93
	v_fma_f32 v87, -v96, v92, v90
	v_div_fixup_f32 v53, v79, v88, v53
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v94, v91, 1.0
	v_fma_f32 v79, -v97, v80, v89
	v_div_fixup_f32 v54, v81, v88, v54
	v_fmac_f32_e32 v92, v87, v98
	v_div_scale_f32 v81, s9, v60, v88, v60
	v_fmac_f32_e32 v91, v93, v91
	v_fma_f32 v87, -v95, v86, 1.0
	v_div_scale_f32 v89, null, v88, v88, v64
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v45, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v96, v92, v90
	v_mul_f32_e32 v82, v81, v91
	v_fmac_f32_e32 v86, v87, v86
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v90, s8, v61, v88, v61
	v_div_scale_f32 v93, null, v88, v88, v65
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v96, v90, v86
	v_div_fmas_f32 v80, v80, v98, v92
	v_fma_f32 v92, -v94, v82, v81
	v_rcp_f32_e32 v98, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v89, v87, 1.0
	v_div_fixup_f32 v55, v79, v88, v55
	v_fma_f32 v79, -v95, v96, v90
	v_fmac_f32_e32 v82, v92, v91
	v_div_scale_f32 v92, null, v88, v88, v67
	v_div_fixup_f32 v56, v80, v88, v56
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v80, s10, v64, v88, v64
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v93, v98, 1.0
	v_fma_f32 v81, -v94, v82, v81
	v_fmac_f32_e32 v96, v79, v86
	v_rcp_f32_e32 v94, v92
	s_mov_b32 vcc_lo, s9
	v_dual_mul_f32 v79, v80, v87 :: v_dual_fmac_f32 v98, v97, v98
	v_div_scale_f32 v97, s11, v65, v88, v65
	v_div_fmas_f32 v81, v81, v91, v82
	v_fma_f32 v82, -v95, v96, v90
	v_div_scale_f32 v99, null, v88, v88, v68
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v90, -v89, v79, v80
	v_mul_f32_e32 v91, v97, v98
	v_fma_f32 v95, -v92, v94, 1.0
	v_div_fmas_f32 v82, v82, v86, v96
	v_rcp_f32_e32 v86, v99
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v71, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v90, v87
	v_fma_f32 v90, -v93, v91, v97
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, s8, v67, v88, v67
	v_div_fixup_f32 v60, v81, v88, v60
	v_div_fixup_f32 v61, v82, v88, v61
	v_fma_f32 v80, -v89, v79, v80
	v_fmac_f32_e32 v91, v90, v98
	v_mul_f32_e32 v81, v95, v94
	v_fma_f32 v82, -v99, v86, 1.0
	v_div_scale_f32 v89, null, v88, v88, v72
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, s9, v68, v88, v68
	v_div_fmas_f32 v79, v80, v87, v79
	v_fma_f32 v80, -v93, v91, v97
	v_fma_f32 v87, -v92, v81, v95
	v_fmac_f32_e32 v86, v82, v86
	v_rcp_f32_e32 v82, v89
	v_div_scale_f32 v93, null, v88, v88, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v87, v94
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v64, v79, v88, v64
	v_rcp_f32_e32 v87, v93
	v_div_fmas_f32 v80, v80, v98, v91
	v_mul_f32_e32 v91, v90, v86
	v_fma_f32 v79, -v92, v81, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v89, v82, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v65, v80, v88, v65
	v_fma_f32 v80, -v99, v91, v90
	v_div_scale_f32 v92, s10, v72, v88, v72
	v_fmac_f32_e32 v82, v96, v82
	v_fma_f32 v95, -v93, v87, 1.0
	v_div_scale_f32 v96, null, v88, v88, v76
	v_div_fmas_f32 v79, v79, v94, v81
	v_fmac_f32_e32 v91, v80, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v95, v87
	v_rcp_f32_e32 v81, v96
	v_div_scale_f32 v95, null, v88, v88, v77
	v_mul_f32_e32 v80, v92, v82
	v_div_scale_f32 v94, s8, v73, v88, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v98, v95
	v_div_fixup_f32 v67, v79, v88, v67
	v_fma_f32 v79, -v99, v91, v90
	v_fma_f32 v90, -v89, v80, v92
	v_mul_f32_e32 v97, v94, v87
	v_fma_f32 v99, -v96, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fmas_f32 v79, v79, v86, v91
	v_fmac_f32_e32 v80, v90, v82
	v_fma_f32 v86, -v93, v97, v94
	v_fmac_f32_e32 v81, v99, v81
	v_div_scale_f32 v90, s9, v76, v88, v76
	v_fma_f32 v91, -v95, v98, 1.0
	v_div_fixup_f32 v68, v79, v88, v68
	v_fma_f32 v79, -v89, v80, v92
	v_fmac_f32_e32 v97, v86, v87
	v_mul_f32_e32 v86, v90, v81
	v_fmac_f32_e32 v98, v91, v98
	v_div_scale_f32 v91, null, v78, v78, v75
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, s11, v77, v88, v77
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v93, v97, v94
	v_fma_f32 v82, -v96, v86, v90
	v_rcp_f32_e32 v92, v91
	v_div_scale_f32 v94, null, v78, v78, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v93, v89, v98 :: v_dual_fmac_f32 v86, v82, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v94
	v_div_fmas_f32 v80, v80, v87, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v95, v93, v89
	v_div_fixup_f32 v72, v79, v88, v72
	v_fma_f32 v97, -v91, v92, 1.0
	v_fma_f32 v79, -v96, v86, v90
	v_div_fixup_f32 v73, v80, v88, v73
	v_fmac_f32_e32 v93, v87, v98
	v_div_scale_f32 v80, s8, v75, v78, v75
	v_fmac_f32_e32 v92, v97, v92
	v_fma_f32 v87, -v94, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, null, v78, v78, v70
	v_div_fmas_f32 v79, v79, v81, v86
	v_fma_f32 v81, -v95, v93, v89
	v_mul_f32_e32 v86, v80, v92
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v89, s9, v74, v78, v74
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v87, v90
	v_div_fmas_f32 v81, v81, v98, v93
	v_fma_f32 v93, -v91, v86, v80
	v_mul_f32_e32 v96, v89, v82
	v_div_fixup_f32 v76, v79, v88, v76
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v95, null, v78, v78, v69
	v_fmac_f32_e32 v86, v93, v92
	v_fma_f32 v79, -v94, v96, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v90, v87, 1.0
	v_rcp_f32_e32 v98, v95
	v_div_fixup_f32 v77, v81, v88, v77
	v_fma_f32 v80, -v91, v86, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v96, v79, v82 :: v_dual_fmac_f32 v87, v97, v87
	v_div_scale_f32 v97, null, v78, v78, v63
	v_div_fmas_f32 v80, v80, v92, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v94, v96, v89
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v81, s10, v70, v78, v70
	v_div_scale_f32 v88, null, v78, v78, v66
	v_div_fmas_f32 v82, v86, v82, v96
	v_rcp_f32_e32 v86, v97
	v_fma_f32 v93, -v95, v98, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v91, v88
	v_div_fixup_f32 v75, v80, v78, v75
	v_div_fixup_f32 v74, v82, v78, v74
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v98, v93, v98
	v_div_scale_f32 v93, s11, v69, v78, v69
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v97, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v93, v98
	v_fma_f32 v94, -v88, v91, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v86, v82, v86 :: v_dual_mul_f32 v79, v81, v87
	v_fma_f32 v89, -v90, v79, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v89, v87
	v_fma_f32 v89, -v95, v92, v93
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, s8, v66, v78, v66
	v_fma_f32 v80, -v90, v79, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v92, v89, v98
	v_div_scale_f32 v89, null, v78, v78, v62
	v_div_scale_f32 v90, s9, v63, v78, v63
	v_div_fmas_f32 v79, v80, v87, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v95, v92, v93
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v82, v89
	v_div_scale_f32 v93, null, v78, v78, v59
	v_div_fmas_f32 v80, v80, v98, v92
	v_mul_f32_e32 v92, v90, v86
	v_div_fixup_f32 v70, v79, v78, v70
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v69, v80, v78, v69
	v_fma_f32 v80, -v97, v92, v90
	v_mul_f32_e32 v81, v94, v91
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v89, v82, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v80, v86
	v_fma_f32 v87, -v88, v81, v94
	v_fmac_f32_e32 v82, v95, v82
	v_div_scale_f32 v95, null, v78, v78, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v87, v91
	v_rcp_f32_e32 v87, v93
	v_fma_f32 v79, -v88, v81, v94
	v_div_scale_f32 v88, s10, v62, v78, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v94, -v93, v87, 1.0
	v_mul_f32_e32 v80, v88, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v79, v79, v91, v81
	v_rcp_f32_e32 v81, v95
	v_div_scale_f32 v91, s8, v59, v78, v59
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v94, null, v78, v78, v57
	v_div_fixup_f32 v66, v79, v78, v66
	v_fma_f32 v79, -v97, v92, v90
	v_fma_f32 v90, -v89, v80, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v97, v94
	v_mul_f32_e32 v96, v91, v87
	v_fma_f32 v98, -v95, v81, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v86, v92
	v_fma_f32 v86, -v93, v96, v91
	v_fmac_f32_e32 v81, v98, v81
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v98, null, v78, v78, v44
	v_fma_f32 v92, -v94, v97, 1.0
	v_fmac_f32_e32 v80, v90, v82
	v_div_scale_f32 v90, s9, v58, v78, v58
	v_div_fixup_f32 v63, v79, v78, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v96, v86, v87 :: v_dual_fmac_f32 v97, v92, v97
	v_fma_f32 v79, -v89, v80, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v90, v81
	v_div_scale_f32 v89, null, v78, v78, v52
	v_div_scale_f32 v88, s11, v57, v78, v57
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v93, v96, v91
	v_fma_f32 v82, -v95, v86, v90
	v_rcp_f32_e32 v91, v89
	v_div_scale_f32 v93, null, v78, v78, v51
	v_mul_f32_e32 v92, v88, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v82, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v93
	v_div_fmas_f32 v80, v80, v87, v96
	v_fma_f32 v87, -v94, v92, v88
	v_div_fixup_f32 v62, v79, v78, v62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v89, v91, 1.0
	v_fma_f32 v79, -v95, v86, v90
	v_div_fixup_f32 v59, v80, v78, v59
	v_fmac_f32_e32 v92, v87, v97
	v_div_scale_f32 v80, s8, v52, v78, v52
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v87, -v93, v82, 1.0
	v_div_scale_f32 v90, null, v78, v78, v49
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v87, v82
	v_div_fmas_f32 v79, v79, v81, v86
	v_fma_f32 v81, -v94, v92, v88
	v_mul_f32_e32 v86, v80, v91
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v88, s9, v51, v78, v51
	v_div_scale_f32 v94, null, v78, v78, v48
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v95, v88, v82
	v_div_fmas_f32 v81, v81, v97, v92
	v_fma_f32 v92, -v89, v86, v80
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v90, v87, 1.0
	v_div_fixup_f32 v58, v79, v78, v58
	v_fma_f32 v79, -v93, v95, v88
	v_fmac_f32_e32 v86, v92, v91
	v_div_scale_f32 v92, null, v78, v78, v46
	v_div_fixup_f32 v57, v81, v78, v57
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v81, s10, v49, v78, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v94, v97, 1.0
	v_fmac_f32_e32 v95, v79, v82
	v_fma_f32 v80, -v89, v86, v80
	v_rcp_f32_e32 v89, v92
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v79, v81, v87
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s11, v48, v78, v48
	v_div_fmas_f32 v80, v80, v91, v86
	v_fma_f32 v86, -v93, v95, v88
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v90, v79, v81
	v_mul_f32_e32 v91, v96, v97
	v_fma_f32 v93, -v92, v89, 1.0
	v_div_fmas_f32 v82, v86, v82, v95
	v_rcp_f32_e32 v86, v98
	v_fmac_f32_e32 v79, v88, v87
	v_fma_f32 v88, -v94, v91, v96
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s8, v46, v78, v46
	v_div_fixup_f32 v52, v80, v78, v52
	v_div_fixup_f32 v51, v82, v78, v51
	v_fma_f32 v80, -v90, v79, v81
	v_fmac_f32_e32 v91, v88, v97
	v_mul_f32_e32 v81, v93, v89
	v_fma_f32 v82, -v98, v86, 1.0
	v_div_scale_f32 v88, null, v71, v71, v43
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, s9, v44, v78, v44
	v_div_fmas_f32 v79, v80, v87, v79
	v_fma_f32 v80, -v94, v91, v96
	v_fma_f32 v87, -v92, v81, v93
	v_fmac_f32_e32 v86, v82, v86
	v_rcp_f32_e32 v82, v88
	v_div_scale_f32 v94, null, v71, v71, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v87, v89
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v49, v79, v78, v49
	v_rcp_f32_e32 v87, v94
	v_div_fmas_f32 v80, v80, v97, v91
	v_mul_f32_e32 v91, v90, v86
	v_fma_f32 v79, -v92, v81, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v88, v82, 1.0
	v_div_scale_f32 v92, s10, v43, v71, v43
	v_div_fixup_f32 v48, v80, v78, v48
	v_fma_f32 v80, -v98, v91, v90
	v_fmac_f32_e32 v82, v95, v82
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v94, v87, 1.0
	v_div_scale_f32 v95, null, v71, v71, v41
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v91, v80, v86
	v_div_fmas_f32 v79, v79, v89, v81
	v_dual_mul_f32 v80, v92, v82 :: v_dual_fmac_f32 v87, v93, v87
	v_rcp_f32_e32 v81, v95
	v_div_scale_f32 v89, s8, v42, v71, v42
	v_div_scale_f32 v93, null, v71, v71, v40
	v_div_fixup_f32 v46, v79, v78, v46
	v_fma_f32 v79, -v98, v91, v90
	v_fma_f32 v90, -v88, v80, v92
	v_mul_f32_e32 v96, v89, v87
	v_rcp_f32_e32 v97, v93
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v95, v81, 1.0
	v_div_fmas_f32 v79, v79, v86, v91
	v_fmac_f32_e32 v80, v90, v82
	v_fma_f32 v86, -v94, v96, v89
	v_div_scale_f32 v90, s9, v41, v71, v41
	v_fmac_f32_e32 v81, v98, v81
	v_div_fixup_f32 v44, v79, v78, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v93, v97, 1.0
	v_fma_f32 v78, -v88, v80, v92
	v_fmac_f32_e32 v96, v86, v87
	v_div_scale_f32 v88, null, v71, v71, v39
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v79, v90, v81
	v_fmac_f32_e32 v97, v91, v97
	v_div_scale_f32 v86, s11, v40, v71, v40
	v_div_fmas_f32 v78, v78, v82, v80
	v_fma_f32 v80, -v94, v96, v89
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v82, -v95, v79, v90
	v_mul_f32_e32 v91, v86, v97
	v_div_scale_f32 v92, null, v71, v71, v38
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v79, v82, v81
	v_div_fmas_f32 v80, v80, v87, v96
	v_rcp_f32_e32 v82, v92
	v_fma_f32 v87, -v93, v91, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v89, 1.0
	v_div_fixup_f32 v43, v78, v71, v43
	v_div_fixup_f32 v42, v80, v71, v42
	v_fma_f32 v78, -v95, v79, v90
	v_fmac_f32_e32 v91, v87, v97
	v_fmac_f32_e32 v89, v94, v89
	v_div_scale_f32 v80, s8, v39, v71, v39
	v_div_scale_f32 v90, null, v71, v71, v37
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v92, v82, 1.0
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v93, v91, v86
	v_mul_f32_e32 v81, v80, v89
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v93, null, v71, v71, v36
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v87, s9, v38, v71, v38
	v_div_fmas_f32 v79, v79, v97, v91
	v_fma_f32 v91, -v88, v81, v80
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v94, v87, v82
	v_fma_f32 v95, -v90, v86, 1.0
	v_div_fixup_f32 v41, v78, v71, v41
	v_fmac_f32_e32 v81, v91, v89
	v_div_scale_f32 v91, null, v71, v71, v35
	v_div_fixup_f32 v40, v79, v71, v40
	v_fma_f32 v78, -v92, v94, v87
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v79, s10, v37, v71, v37
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v80, -v88, v81, v80
	v_rcp_f32_e32 v88, v91
	v_fmac_f32_e32 v94, v78, v82
	v_mul_f32_e32 v78, v79, v86
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s11, v36, v71, v36
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v97, null, v71, v71, v34
	v_div_fmas_f32 v80, v80, v89, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v87, -v90, v78, v79
	v_mul_f32_e32 v89, v95, v96
	v_fma_f32 v92, -v91, v88, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v39, v80, v71, v39
	v_div_fmas_f32 v81, v81, v82, v94
	v_fmac_f32_e32 v78, v87, v86
	v_rcp_f32_e32 v82, v97
	v_fma_f32 v87, -v93, v89, v95
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s8, v35, v71, v35
	v_fma_f32 v79, -v90, v78, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v87, v96
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v80, v92, v88
	v_div_fixup_f32 v38, v81, v71, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v97, v82, 1.0
	v_div_scale_f32 v87, null, v71, v71, v33
	v_div_fmas_f32 v78, v79, v86, v78
	v_fma_f32 v79, -v93, v89, v95
	v_fma_f32 v86, -v91, v80, v92
	v_div_scale_f32 v93, null, v71, v71, v32
	v_fmac_f32_e32 v82, v81, v82
	v_rcp_f32_e32 v81, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v86, v88
	v_rcp_f32_e32 v86, v93
	v_div_scale_f32 v90, s9, v34, v71, v34
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v37, v78, v71, v37
	v_div_fmas_f32 v79, v79, v96, v89
	v_mul_f32_e32 v89, v90, v82
	v_fma_f32 v78, -v91, v80, v92
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v87, v81, 1.0
	v_div_scale_f32 v91, s10, v33, v71, v33
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_fixup_f32 v36, v79, v71, v36
	v_fma_f32 v79, -v97, v89, v90
	v_fmac_f32_e32 v81, v94, v81
	v_div_scale_f32 v94, null, v71, v71, v31
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, null, v71, v71, v30
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v89, v79, v82
	v_div_fmas_f32 v78, v78, v88, v80
	v_mul_f32_e32 v79, v91, v81
	v_rcp_f32_e32 v80, v94
	v_div_scale_f32 v88, s8, v32, v71, v32
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v35, v78, v71, v35
	v_fma_f32 v78, -v97, v89, v90
	v_fma_f32 v90, -v87, v79, v91
	v_mul_f32_e32 v95, v88, v86
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v94, v80, 1.0
	v_div_fmas_f32 v78, v78, v82, v89
	v_fmac_f32_e32 v79, v90, v81
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v90, -v92, v96, 1.0
	v_fmac_f32_e32 v80, v97, v80
	v_div_scale_f32 v89, s9, v31, v71, v31
	v_div_fixup_f32 v34, v78, v71, v34
	v_fma_f32 v78, -v87, v79, v91
	v_fmac_f32_e32 v95, v82, v86
	v_fmac_f32_e32 v96, v90, v96
	v_div_scale_f32 v90, null, v71, v71, v29
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v82, v89, v80
	v_div_scale_f32 v87, s11, v30, v71, v30
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v93, v95, v88
	v_rcp_f32_e32 v88, v90
	v_fma_f32 v81, -v94, v82, v89
	v_mul_f32_e32 v91, v87, v96
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v33, v78, v71, v33
	v_div_fmas_f32 v79, v79, v86, v95
	v_fmac_f32_e32 v82, v81, v80
	v_fma_f32 v86, -v92, v91, v87
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v93, null, v71, v71, v28
	v_fma_f32 v95, -v90, v88, 1.0
	v_div_fixup_f32 v32, v79, v71, v32
	v_fma_f32 v78, -v94, v82, v89
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v79, s8, v29, v71, v29
	v_fmac_f32_e32 v88, v95, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v78, v78, v80, v82
	v_fma_f32 v80, -v92, v91, v87
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v81, v93
	v_mul_f32_e32 v82, v79, v88
	v_div_scale_f32 v87, s9, v28, v71, v28
	v_div_fmas_f32 v80, v80, v96, v91
	v_div_scale_f32 v96, null, v45, v45, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v90, v82, v79
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v94, null, v45, v45, v26
	v_rcp_f32_e32 v98, v96
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v82, v91, v88
	v_fma_f32 v86, -v93, v81, 1.0
	v_div_fixup_f32 v31, v78, v71, v31
	v_div_fixup_f32 v30, v80, v71, v30
	v_rcp_f32_e32 v80, v94
	v_fma_f32 v79, -v90, v82, v79
	v_div_scale_f32 v90, null, v45, v45, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v88, v82
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, s8, v26, v45, v26
	v_fma_f32 v95, -v94, v80, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v29, v79, v71, v29
	v_fma_f32 v79, -v96, v98, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v95, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v79, v98
	v_div_scale_f32 v79, s9, v24, v45, v24
	v_fmac_f32_e32 v81, v86, v81
	v_div_scale_f32 v86, null, v45, v45, v27
	v_mul_f32_e32 v97, v88, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v87, v81
	v_rcp_f32_e32 v89, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v93, v92, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v78, v81
	v_fma_f32 v91, -v86, v89, 1.0
	v_div_scale_f32 v78, s10, v27, v45, v27
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v93, v92, v87
	v_fmac_f32_e32 v89, v91, v89
	v_rcp_f32_e32 v91, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v82, v81, v92
	v_mul_f32_e32 v87, v78, v89
	v_fma_f32 v82, -v94, v97, v88
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v28, v81, v71, v28
	v_fma_f32 v95, -v86, v87, v78
	v_fma_f32 v93, -v90, v91, 1.0
	v_div_scale_f32 v81, null, v45, v45, v23
	v_fmac_f32_e32 v97, v82, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v95, v89
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s11, v25, v45, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v94, v97, v88
	v_fma_f32 v71, -v86, v87, v78
	v_mul_f32_e32 v86, v79, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v92, v93, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v71, v89, v87
	v_div_scale_f32 v87, null, v45, v45, v22
	v_fma_f32 v78, -v90, v92, v93
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v27, v71, v45, v27
	v_div_fmas_f32 v80, v82, v80, v97
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v92, v78, v91
	v_rcp_f32_e32 v78, v81
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v26, v80, v45, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v90, v92, v93
	v_fma_f32 v90, -v96, v86, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v87, v89, 1.0
	v_div_fmas_f32 v82, v82, v91, v92
	v_fma_f32 v88, -v81, v78, 1.0
	v_fmac_f32_e32 v86, v90, v98
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v89, v80, v89
	v_div_fixup_f32 v25, v82, v45, v25
	v_fmac_f32_e32 v78, v88, v78
	v_div_scale_f32 v88, s8, v23, v45, v23
	v_fma_f32 v79, -v96, v86, v79
	v_div_scale_f32 v82, null, v45, v45, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v71, v88, v78
	v_div_scale_f32 v80, s10, v22, v45, v22
	v_div_fmas_f32 v79, v79, v98, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v82
	v_fma_f32 v90, -v81, v71, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v80, v89
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v24, v79, v45, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v71, v90, v78
	v_div_scale_f32 v90, null, v45, v45, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v81, v71, v88
	v_fma_f32 v81, -v87, v86, v80
	v_fma_f32 v88, -v82, v91, 1.0
	v_rcp_f32_e32 v92, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v79, v78, v71
	v_div_scale_f32 v78, null, v45, v45, v19
	v_dual_fmac_f32 v86, v81, v89 :: v_dual_fmac_f32 v91, v88, v91
	v_div_scale_f32 v88, null, v45, v45, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v81, v78
	v_div_scale_f32 v79, s8, v21, v45, v21
	v_div_fixup_f32 v23, v71, v45, v23
	v_fma_f32 v71, -v90, v92, 1.0
	v_rcp_f32_e32 v94, v88
	v_fma_f32 v80, -v87, v86, v80
	v_mul_f32_e32 v87, v79, v91
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v92, v71, v92
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v78, v81, 1.0
	v_div_scale_f32 v71, s9, v20, v45, v20
	v_div_fmas_f32 v80, v80, v89, v86
	v_fma_f32 v86, -v82, v87, v79
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v93, null, v45, v45, v16
	v_mul_f32_e32 v89, v71, v92
	v_div_scale_f32 v95, s10, v19, v45, v19
	v_fma_f32 v96, -v88, v94, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v97, v93
	v_fmac_f32_e32 v87, v86, v91
	v_fma_f32 v86, -v90, v89, v71
	v_mul_f32_e32 v98, v95, v81
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s11, v18, v45, v18
	v_div_fixup_f32 v22, v80, v45, v22
	v_fma_f32 v79, -v82, v87, v79
	v_fmac_f32_e32 v89, v86, v92
	v_fma_f32 v80, -v78, v98, v95
	v_mul_f32_e32 v82, v96, v94
	v_fma_f32 v86, -v93, v97, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v71, -v90, v89, v71
	v_fmac_f32_e32 v98, v80, v81
	v_fma_f32 v80, -v88, v82, v96
	v_fmac_f32_e32 v97, v86, v97
	v_div_scale_f32 v86, s8, v16, v45, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v78, v98, v95
	v_fmac_f32_e32 v82, v80, v94
	v_div_fmas_f32 v79, v79, v91, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v80, v86, v97
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v87, null, v45, v45, v11
	v_div_fmas_f32 v71, v71, v92, v89
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v21, v79, v45, v21
	v_div_fmas_f32 v78, v78, v81, v98
	v_fma_f32 v81, -v88, v82, v96
	v_fma_f32 v88, -v93, v80, v86
	v_div_fixup_f32 v20, v71, v45, v20
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v19, v78, v45, v19
	v_div_scale_f32 v78, null, v45, v45, v10
	v_fmac_f32_e32 v80, v88, v97
	v_div_fmas_f32 v81, v81, v94, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v89, v87
	v_div_scale_f32 v91, null, v45, v45, v7
	v_fma_f32 v71, -v93, v80, v86
	v_div_fixup_f32 v18, v81, v45, v18
	v_div_scale_f32 v81, null, v45, v45, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v93, v91
	v_div_fmas_f32 v71, v71, v97, v80
	v_rcp_f32_e32 v80, v78
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v79, -v87, v89, 1.0
	v_rcp_f32_e32 v88, v81
	v_div_scale_f32 v82, vcc_lo, v11, v45, v11
	v_div_fixup_f32 v16, v71, v45, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v91, v93, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v78, v80, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v81, v88, 1.0
	v_fmac_f32_e32 v93, v97, v93
	v_div_scale_f32 v97, s11, v7, v45, v7
	v_fmac_f32_e32 v80, v71, v80
	v_div_scale_f32 v71, s8, v10, v45, v10
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s10, v8, v45, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v96, v71, v80
	v_fmac_f32_e32 v89, v79, v89
	v_div_scale_f32 v79, null, v45, v45, v9
	v_dual_mul_f32 v99, v95, v88 :: v_dual_mul_f32 v100, v97, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v90, v82, v89
	v_rcp_f32_e32 v86, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v87, v90, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v94, v89
	v_fma_f32 v92, -v79, v86, 1.0
	v_fma_f32 v94, -v78, v96, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v87, v90, v82
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s9, v9, v45, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v96, v94, v80
	v_fma_f32 v94, -v81, v99, v95
	v_div_fmas_f32 v82, v82, v89, v90
	v_mul_f32_e32 v98, v92, v86
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v71, -v78, v96, v71
	v_fma_f32 v78, -v91, v100, v97
	v_fmac_f32_e32 v99, v94, v88
	v_fma_f32 v87, -v79, v98, v92
	v_div_fixup_f32 v11, v82, v45, v11
	v_div_fmas_f32 v71, v71, v80, v96
	v_fmac_f32_e32 v100, v78, v93
	v_fma_f32 v78, -v81, v99, v95
	v_fmac_f32_e32 v98, v87, v86
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v10, v71, v45, v10
	v_fma_f32 v80, -v91, v100, v97
	s_mov_b32 s8, 0xc1000000
	v_fma_f32 v79, -v79, v98, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v73
	v_rndne_f32_e32 v73, v77
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v86, v98
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v73, v73, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v88, v99
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v9, v79, v45, v9
	v_div_fmas_f32 v80, v80, v93, v100
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v75, v75, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v78, v45, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v80, v45, v7
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v47
	v_rndne_f32_e32 v47, v50
	v_rndne_f32_e32 v50, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v60
	v_rndne_f32_e32 v60, v61
	v_rndne_f32_e32 v61, v64
	v_rndne_f32_e32 v64, v65
	v_rndne_f32_e32 v65, v67
	v_rndne_f32_e32 v67, v68
	v_rndne_f32_e32 v68, v72
	v_rndne_f32_e32 v72, v76
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_cvt_i32_f32_e32 v78, v42
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v95, v28
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v108, v8
	v_and_b32_e32 v8, 15, v47
	v_and_b32_e32 v28, 15, v72
	v_and_b32_e32 v47, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v72, 10, v0
	v_and_b32_e32 v78, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_cvt_i32_f32_e32 v92, v31
	v_cvt_i32_f32_e32 v93, v30
	v_cvt_i32_f32_e32 v94, v29
	v_cvt_i32_f32_e32 v16, v16
	v_and_b32_e32 v29, 15, v73
	v_and_b32_e32 v30, 15, v75
	v_and_b32_e32 v31, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v74, 0x1800, v72
	v_lshlrev_b32_e32 v75, 6, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v73, 15, v11
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v11, v85, v15
	v_lshlrev_b32_e32 v15, 6, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v77, v43
	v_cvt_i32_f32_e32 v79, v41
	v_cvt_i32_f32_e32 v80, v40
	v_cvt_i32_f32_e32 v96, v27
	v_cvt_i32_f32_e32 v97, v26
	v_cvt_i32_f32_e32 v98, v25
	v_cvt_i32_f32_e32 v99, v24
	v_and_b32_e32 v72, 15, v16
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v16, 0, v74, v75
	v_and_or_b32 v13, 0x1b00, v15, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v76, v44
	v_cvt_i32_f32_e32 v88, v35
	v_cvt_i32_f32_e32 v89, v34
	v_cvt_i32_f32_e32 v90, v33
	v_cvt_i32_f32_e32 v91, v32
	v_cvt_i32_f32_e32 v104, v19
	v_cvt_i32_f32_e32 v105, v18
	v_cvt_i32_f32_e32 v86, v37
	v_cvt_i32_f32_e32 v87, v36
	v_cvt_i32_f32_e32 v100, v23
	v_cvt_i32_f32_e32 v102, v21
	v_cvt_i32_f32_e32 v103, v20
	v_cvt_i32_f32_e32 v106, v10
	v_cvt_i32_f32_e32 v107, v9
	v_cvt_i32_f32_e32 v109, v7
	v_and_b32_e32 v9, 15, v50
	v_and_b32_e32 v10, 15, v53
	v_and_b32_e32 v18, 15, v54
	v_and_b32_e32 v19, 15, v55
	v_and_b32_e32 v20, 15, v56
	v_and_b32_e32 v21, 15, v60
	v_and_b32_e32 v23, 15, v64
	v_and_b32_e32 v24, 15, v65
	v_and_b32_e32 v32, 15, v70
	v_and_b32_e32 v33, 15, v69
	v_and_b32_e32 v34, 15, v66
	v_and_b32_e32 v35, 15, v63
	v_and_b32_e32 v36, 15, v62
	v_and_b32_e32 v37, 15, v59
	v_and_b32_e32 v42, 15, v49
	v_and_b32_e32 v43, 15, v48
	v_and_b32_e32 v44, 15, v46
	v_and_b32_e32 v46, 15, v77
	v_and_b32_e32 v48, 15, v79
	v_and_b32_e32 v49, 15, v80
	v_and_b32_e32 v62, 15, v96
	v_and_b32_e32 v63, 15, v97
	v_and_b32_e32 v64, 15, v98
	v_and_b32_e32 v65, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v11, v16, v11, v14
	v_xad_u32 v79, v13, v84, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v7, 15, v45
	v_cvt_i32_f32_e32 v81, v39
	v_cvt_i32_f32_e32 v82, v38
	v_cvt_i32_f32_e32 v101, v22
	v_and_b32_e32 v22, 15, v61
	v_and_b32_e32 v25, 15, v67
	v_and_b32_e32 v26, 15, v68
	v_and_b32_e32 v27, 15, v71
	v_and_b32_e32 v38, 15, v58
	v_and_b32_e32 v39, 15, v57
	v_and_b32_e32 v40, 15, v52
	v_and_b32_e32 v41, 15, v51
	v_and_b32_e32 v45, 15, v76
	v_and_b32_e32 v54, 15, v88
	v_and_b32_e32 v55, 15, v89
	v_and_b32_e32 v56, 15, v90
	v_and_b32_e32 v57, 15, v91
	v_and_b32_e32 v70, 15, v104
	v_and_b32_e32 v71, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v11, v[7:10]
	ds_store_b128 v11, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v79
	ds_load_b128 v[13:16], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[30:33]
	ds_store_b128 v11, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[22:25], v79
	ds_load_b128 v[30:33], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[46:49]
	ds_store_b128 v11, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v79
	ds_load_b128 v[46:49], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[62:65]
	ds_store_b128 v11, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v79
	ds_load_b128 v[62:65], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[18:21]
	ds_store_b128 v11, v[26:29] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v79
	ds_load_b128 v[26:29], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[34:37]
	ds_store_b128 v11, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v79
	ds_load_b128 v[42:45], v79 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v50, 15, v81
	v_and_b32_e32 v51, 15, v82
	v_and_b32_e32 v52, 15, v86
	v_and_b32_e32 v53, 15, v87
	v_and_b32_e32 v58, 15, v92
	v_and_b32_e32 v59, 15, v93
	v_and_b32_e32 v60, 15, v94
	v_and_b32_e32 v61, 15, v95
	v_and_b32_e32 v66, 15, v100
	v_and_b32_e32 v67, 15, v101
	v_and_b32_e32 v68, 15, v102
	v_and_b32_e32 v69, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[50:53]
	ds_store_b128 v11, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v79
	ds_load_b128 v[58:61], v79 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v106
	v_and_b32_e32 v75, 15, v107
	v_and_b32_e32 v76, 15, v108
	v_and_b32_e32 v77, 15, v109
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v9, v15, 4, v9
	v_lshl_or_b32 v15, v16, 4, v10
	v_lshl_or_b32 v16, v26, 4, v18
	v_lshl_or_b32 v18, v27, 4, v19
	v_lshl_or_b32 v27, v44, 4, v36
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v83
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, s34, v12
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[66:69]
	ds_store_b128 v11, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v79
	ds_load_b128 v[70:73], v79 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v74, v13, 4, v7
	v_lshl_or_b32 v8, v14, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v7, s41, 7, v44
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 16, v10
	v_add_nc_u32_e32 v13, 32, v10
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v28, 4, v20
	v_lshl_or_b32 v20, v29, 4, v21
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 48, v10
	v_mad_u64_u32 v[10:11], null, v10, s8, v[7:8]
	v_mad_u64_u32 v[11:12], null, v12, s8, v[7:8]
	v_mad_u64_u32 v[12:13], null, v13, s8, v[7:8]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v21, v30, 4, v22
	v_lshl_or_b32 v22, v31, 4, v23
	v_lshl_or_b32 v23, v32, 4, v24
	v_lshl_or_b32 v24, v33, 4, v25
	v_lshl_or_b32 v25, v42, 4, v34
	v_lshl_or_b32 v26, v43, 4, v35
	v_lshl_or_b32 v28, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v14, s8, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v15.l
	v_and_b16 v4.l, 0xff, v9.l
	v_lshlrev_b16 v6.l, 8, v8.l
	v_and_b16 v7.l, 0xff, v74.l
	v_lshlrev_b16 v7.h, 8, v20.l
	v_and_b16 v8.l, 0xff, v19.l
	v_lshlrev_b16 v8.h, 8, v18.l
	v_and_b16 v9.l, 0xff, v16.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v33, v58, 4, v50
	v_lshl_or_b32 v34, v59, 4, v51
	v_lshl_or_b32 v35, v60, 4, v52
	v_lshl_or_b32 v36, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v4.l, v3.l
	v_or_b16 v14.l, v7.l, v6.l
	v_or_b16 v15.h, v8.l, v7.h
	v_or_b16 v15.l, v9.l, v8.h
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v7.h, 8, v28.l
	v_and_b16 v8.l, 0xff, v27.l
	v_lshlrev_b16 v8.h, 8, v26.l
	v_and_b16 v9.l, 0xff, v25.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v46, 4, v38
	v_lshl_or_b32 v30, v47, 4, v39
	v_lshl_or_b32 v31, v48, 4, v40
	v_lshl_or_b32 v32, v49, 4, v41
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v70, 4, v66
	v_lshl_or_b32 v42, v71, 4, v67
	v_lshl_or_b32 v43, v72, 4, v68
	v_lshl_or_b32 v45, v73, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v24.l
	v_and_b16 v4.l, 0xff, v23.l
	v_lshlrev_b16 v6.l, 8, v22.l
	v_and_b16 v7.l, 0xff, v21.l
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v15.h, v8.l, v7.h
	v_or_b16 v15.l, v9.l, v8.h
	v_lshlrev_b16 v7.h, 8, v36.l
	v_and_b16 v8.l, 0xff, v35.l
	v_lshlrev_b16 v8.h, 8, v34.l
	v_and_b16 v9.l, 0xff, v33.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v62, 4, v54
	v_lshl_or_b32 v38, v63, 4, v55
	v_lshl_or_b32 v39, v64, 4, v56
	v_lshl_or_b32 v40, v65, 4, v57
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v4.l, v3.l
	v_or_b16 v14.l, v7.l, v6.l
	v_cndmask_b32_e32 v10, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v3.l, 8, v32.l
	v_and_b16 v4.l, 0xff, v31.l
	v_lshlrev_b16 v6.l, 8, v30.l
	v_and_b16 v7.l, 0xff, v29.l
	v_or_b16 v11.h, v8.l, v7.h
	v_or_b16 v11.l, v9.l, v8.h
	v_lshlrev_b16 v7.h, 8, v45.l
	v_and_b16 v8.l, 0xff, v43.l
	v_lshlrev_b16 v8.h, 8, v42.l
	v_and_b16 v9.l, 0xff, v41.l
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v10.h, v4.l, v3.l
	v_or_b16 v10.l, v7.l, v6.l
	v_lshlrev_b16 v3.l, 8, v40.l
	v_and_b16 v4.l, 0xff, v39.l
	v_lshlrev_b16 v6.l, 8, v38.l
	v_and_b16 v7.l, 0xff, v37.l
	v_or_b16 v15.h, v8.l, v7.h
	v_or_b16 v15.l, v9.l, v8.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshrrev_b32_e32 v9, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v4.l, v3.l
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.l, v7.l, v6.l
	v_dual_cndmask_b32 v7, 0x80000000, v13 :: v_dual_and_b32 v8, 2, v8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v9, 0, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[10:11], v12, s[8:11], 0 offen
	buffer_store_b64 v[14:15], v7, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v7, 0, v44
	v_mov_b16_e32 v4.l, v17.h
	v_mov_b16_e32 v3.l, v6.h
	v_add3_u32 v6, v9, v8, v44
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
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[38:39], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v4, s41, 1
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
.Ltmp42:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 207
		.amdhsa_next_free_sgpr 43
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 207
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15952
; TotalNumSgprs: 45
; NumVgprs: 207
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 207
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     207
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
