	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[36:37], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v0
	v_and_b32_e32 v76, 15, v0
	v_lshlrev_b32_e32 v79, 4, v0
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
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s37, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s37, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s37, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[28:29], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[30:31], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s2, s28, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s29, 0, s2
	v_add_nc_u32_e32 v73, s28, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[30:31], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_mov_b32_e32 v4, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s36, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 4, v0
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s28, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v6, 0 :: v_dual_and_b32 v77, 0xf0, v0
	v_dual_mov_b32 v7, 0 :: v_dual_lshlrev_b32 v78, 4, v76
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v48, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s20, s[0:1], 0x58
	s_load_b32 s38, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s28, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s29, 0, s0
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v1, s28, v76
	v_add_co_u32 v5, vcc_lo, v3, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v4, vcc_lo
	v_add_co_u32 v7, vcc_lo, v3, 32
	v_add_co_ci_u32_e64 v8, null, 0, v4, vcc_lo
	v_add_co_u32 v9, vcc_lo, v3, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, 0, v4, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[30:31], v[3:4]
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v4, 16, v1
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s4
	s_addc_u32 s7, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[7:8]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s21, s[6:7], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[30:31], v[7:8]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v85, v4, s36
	v_dual_mov_b32 v169, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	v_dual_mov_b32 v170, 0 :: v_dual_lshlrev_b32 v7, 3, v0
	v_lshrrev_b32_e32 v11, 2, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[34:35], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[30:31], v[5:6]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v81, 3, v77
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v5, 32, v1
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v6, 48, v1
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v7, 24, v7
	v_xor_b32_e32 v11, v4, v11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[34:35], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[30:31], v[9:10]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v86, v5, s36
	v_mul_lo_u32 v87, v6, s36
	v_lshrrev_b32_e32 v5, 1, v0
	v_dual_mov_b32 v167, 0 :: v_dual_lshlrev_b32 v6, 5, v76
	v_xor_b32_e32 v7, v7, v81
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v17, 0xe00, v79
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v11, 24, v11
	v_dual_mov_b32 v165, 0 :: v_dual_lshlrev_b32 v20, 5, v0
	v_dual_mov_b32 v175, 0 :: v_dual_and_b32 v82, 24, v3
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s4, s4, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s7, s37, 8
	v_xor3_b32 v3, v4, v5, v3
	v_and_or_b32 v88, v4, 24, v6
	v_lshl_or_b32 v111, v76, 9, v7
	v_or3_b32 v114, v17, v11, v6
	v_dual_mov_b32 v159, 0 :: v_dual_lshlrev_b32 v24, 2, v77
	v_dual_mov_b32 v157, 0 :: v_dual_and_b32 v20, 32, v20
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v84, v1, s36
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s7, v78
	v_lshl_add_u32 v2, v2, 5, 0
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s20, s20, s33
	v_dual_mov_b32 v172, 0 :: v_dual_and_b32 v3, 24, v3
	v_xor_b32_e32 v5, 8, v88
	v_xor_b32_e32 v8, 16, v88
	v_xor_b32_e32 v9, 24, v88
	v_xor_b32_e32 v10, 0x208, v88
	v_xor_b32_e32 v12, 0x218, v88
	v_xor_b32_e32 v13, 0x210, v88
	v_xor_b32_e32 v14, 0x410, v88
	v_xor_b32_e32 v15, 0x418, v88
	v_xor_b32_e32 v16, 0x408, v88
	v_xor_b32_e32 v7, 0x618, v88
	v_xor_b32_e32 v18, 0x610, v88
	v_xor_b32_e32 v19, 0x608, v88
	v_xor_b32_e32 v6, 0x88, v111
	v_xor_b32_e32 v11, 0x110, v111
	v_xor_b32_e32 v17, 0x198, v111
	v_xor_b32_e32 v21, 8, v114
	v_xor_b32_e32 v22, 16, v114
	v_xor_b32_e32 v23, 24, v114
	v_dual_mov_b32 v155, 0 :: v_dual_and_b32 v4, 28, v4
	v_add3_u32 v20, 0, v24, v20
	v_dual_mov_b32 v153, 0 :: v_dual_lshlrev_b32 v24, 1, v77
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[74:75], null, s20, s21, v[1:2]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v83, 7, v82
	v_or_b32_e32 v128, s7, v0
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v136, v2, v3
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v138, 0, v5
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v140, 0, v8
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v142, 0, v9
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v144, 0, v10
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v146, 0, v12
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v147, 0, v13
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v148, 0, v14
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v149, 0, v15
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v150, 0, v16
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v152, 0, v7
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v154, 0, v18
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v156, 0, v19
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v158, 0, v6
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v160, 0, v11
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v161, 0, v17
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v162, 0, v21
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v163, 0, v22
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v164, 0, v23
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v166, v20, v4
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v168, 0, v24
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v90, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 s1, s1, s5
	s_and_b32 s3, s3, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s5, s36, s21
	s_mov_b32 s6, 0
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v80
	v_mov_b32_e32 v3, v80
	v_dual_mov_b32 v4, v80 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v80
	v_dual_mov_b32 v6, v80 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v80
	v_dual_mov_b32 v8, v80 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v80 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v80
	v_dual_mov_b32 v12, v80 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v80
	v_dual_mov_b32 v14, v80 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v80
	v_dual_mov_b32 v16, v80 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v80
	v_mov_b32_e32 v19, v80
	v_mov_b32_e32 v20, v80
	v_mov_b32_e32 v21, v80
	v_mov_b32_e32 v22, v80
	v_mov_b32_e32 v23, v80
	v_mov_b32_e32 v24, v80
	v_mov_b32_e32 v26, v80
	v_mov_b32_e32 v27, v80
	v_mov_b32_e32 v28, v80
	v_mov_b32_e32 v29, v80
	v_mov_b32_e32 v30, v80
	v_mov_b32_e32 v31, v80
	v_mov_b32_e32 v32, v80
	v_mov_b32_e32 v34, v80
	v_mov_b32_e32 v35, v80
	v_mov_b32_e32 v36, v80
	v_mov_b32_e32 v37, v80
	v_mov_b32_e32 v38, v80
	v_mov_b32_e32 v39, v80
	v_mov_b32_e32 v40, v80
	v_mov_b32_e32 v42, v80
	v_mov_b32_e32 v43, v80
	v_mov_b32_e32 v44, v80
	v_mov_b32_e32 v45, v80
	v_mov_b32_e32 v46, v80
	v_mov_b32_e32 v47, v80
	v_mov_b32_e32 v48, v80
	v_mov_b32_e32 v50, v80
	v_mov_b32_e32 v51, v80
	v_mov_b32_e32 v52, v80
	v_mov_b32_e32 v53, v80
	v_mov_b32_e32 v54, v80
	v_mov_b32_e32 v55, v80
	v_mov_b32_e32 v56, v80
	v_mov_b32_e32 v58, v80
	v_mov_b32_e32 v59, v80
	v_mov_b32_e32 v60, v80
	v_mov_b32_e32 v61, v80
	v_mov_b32_e32 v62, v80
	v_mov_b32_e32 v63, v80
	v_mov_b32_e32 v64, v80
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s7, s6, 6
	s_mov_b32 s39, -1
	s_mov_b32 s40, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v66, 1, v82
	v_or_b32_e32 v67, 2, v82
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s40, s40, s7
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v68, 3, v82
	v_or_b32_e32 v65, 1, v81
	v_or_b32_e32 v69, 4, v82
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v176, s40, v82
	v_or_b32_e32 v177, s40, v83
	v_or_b32_e32 v178, s40, v66
	v_or_b32_e32 v179, s40, v67
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v70, 5, v82
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v72, s40, v81
	v_or_b32_e32 v180, s40, v68
	v_or_b32_e32 v181, s40, v65
	v_or_b32_e32 v69, s40, v69
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v71, 6, v82
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[65:66], null, v176, s38, v[73:74]
	v_mad_u64_u32 v[66:67], null, v177, s38, v[73:74]
	v_mad_u64_u32 v[176:177], null, v178, s38, v[73:74]
	v_mad_u64_u32 v[177:178], null, v179, s38, v[73:74]
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v182, s40, v70
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[67:68], null, v72, s33, v[74:75]
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[178:179], null, v180, s38, v[73:74]
	v_mad_u64_u32 v[179:180], null, v69, s38, v[73:74]
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[69:70], null, v181, s33, v[74:75]
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v71, s40, v71
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[180:181], null, v182, s38, v[73:74]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v183, 0x80000000, v66, s2
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[181:182], null, v71, s38, v[73:74]
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v182, 0x80000000, v65, s2
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[65:68], v67, s[8:11], 0 offen
	buffer_load_b128 v[69:72], v69, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	v_cndmask_b32_e64 v184, 0x80000000, v176, s2
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_cndmask_b32_e64 v185, 0x80000000, v179, s2
	v_cndmask_b32_e64 v179, 0x80000000, v181, s2
	s_clause 0x7
	buffer_load_u8 v176, v182, s[20:23], 0 offen
	buffer_load_u8 v183, v183, s[20:23], 0 offen
	buffer_load_u8 v182, v180, s[20:23], 0 offen
	buffer_load_u8 v181, v178, s[20:23], 0 offen
	buffer_load_u8 v180, v184, s[20:23], 0 offen
	buffer_load_u8 v179, v179, s[20:23], 0 offen
	buffer_load_u8 v178, v185, s[20:23], 0 offen
	buffer_load_u8 v177, v177, s[20:23], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v185, 0, v111
	v_add_nc_u32_e32 v218, 0, v114
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v184, 0, v88
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s40, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s39
	s_mov_b32 s39, 0
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(8)
	v_perm_b32 v186, v69, v65, 0x5010400
	v_perm_b32 v69, v69, v65, 0x7030602
	v_perm_b32 v187, v70, v66, 0x5010400
	v_perm_b32 v70, v70, v66, 0x7030602
	v_perm_b32 v188, v71, v67, 0x5010400
	v_perm_b32 v67, v71, v67, 0x7030602
	v_perm_b32 v71, v72, v68, 0x5010400
	v_perm_b32 v68, v72, v68, 0x7030602
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v66.h, 8, v180.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v72, 8, v186
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_lshlrev_b16 v66.l, 8, v181.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v189, 24, v186
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_lshlrev_b16 v65.h, 8, v182.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v190, 8, v69
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_lshlrev_b16 v65.l, 8, v183.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v191, 24, v69
	v_and_b16 v176.h, 0xff, v186.l
	s_waitcnt vmcnt(0)
	v_and_b16 v177.h, 0xff, v186.h
	v_and_b16 v178.h, 0xff, v69.l
	v_and_b16 v179.h, 0xff, v69.h
	v_lshrrev_b32_e32 v69, 8, v187
	v_lshrrev_b32_e32 v192, 24, v187
	v_and_b16 v181.l, 0xff, v70.l
	v_lshrrev_b32_e32 v193, 8, v70
	v_lshrrev_b32_e32 v194, 24, v70
	v_and_b16 v181.h, 0xff, v70.h
	v_lshrrev_b32_e32 v70, 8, v188
	v_lshrrev_b32_e32 v195, 24, v188
	v_lshrrev_b32_e32 v196, 8, v67
	v_lshrrev_b32_e32 v197, 24, v67
	v_and_b16 v186.l, 0xff, v71.l
	v_lshrrev_b32_e32 v198, 8, v71
	v_lshrrev_b32_e32 v199, 24, v71
	v_and_b16 v186.h, 0xff, v71.h
	v_lshrrev_b32_e32 v71, 8, v68
	v_lshrrev_b32_e32 v200, 24, v68
	v_and_b16 v183.l, 0xff, v67.l
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_or_b16 v67.l, v176.l, v66.h
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshlrev_b16 v176.l, 8, v72.l
	v_and_b16 v183.h, 0xff, v67.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_or_b16 v67.h, v177.l, v66.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshlrev_b16 v177.l, 8, v189.l
	v_and_b16 v180.l, 0xff, v187.l
	v_and_b16 v187.l, 0xff, v68.l
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_or_b16 v68.l, v178.l, v65.h
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshlrev_b16 v178.l, 8, v190.l
	v_and_b16 v180.h, 0xff, v187.h
	v_and_b16 v187.h, 0xff, v68.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_or_b16 v68.h, v179.l, v65.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshlrev_b16 v179.l, 8, v191.l
	v_and_b16 v182.l, 0xff, v188.l
	v_and_b16 v182.h, 0xff, v188.h
	v_lshlrev_b16 v188.l, 8, v69.l
	v_lshlrev_b16 v188.h, 8, v192.l
	v_lshlrev_b16 v189.l, 8, v193.l
	v_lshlrev_b16 v189.h, 8, v194.l
	v_lshlrev_b16 v190.l, 8, v70.l
	v_lshlrev_b16 v190.h, 8, v195.l
	v_lshlrev_b16 v191.l, 8, v196.l
	v_lshlrev_b16 v191.h, 8, v197.l
	v_lshlrev_b16 v192.l, 8, v198.l
	v_lshlrev_b16 v192.h, 8, v199.l
	v_lshlrev_b16 v193.l, 8, v71.l
	v_lshlrev_b16 v193.h, 8, v200.l
	v_or_b16 v176.l, v176.h, v176.l
	v_or_b16 v176.h, v177.h, v177.l
	v_or_b16 v177.l, v178.h, v178.l
	v_or_b16 v177.h, v179.h, v179.l
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_store_b64 v136, v[67:68]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[194:195], v138
	ds_load_b64 v[196:197], v140
	ds_load_b64 v[198:199], v142
	ds_load_b64 v[200:201], v144
	ds_load_b64 v[202:203], v146
	ds_load_b64 v[204:205], v147
	ds_load_b64 v[206:207], v148
	ds_load_b64 v[208:209], v149
	ds_load_2addr_stride64_b64 v[65:68], v184 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v184 offset0:2 offset1:3
	ds_load_b64 v[210:211], v150
	ds_load_b64 v[212:213], v152
	ds_load_b64 v[214:215], v154
	ds_load_b64 v[216:217], v156
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_or_b16 v178.l, v180.l, v188.l
	v_or_b16 v178.h, v180.h, v188.h
	v_or_b16 v179.l, v181.l, v189.l
	v_or_b16 v179.h, v181.h, v189.h
	v_or_b16 v180.l, v182.l, v190.l
	v_or_b16 v180.h, v182.h, v190.h
	v_or_b16 v181.l, v183.l, v191.l
	v_or_b16 v181.h, v183.h, v191.h
	v_or_b16 v182.l, v186.l, v192.l
	v_or_b16 v182.h, v186.h, v192.h
	v_or_b16 v183.l, v187.l, v193.l
	v_or_b16 v183.h, v187.h, v193.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v185, v176
	ds_store_b16_d16_hi v185, v176 offset:32
	ds_store_b16 v185, v177 offset:64
	ds_store_b16_d16_hi v185, v177 offset:96
	ds_store_b16 v158, v178
	ds_store_b16_d16_hi v158, v178 offset:32
	ds_store_b16 v158, v179 offset:64
	ds_store_b16_d16_hi v158, v179 offset:96
	ds_store_b16 v160, v180
	ds_store_b16_d16_hi v160, v180 offset:32
	ds_store_b16 v160, v181 offset:64
	ds_store_b16_d16_hi v160, v181 offset:96
	ds_store_b16 v161, v182
	ds_store_b16_d16_hi v161, v182 offset:32
	ds_store_b16 v161, v183 offset:64
	ds_store_b16_d16_hi v161, v183 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[176:179], v218 offset1:8
	ds_load_2addr_stride64_b64 v[180:183], v162 offset1:8
	ds_load_2addr_stride64_b64 v[184:187], v163 offset1:8
	ds_load_2addr_stride64_b64 v[188:191], v164 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[176:177], v[65:66], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[178:179], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[176:177], v[200:201], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[178:179], v[200:201], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[176:177], v[206:207], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[178:179], v[206:207], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[176:177], v[212:213], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[178:179], v[212:213], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[180:181], v[194:195], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[182:183], v[194:195], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[180:181], v[67:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[182:183], v[67:68], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[180:181], v[208:209], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[182:183], v[208:209], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[180:181], v[214:215], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[182:183], v[214:215], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[184:185], v[196:197], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[186:187], v[196:197], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[184:185], v[202:203], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[186:187], v[202:203], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[184:185], v[69:70], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[186:187], v[69:70], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[184:185], v[216:217], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[186:187], v[216:217], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[188:189], v[198:199], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[190:191], v[198:199], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[188:189], v[204:205], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[190:191], v[204:205], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[188:189], v[210:211], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[190:191], v[210:211], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[188:189], v[71:72], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[190:191], v[71:72], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v65, s6, v84, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s7, s6, s5
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v66, s6, v85, 1
	v_add_lshl_u32 v67, s6, v86, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s7, s7, s33
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v68, s6, v87, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v69, v128, s7, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	v_cndmask_b32_e64 v68, 0x80000000, v68, s4
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v69, v69, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v65, v65, s[24:27], 0 offen
	buffer_load_u16 v66, v66, s[24:27], 0 offen
	buffer_load_u16 v67, v67, s[24:27], 0 offen
	buffer_load_u16 v68, v68, s[24:27], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v70, v1
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v71, v2
	v_cvt_f32_i32_e32 v72, v3
	v_cvt_f32_i32_e32 v176, v4
	v_cvt_f32_i32_e32 v177, v5
	v_cvt_f32_i32_e32 v178, v6
	v_cvt_f32_i32_e32 v179, v7
	v_cvt_f32_i32_e32 v180, v8
	v_cvt_f32_i32_e32 v181, v9
	v_cvt_f32_i32_e32 v182, v10
	v_cvt_f32_i32_e32 v183, v11
	v_cvt_f32_i32_e32 v184, v12
	v_cvt_f32_i32_e32 v185, v13
	v_cvt_f32_i32_e32 v186, v14
	v_cvt_f32_i32_e32 v187, v15
	v_cvt_f32_i32_e32 v188, v16
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
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
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s6, s36
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v1, 16, v69
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v20, v20, v66 :: v_dual_lshlrev_b32 v65, 16, v65
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v67, 16, v67
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v69, v70, v65
	v_mul_f32_e32 v18, v18, v66
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v166, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v168
	ds_load_b128 v[5:8], v168 offset:16
	ds_load_b128 v[9:12], v168 offset:512
	ds_load_b128 v[13:16], v168 offset:528
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v70, v71, v65
	v_mul_f32_e32 v71, v72, v65
	v_dual_mul_f32 v72, v176, v65 :: v_dual_mul_f32 v17, v17, v66
	v_dual_mul_f32 v176, v177, v65 :: v_dual_mul_f32 v19, v19, v66
	v_dual_mul_f32 v177, v178, v65 :: v_dual_mul_f32 v24, v24, v66
	v_dual_mul_f32 v178, v179, v65 :: v_dual_mul_f32 v21, v21, v66
	v_dual_mul_f32 v179, v180, v65 :: v_dual_mul_f32 v22, v22, v66
	v_dual_mul_f32 v180, v181, v65 :: v_dual_mul_f32 v23, v23, v66
	v_dual_mul_f32 v181, v182, v65 :: v_dual_mul_f32 v28, v28, v66
	v_dual_mul_f32 v182, v183, v65 :: v_dual_mul_f32 v25, v25, v66
	v_dual_mul_f32 v183, v184, v65 :: v_dual_mul_f32 v26, v26, v66
	v_dual_mul_f32 v184, v185, v65 :: v_dual_mul_f32 v27, v27, v66
	v_dual_mul_f32 v185, v186, v65 :: v_dual_mul_f32 v32, v32, v66
	v_dual_mul_f32 v186, v187, v65 :: v_dual_mul_f32 v29, v29, v66
	v_dual_mul_f32 v65, v188, v65 :: v_dual_mul_f32 v30, v30, v66
	v_dual_mul_f32 v31, v31, v66 :: v_dual_mul_f32 v34, v34, v67
	v_dual_mul_f32 v33, v33, v67 :: v_dual_mul_f32 v50, v50, v68
	v_dual_mul_f32 v35, v35, v67 :: v_dual_mul_f32 v52, v52, v68
	v_dual_mul_f32 v36, v36, v67 :: v_dual_mul_f32 v49, v49, v68
	v_dual_mul_f32 v37, v37, v67 :: v_dual_mul_f32 v54, v54, v68
	v_dual_mul_f32 v38, v38, v67 :: v_dual_mul_f32 v51, v51, v68
	v_dual_mul_f32 v39, v39, v67 :: v_dual_mul_f32 v56, v56, v68
	v_dual_mul_f32 v40, v40, v67 :: v_dual_mul_f32 v53, v53, v68
	v_dual_mul_f32 v41, v41, v67 :: v_dual_mul_f32 v58, v58, v68
	v_dual_mul_f32 v42, v42, v67 :: v_dual_mul_f32 v55, v55, v68
	v_dual_mul_f32 v43, v43, v67 :: v_dual_mul_f32 v60, v60, v68
	v_dual_mul_f32 v44, v44, v67 :: v_dual_mul_f32 v57, v57, v68
	v_dual_mul_f32 v45, v45, v67 :: v_dual_mul_f32 v62, v62, v68
	v_dual_mul_f32 v46, v46, v67 :: v_dual_mul_f32 v59, v59, v68
	v_dual_mul_f32 v47, v47, v67 :: v_dual_mul_f32 v64, v64, v68
	v_dual_mul_f32 v48, v48, v67 :: v_dual_mul_f32 v61, v61, v68
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v63, v63, v68 :: v_dual_fmac_f32 v174, v70, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v175, v69, v1 :: v_dual_fmac_f32 v172, v72, v4
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v173, v71, v3 :: v_dual_fmac_f32 v170, v177, v6
	v_dual_fmac_f32 v171, v176, v5 :: v_dual_fmac_f32 v132, v23, v7
	v_dual_fmac_f32 v169, v178, v7 :: v_dual_fmac_f32 v134, v21, v5
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v167, v179, v8 :: v_dual_fmac_f32 v130, v25, v9
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v165, v180, v9 :: v_dual_fmac_f32 v124, v30, v14
	v_dual_fmac_f32 v159, v181, v10 :: v_dual_fmac_f32 v126, v28, v12
	v_dual_fmac_f32 v157, v182, v11 :: v_dual_fmac_f32 v122, v32, v16
	v_dual_fmac_f32 v155, v183, v12 :: v_dual_fmac_f32 v120, v34, v2
	v_dual_fmac_f32 v153, v184, v13 :: v_dual_fmac_f32 v116, v38, v6
	v_dual_fmac_f32 v151, v185, v14 :: v_dual_fmac_f32 v118, v36, v4
	v_dual_fmac_f32 v145, v186, v15 :: v_dual_fmac_f32 v112, v41, v9
	v_dual_fmac_f32 v143, v65, v16 :: v_dual_fmac_f32 v110, v42, v10
	v_dual_fmac_f32 v141, v17, v1 :: v_dual_fmac_f32 v108, v44, v12
	v_dual_fmac_f32 v139, v18, v2 :: v_dual_fmac_f32 v104, v48, v16
	v_dual_fmac_f32 v137, v19, v3 :: v_dual_fmac_f32 v106, v46, v14
	v_dual_fmac_f32 v135, v20, v4 :: v_dual_fmac_f32 v102, v50, v2
	v_dual_fmac_f32 v133, v22, v6 :: v_dual_fmac_f32 v100, v52, v4
	v_dual_fmac_f32 v131, v24, v8 :: v_dual_fmac_f32 v98, v54, v6
	v_dual_fmac_f32 v129, v26, v10 :: v_dual_fmac_f32 v96, v56, v8
	v_dual_fmac_f32 v127, v27, v11 :: v_dual_fmac_f32 v94, v58, v10
	v_dual_fmac_f32 v125, v29, v13 :: v_dual_fmac_f32 v92, v60, v12
	v_dual_fmac_f32 v123, v31, v15 :: v_dual_fmac_f32 v90, v62, v14
	v_fmac_f32_e32 v121, v33, v1
	v_fmac_f32_e32 v119, v35, v3
	v_fmac_f32_e32 v117, v37, v5
	v_fmac_f32_e32 v115, v39, v7
	v_fmac_f32_e32 v113, v40, v8
	v_fmac_f32_e32 v109, v43, v11
	v_fmac_f32_e32 v107, v45, v13
	v_fmac_f32_e32 v105, v47, v15
	v_fmac_f32_e32 v103, v49, v1
	v_fmac_f32_e32 v101, v51, v3
	v_fmac_f32_e32 v99, v53, v5
	v_fmac_f32_e32 v97, v55, v7
	v_fmac_f32_e32 v95, v57, v9
	v_fmac_f32_e32 v93, v59, v11
	v_fmac_f32_e32 v91, v61, v13
	v_fmac_f32_e32 v89, v63, v15
	v_fmac_f32_e32 v75, v64, v16
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v35, v119, v119 :: v_dual_max_f32 v36, v118, v118
	v_dual_max_f32 v37, v117, v117 :: v_dual_max_f32 v38, v116, v116
	v_max_f32_e32 v39, v115, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v40, v110, v110
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v43, 0, v38 :: v_dual_max_f32 v42, v108, v108
	v_max_f32_e32 v38, v113, v113
	v_max_f32_e32 v41, v109, v109
	v_max_f32_e32 v69, 0, v39
	v_max_f32_e32 v39, v112, v112
	v_max_f32_e32 v83, 0, v40
	v_dual_max_f32 v81, 0, v38 :: v_dual_max_f32 v40, v105, v105
	v_dual_max_f32 v85, 0, v42 :: v_dual_max_f32 v38, v107, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v82, 0, v39
	v_dual_max_f32 v84, 0, v41 :: v_dual_max_f32 v39, v106, v106
	v_dual_max_f32 v41, v104, v104 :: v_dual_max_f32 v86, 0, v38
	v_max_f32_e32 v42, v103, v103
	v_max_f32_e32 v88, 0, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v38, v102, v102 :: v_dual_max_f32 v103, 0, v41
	v_dual_max_f32 v40, v100, v100 :: v_dual_max_f32 v87, 0, v39
	v_dual_max_f32 v104, 0, v42 :: v_dual_max_f32 v39, v101, v101
	v_dual_max_f32 v42, v98, v98 :: v_dual_max_f32 v41, v99, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v98, 0, v38 :: v_dual_max_f32 v5, v171, v171
	v_dual_max_f32 v6, v170, v170 :: v_dual_max_f32 v9, v165, v165
	v_dual_max_f32 v15, v145, v145 :: v_dual_max_f32 v16, v143, v143
	v_dual_max_f32 v17, v141, v141 :: v_dual_max_f32 v18, v139, v139
	v_max_f32_e32 v19, v137, v137
	v_dual_max_f32 v25, v130, v130 :: v_dual_max_f32 v26, v129, v129
	v_dual_max_f32 v27, v127, v127 :: v_dual_max_f32 v28, v126, v126
	v_max_f32_e32 v29, v125, v125
	v_dual_max_f32 v99, 0, v39 :: v_dual_max_f32 v100, 0, v40
	v_dual_max_f32 v101, 0, v41 :: v_dual_max_f32 v102, 0, v42
	v_dual_max_f32 v38, v97, v97 :: v_dual_max_f32 v39, v96, v96
	v_dual_max_f32 v40, v95, v95 :: v_dual_max_f32 v41, v94, v94
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v42, v93, v93 :: v_dual_max_f32 v93, 0, v38
	v_dual_max_f32 v1, v175, v175 :: v_dual_max_f32 v2, v174, v174
	v_dual_max_f32 v3, v173, v173 :: v_dual_max_f32 v4, v172, v172
	v_dual_max_f32 v7, v169, v169 :: v_dual_max_f32 v8, v167, v167
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v10, v159, v159 :: v_dual_max_f32 v11, v157, v157
	v_dual_max_f32 v12, v155, v155 :: v_dual_max_f32 v13, v153, v153
	v_max_f32_e32 v14, v151, v151
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v17, 0, v17
	v_max_f32_e32 v20, v135, v135
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v22, v133, v133
	v_dual_max_f32 v21, v134, v134 :: v_dual_max_f32 v24, v131, v131
	v_dual_max_f32 v23, v132, v132 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v30, v124, v124
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v32, v122, v122
	v_dual_max_f32 v31, v123, v123 :: v_dual_max_f32 v34, v120, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_max_f32 v33, v121, v121 :: v_dual_max_f32 v30, 0, v30
	v_dual_max_f32 v94, 0, v39 :: v_dual_max_f32 v95, 0, v40
	v_dual_max_f32 v96, 0, v41 :: v_dual_max_f32 v97, 0, v42
	v_dual_max_f32 v38, v92, v92 :: v_dual_max_f32 v39, v91, v91
	v_dual_max_f32 v40, v90, v90 :: v_dual_max_f32 v41, v89, v89
	v_dual_max_f32 v42, v75, v75 :: v_dual_max_f32 v89, 0, v38
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v25, 0, v25
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v33, 0, v33
	v_max_f32_e32 v34, 0, v34
	v_dual_max_f32 v90, 0, v39 :: v_dual_max_f32 v91, 0, v40
	v_dual_max_f32 v92, 0, v41 :: v_dual_max_f32 v105, 0, v42
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v45, v1, v1 :: v_dual_mul_f32 v48, v2, v2
	v_dual_mul_f32 v51, v3, v3 :: v_dual_mul_f32 v52, v4, v4
	v_dual_mul_f32 v53, v5, v5 :: v_dual_mul_f32 v54, v6, v6
	v_dual_mul_f32 v57, v7, v7 :: v_dual_mul_f32 v58, v8, v8
	v_dual_mul_f32 v61, v9, v9 :: v_dual_mul_f32 v62, v10, v10
	v_dual_mul_f32 v65, v11, v11 :: v_dual_mul_f32 v66, v12, v12
	v_dual_mul_f32 v70, v13, v13 :: v_dual_mul_f32 v71, v14, v14
	v_dual_mul_f32 v80, v15, v15 :: v_dual_mul_f32 v75, v16, v16
	v_dual_mul_f32 v74, v17, v17 :: v_dual_mul_f32 v67, v20, v20
	v_dual_mul_f32 v72, v18, v18 :: v_dual_mul_f32 v59, v24, v24
	v_dual_mul_f32 v68, v19, v19 :: v_dual_mul_f32 v63, v22, v22
	v_dual_mul_f32 v64, v21, v21 :: v_dual_mul_f32 v55, v26, v26
	v_dual_mul_f32 v60, v23, v23 :: v_dual_mul_f32 v49, v28, v28
	v_dual_mul_f32 v56, v25, v25 :: v_dual_mul_f32 v39, v35, v35
	v_dual_mul_f32 v50, v27, v27 :: v_dual_mul_f32 v47, v29, v29
	v_dual_mul_f32 v46, v30, v30 :: v_dual_mul_f32 v41, v33, v33
	v_dual_mul_f32 v44, v31, v31 :: v_dual_mul_f32 v37, v37, v37
	v_dual_mul_f32 v42, v32, v32 :: v_dual_mul_f32 v35, v69, v69
	v_dual_mul_f32 v40, v34, v34 :: v_dual_mul_f32 v31, v84, v84
	v_dual_mul_f32 v38, v36, v36 :: v_dual_mul_f32 v33, v82, v82
	v_dual_mul_f32 v36, v43, v43 :: v_dual_mul_f32 v29, v86, v86
	v_dual_mul_f32 v34, v81, v81 :: v_dual_mul_f32 v27, v88, v88
	v_dual_mul_f32 v32, v83, v83 :: v_dual_mul_f32 v25, v104, v104
	v_dual_mul_f32 v30, v85, v85 :: v_dual_mul_f32 v23, v99, v99
	v_dual_mul_f32 v28, v87, v87 :: v_dual_mul_f32 v21, v101, v101
	v_dual_mul_f32 v26, v103, v103 :: v_dual_mul_f32 v19, v93, v93
	v_dual_mul_f32 v24, v98, v98 :: v_dual_mul_f32 v17, v95, v95
	v_dual_mul_f32 v22, v100, v100 :: v_dual_mul_f32 v15, v97, v97
	v_dual_mul_f32 v20, v102, v102 :: v_dual_mul_f32 v9, v89, v89
	v_dual_mul_f32 v18, v94, v94 :: v_dual_mul_f32 v7, v91, v91
	v_dual_mul_f32 v16, v96, v96 :: v_dual_mov_b32 v1, v79
	v_dual_mul_f32 v8, v90, v90 :: v_dual_mov_b32 v3, v73
	v_mul_f32_e32 v6, v92, v92
	v_mul_f32_e32 v4, v105, v105
.LBB0_9:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v48, v48 :: v_dual_max_f32 v5, v45, v45
	v_max3_f32 v10, v52, v53, v54
	v_max3_f32 v11, v62, v65, v66
	v_max3_f32 v12, v70, v71, v80
	v_max_f32_e32 v13, v74, v74
	v_dual_max_f32 v2, v5, v2 :: v_dual_max_f32 v5, v72, v72
	v_max3_f32 v69, v55, v50, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v11, v11, v12, v75
	v_max_f32_e32 v12, v41, v41
	v_max3_f32 v2, v2, v51, v10
	v_dual_max_f32 v10, v40, v40 :: v_dual_max_f32 v5, v13, v5
	v_max3_f32 v13, v67, v64, v63
	v_max3_f32 v73, v47, v46, v44
	v_max3_f32 v79, v32, v31, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v10, v12, v10
	v_max3_f32 v12, v38, v37, v36
	v_max3_f32 v81, v29, v28, v27
	v_max3_f32 v14, v57, v58, v61
	v_max3_f32 v5, v5, v68, v13
	v_max3_f32 v13, v69, v73, v42
	v_max3_f32 v69, v35, v34, v33
	v_max3_f32 v10, v10, v39, v12
	v_max3_f32 v12, v79, v81, v26
	v_max3_f32 v43, v60, v59, v56
	v_max_f32_e32 v73, v24, v24
	v_max_f32_e32 v79, v25, v25
	v_max3_f32 v2, v2, v14, v11
	v_max3_f32 v10, v10, v69, v12
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v5, v5, v43, v13
	v_max_f32_e32 v11, v79, v73
	v_max3_f32 v14, v16, v15, v9
	v_max3_f32 v43, v8, v7, v6
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v69, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v73, v10, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v12, v22, v21, v20
	v_max3_f32 v13, v19, v18, v17
	v_max3_f32 v14, v14, v43, v4
	v_max_f32_e32 v43, v69, v69
	v_max_f32_e32 v69, v73, v73
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp9:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
	s_mov_b32 s15, 0x31027000
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v83, v10, v69 :: v_dual_and_b32 v10, 4, v0
	v_dual_max_f32 v81, v2, v43 :: v_dual_and_b32 v2, 3, v0
	v_max3_f32 v11, v11, v23, v12
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v12, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v43, 0x80, v0
	v_and_b32_e32 v69, 8, v0
	v_lshl_add_u32 v86, v10, 6, 0
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v14, v11, v13, v14
	v_max_f32_e32 v12, v12, v12
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v13, 0x60, v0
	v_lshrrev_b32_e32 v85, 3, v43
	s_mov_b32 s14, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v5, v12
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v5, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v12, v2, 9, 0
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v11, 5, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_add_u32 v73, v10, 2, v12
	v_lshlrev_b32_e32 v12, 1, v43
	v_lshl_add_u32 v2, v2, 4, 0
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v84, v14, v5
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v1, 0x680, v1, v11
	v_xor_b32_e32 v79, v11, v13
	v_lshl_add_u32 v73, v69, 4, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v1, v1, v13
	v_add3_u32 v5, v73, v12, v79
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v1, v86, v85, v1
	ds_store_b128 v5, v[81:84]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v81
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v81, v81
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v5, v82
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v79, v82, v82 :: v_dual_mov_b32 v14, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v14, v14, v14
	v_max_f32_e32 v1, v73, v1
	v_max_f32_e32 v73, v83, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v82, v1 :: v_dual_add_nc_u32 v43, 0, v43
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v14, v73, v14 :: v_dual_lshlrev_b32 v69, 3, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v82
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v82, v1
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v5, v79, v5
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v83, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v83, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v5, v5, v83
	v_max_f32_e32 v81, v84, v84
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v84, v84 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v83, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v84, v84
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v81, v79
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v79, v14
	v_mov_b32_e32 v81, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v79, v79
	v_dual_max_f32 v81, v81, v81 :: v_dual_max_f32 v14, v14, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v73, v73, v81
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v79, v14
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v81, v82, v82 :: v_dual_max_f32 v82, v83, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v84, v73
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v1, v81
	v_max_f32_e32 v82, v5, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v79, v79
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v79, 1, v13
.Ltmp46:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v13, v78, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v84, v84
	v_max_f32_e32 v83, v14, v1
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 5, v10
.Ltmp49:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 4, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v84, v73, v5
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v5, v43, v79, v69
	v_add3_u32 v1, v2, v1, v69
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp52:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v69, 32, v10
	v_or_b32_e32 v73, 16, v10
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v5, v[81:84]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v1
.Ltmp54:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v81, v81
	v_max_f32_e32 v79, v83, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v5, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v10
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v79, 0x2b8cbccc, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v14, null, 0x40e00000, 0x40e00000, v5
	v_div_scale_f32 v83, vcc_lo, v5, 0x40e00000, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s28, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v43, v14
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s29, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v79
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s0, s28, v69
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v69, v82, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s29, 0, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v81, -v14, v43, 1.0
	v_rcp_f32_e32 v88, v87
	v_max_f32_e32 v69, 0x2b8cbccc, v69
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[30:31], v[1:2]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[85:86]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v43, v81, v43
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s0, s28, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v82, null, s29, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v89, v83, v43
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[34:35], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, v84, v84
	v_div_scale_f32 v73, null, 0x40e00000, 0x40e00000, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v1, -v14, v89, v83
	v_fma_f32 v84, -v87, v88, 1.0
	v_max_f32_e32 v90, 0x2b8cbccc, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v73
	v_div_scale_f32 v2, s7, v79, 0x40e00000, v79
	v_dual_fmac_f32 v89, v1, v43 :: v_dual_fmac_f32 v88, v84, v88
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[30:31], v[85:86]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v85.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[34:35], v[81:82]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v14, v89, v83
	v_div_scale_f32 v14, null, 0x40e00000, 0x40e00000, v90
	v_fma_f32 v84, -v73, v91, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[30:31], v[81:82]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v43, v89
	v_rcp_f32_e32 v83, v14
	v_mul_f32_e32 v43, v2, v88
	v_fmac_f32_e32 v91, v84, v91
	v_div_scale_f32 v84, s8, v69, 0x40e00000, v69
	v_div_fixup_f32 v1, v1, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v5, -v87, v43, v2
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v89, v84, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v14, v83, 1.0
	v_fmac_f32_e32 v43, v5, v88
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v5.h, v85.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v81, -v73, v89, v84
	v_fmac_f32_e32 v83, v86, v83
	v_div_scale_f32 v86, s9, v90, 0x40e00000, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v5, 1, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v89, v81, v91
	v_fma_f32 v2, -v87, v43, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v82, v86, v83
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v1, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v73, -v73, v89, v84
	v_div_fmas_f32 v43, v2, v88, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v81, -v14, v82, v86
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v87, 0xffff0000, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v73, v73, v91, v89
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v82, v81, v83
	v_div_fixup_f32 v43, v43, 0x40e00000, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v87, v87, v45
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v69, v73, 0x40e00000, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v14, -v14, v82, v86
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v85.l, v43.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v84, v81
	v_div_scale_f32 v73, null, v87, v87, v48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v14, v14, v83, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s7, s28, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s29, 0, s7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v83, v14, 0x40e00000, v90
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v79, 1, v85
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v82, -v81, v84, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v14.l, v69.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v73
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v14.h, v85.h
	v_mov_b16_e32 v85.l, v83.h
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[34:35], v[1:2]
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v82, v84
	v_div_scale_f32 v82, vcc_lo, v45, v87, v45
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[30:31], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v43, v79, 0x7fff
	v_and_b32_e32 v2, 1, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v89, null, v87, v87, v51
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v79, 1, v85
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v90, null, v87, v87, v52
	v_mul_f32_e32 v88, v82, v84
	v_fma_f32 v43, -v73, v86, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v14, v69, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v85, v89
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v83, v79, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v83, v90
	v_fma_f32 v69, -v81, v88, v82
	v_fmac_f32_e32 v86, v43, v86
	v_div_scale_f32 v91, s9, v48, v87, v48
	v_div_scale_f32 v95, null, v87, v87, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v69, v84
	v_mul_f32_e32 v92, v91, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v89, v85, 1.0
	v_fma_f32 v94, -v90, v83, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v79, 0xffff0000, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v81, v88, v82
	v_fma_f32 v82, -v73, v92, v91
	v_fmac_f32_e32 v85, v93, v85
	v_div_scale_f32 v93, s10, v51, v87, v51
	v_fmac_f32_e32 v83, v94, v83
	v_div_scale_f32 v94, null, v87, v87, v54
	v_div_fmas_f32 v81, v81, v84, v88
	v_fmac_f32_e32 v92, v82, v86
	v_mul_f32_e32 v82, v93, v85
	v_rcp_f32_e32 v84, v95
	v_div_scale_f32 v88, s11, v52, v87, v52
	v_rcp_f32_e32 v96, v94
	v_div_fixup_f32 v45, v81, v87, v45
	v_fma_f32 v73, -v73, v92, v91
	v_fma_f32 v81, -v89, v82, v93
	v_mul_f32_e32 v91, v88, v83
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v95, v84, 1.0
	v_div_fmas_f32 v73, v73, v86, v92
	v_fmac_f32_e32 v82, v81, v85
	v_fma_f32 v81, -v90, v91, v88
	v_fma_f32 v92, -v94, v96, 1.0
	v_fmac_f32_e32 v84, v97, v84
	v_div_scale_f32 v86, s9, v53, v87, v53
	v_div_fixup_f32 v48, v73, v87, v48
	v_fma_f32 v73, -v89, v82, v93
	v_dual_fmac_f32 v91, v81, v83 :: v_dual_fmac_f32 v96, v92, v96
	v_div_scale_f32 v92, null, v87, v87, v57
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v81, v86, v84
	v_div_scale_f32 v89, s12, v54, v87, v54
	v_div_fmas_f32 v73, v73, v85, v82
	v_fma_f32 v82, -v90, v91, v88
	v_rcp_f32_e32 v88, v92
	v_div_scale_f32 v93, null, v87, v87, v58
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v85, -v95, v81, v86
	v_mul_f32_e32 v90, v89, v96
	v_div_fmas_f32 v82, v82, v83, v91
	v_rcp_f32_e32 v83, v93
	v_div_fixup_f32 v51, v73, v87, v51
	v_fmac_f32_e32 v81, v85, v84
	v_fma_f32 v85, -v94, v90, v89
	v_fma_f32 v91, -v92, v88, 1.0
	v_div_fixup_f32 v52, v82, v87, v52
	v_div_scale_f32 v82, s10, v57, v87, v57
	v_fma_f32 v73, -v95, v81, v86
	v_fmac_f32_e32 v90, v85, v96
	v_fmac_f32_e32 v88, v91, v88
	v_fma_f32 v85, -v93, v83, 1.0
	v_div_scale_f32 v86, null, v87, v87, v61
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v91, null, v87, v87, v62
	v_div_fmas_f32 v73, v73, v84, v81
	v_fma_f32 v81, -v94, v90, v89
	v_dual_mul_f32 v84, v82, v88 :: v_dual_fmac_f32 v83, v85, v83
	v_rcp_f32_e32 v85, v86
	v_div_scale_f32 v89, s9, v58, v87, v58
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v53, v73, v87, v53
	v_div_fmas_f32 v81, v81, v96, v90
	v_fma_f32 v90, -v92, v84, v82
	v_mul_f32_e32 v94, v89, v83
	v_rcp_f32_e32 v96, v91
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v86, v85, 1.0
	v_fmac_f32_e32 v84, v90, v88
	v_fma_f32 v73, -v93, v94, v89
	v_div_scale_f32 v90, null, v87, v87, v65
	v_div_fixup_f32 v54, v81, v87, v54
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v81, s11, v61, v87, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v91, v96, 1.0
	v_fma_f32 v82, -v92, v84, v82
	v_fmac_f32_e32 v94, v73, v83
	v_rcp_f32_e32 v92, v90
	v_dual_mul_f32 v73, v81, v85 :: v_dual_fmac_f32 v96, v95, v96
	v_div_scale_f32 v95, s12, v62, v87, v62
	v_div_fmas_f32 v82, v82, v88, v84
	v_fma_f32 v84, -v93, v94, v89
	v_div_scale_f32 v97, null, v87, v87, v66
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v86, v73, v81
	v_mul_f32_e32 v89, v95, v96
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v90, v92, 1.0
	v_div_fmas_f32 v83, v84, v83, v94
	v_rcp_f32_e32 v84, v97
	v_fmac_f32_e32 v73, v88, v85
	v_fma_f32 v88, -v91, v89, v95
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, s9, v65, v87, v65
	v_div_fixup_f32 v57, v82, v87, v57
	v_div_fixup_f32 v58, v83, v87, v58
	v_fma_f32 v81, -v86, v73, v81
	v_fmac_f32_e32 v89, v88, v96
	v_mul_f32_e32 v82, v93, v92
	v_fma_f32 v83, -v97, v84, 1.0
	v_div_scale_f32 v86, null, v87, v87, v70
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v88, s10, v66, v87, v66
	v_div_fmas_f32 v73, v81, v85, v73
	v_fma_f32 v81, -v91, v89, v95
	v_fma_f32 v85, -v90, v82, v93
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v91, null, v87, v87, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v85, v92
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v61, v73, v87, v61
	v_rcp_f32_e32 v85, v91
	v_div_fmas_f32 v81, v81, v96, v89
	v_mul_f32_e32 v89, v88, v84
	v_fma_f32 v73, -v90, v82, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v86, v83, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v62, v81, v87, v62
	v_fma_f32 v81, -v97, v89, v88
	v_div_scale_f32 v90, s11, v70, v87, v70
	v_fmac_f32_e32 v83, v94, v83
	v_fma_f32 v93, -v91, v85, 1.0
	v_div_scale_f32 v94, null, v87, v87, v80
	v_div_fmas_f32 v73, v73, v92, v82
	v_fmac_f32_e32 v89, v81, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v93, v85
	v_rcp_f32_e32 v82, v94
	v_div_scale_f32 v93, null, v87, v87, v75
	v_mul_f32_e32 v81, v90, v83
	v_div_scale_f32 v92, s9, v71, v87, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v93
	v_div_fixup_f32 v65, v73, v87, v65
	v_fma_f32 v73, -v97, v89, v88
	v_fma_f32 v88, -v86, v81, v90
	v_mul_f32_e32 v95, v92, v85
	v_fma_f32 v97, -v94, v82, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fmas_f32 v73, v73, v84, v89
	v_fmac_f32_e32 v81, v88, v83
	v_fma_f32 v84, -v91, v95, v92
	v_fmac_f32_e32 v82, v97, v82
	v_div_scale_f32 v88, s10, v80, v87, v80
	v_fma_f32 v89, -v93, v96, 1.0
	v_div_fixup_f32 v66, v73, v87, v66
	v_fma_f32 v73, -v86, v81, v90
	v_fmac_f32_e32 v95, v84, v85
	v_mul_f32_e32 v84, v88, v82
	v_fmac_f32_e32 v96, v89, v96
	v_div_scale_f32 v89, null, v79, v79, v74
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v86, s12, v75, v87, v75
	v_div_fmas_f32 v73, v73, v83, v81
	v_fma_f32 v81, -v91, v95, v92
	v_fma_f32 v83, -v94, v84, v88
	v_rcp_f32_e32 v90, v89
	v_div_scale_f32 v92, null, v79, v79, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v86, v96 :: v_dual_fmac_f32 v84, v83, v82
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v83, v92
	v_div_fmas_f32 v81, v81, v85, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v93, v91, v86
	v_div_fixup_f32 v70, v73, v87, v70
	v_fma_f32 v95, -v89, v90, 1.0
	v_fma_f32 v73, -v94, v84, v88
	v_div_fixup_f32 v71, v81, v87, v71
	v_fmac_f32_e32 v91, v85, v96
	v_div_scale_f32 v81, s9, v74, v79, v74
	v_fmac_f32_e32 v90, v95, v90
	v_fma_f32 v85, -v92, v83, 1.0
	v_div_scale_f32 v88, null, v79, v79, v68
	s_mov_b32 vcc_lo, s10
	v_div_fmas_f32 v73, v73, v82, v84
	v_fma_f32 v82, -v93, v91, v86
	v_mul_f32_e32 v84, v81, v90
	v_fmac_f32_e32 v83, v85, v83
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v86, s10, v72, v79, v72
	v_div_fmas_f32 v82, v82, v96, v91
	v_fma_f32 v91, -v89, v84, v81
	v_div_fixup_f32 v73, v73, v87, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v94, v86, v83
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v75, v82, v87, v75
	v_fma_f32 v95, -v88, v85, 1.0
	v_fmac_f32_e32 v84, v91, v90
	v_div_scale_f32 v87, null, v79, v79, v64
	v_fma_f32 v80, -v92, v94, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v82, s11, v68, v79, v68
	v_fma_f32 v81, -v89, v84, v81
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v94, v80, v83
	v_mul_f32_e32 v80, v82, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v81, v81, v90, v84
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v84, -v92, v94, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v88, v80, v82
	v_div_fixup_f32 v74, v81, v79, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v87, v89, 1.0
	v_div_fmas_f32 v83, v84, v83, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v86, v85
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, s9, v64, v79, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v88, v80, v82
	v_mul_f32_e32 v82, v92, v89
	v_div_scale_f32 v93, null, v79, v79, v67
	v_div_scale_f32 v95, null, v79, v79, v63
	v_div_fixup_f32 v72, v83, v79, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v96, v93
	v_div_fmas_f32 v80, v81, v85, v80
	v_rcp_f32_e32 v84, v95
	v_fma_f32 v85, -v87, v82, v92
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v43, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v88, s10, v63, v79, v63
	v_div_fixup_f32 v68, v80, v79, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v82, v85, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v93, v96, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v95, v84, 1.0
	v_fma_f32 v80, -v87, v82, v92
	v_div_scale_f32 v87, s11, v60, v79, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v91, s12, v67, v79, v67
	v_fmac_f32_e32 v84, v83, v84
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v90, v91, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v93, v90, v91
	v_fmac_f32_e32 v90, v86, v96
	v_div_scale_f32 v86, null, v79, v79, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v93, v90, v91
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v91, null, v79, v79, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v81, v81, v96, v90
	v_mul_f32_e32 v90, v88, v84
	v_rcp_f32_e32 v85, v91
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v67, v81, v79, v67
	v_fma_f32 v93, -v86, v83, 1.0
	v_fma_f32 v81, -v95, v90, v88
	v_div_fmas_f32 v80, v80, v89, v82
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v69, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v89, s9, v59, v79, v59
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v79, v79, v56
	v_fma_f32 v92, -v91, v85, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v81, v84 :: v_dual_mul_f32 v81, v87, v83
	v_rcp_f32_e32 v82, v93
	v_div_fixup_f32 v64, v80, v79, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v92, null, v79, v79, v55
	v_fma_f32 v80, -v95, v90, v88
	v_fma_f32 v88, -v86, v81, v87
	v_mul_f32_e32 v94, v89, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v95, v92
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v96, -v93, v82, 1.0
	v_div_fmas_f32 v80, v80, v84, v90
	v_fmac_f32_e32 v81, v88, v83
	v_fma_f32 v84, -v91, v94, v89
	v_div_scale_f32 v88, s10, v56, v79, v56
	v_fmac_f32_e32 v82, v96, v82
	v_div_fixup_f32 v63, v80, v79, v63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v92, v95, 1.0
	v_fma_f32 v80, -v86, v81, v87
	v_fmac_f32_e32 v94, v84, v85
	v_mul_f32_e32 v84, v88, v82
	v_div_scale_f32 v87, null, v79, v79, v50
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v86, s12, v55, v79, v55
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v91, v94, v89
	v_fma_f32 v83, -v93, v84, v88
	v_rcp_f32_e32 v89, v87
	v_div_scale_f32 v91, null, v79, v79, v49
	v_mul_f32_e32 v90, v86, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v83, v82
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v83, v91
	v_div_fmas_f32 v81, v81, v85, v94
	v_fma_f32 v85, -v92, v90, v86
	v_div_fixup_f32 v60, v80, v79, v60
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v89, 1.0
	v_fma_f32 v80, -v93, v84, v88
	v_div_fixup_f32 v59, v81, v79, v59
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v81, s9, v50, v79, v50
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v85, -v91, v83, 1.0
	v_div_scale_f32 v88, null, v79, v79, v47
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v96, null, v79, v79, v42
	v_div_fmas_f32 v80, v80, v82, v84
	v_fma_f32 v82, -v92, v90, v86
	v_mul_f32_e32 v84, v81, v89
	v_fmac_f32_e32 v83, v85, v83
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v86, s10, v49, v79, v49
	v_div_scale_f32 v92, null, v79, v79, v46
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v93, v86, v83
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v87, v84, v81
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v85, 1.0
	v_div_fixup_f32 v56, v80, v79, v56
	v_fma_f32 v80, -v91, v93, v86
	v_fmac_f32_e32 v84, v90, v89
	v_div_fixup_f32 v55, v82, v79, v55
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v82, s11, v47, v79, v47
	v_div_scale_f32 v90, null, v79, v79, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v81, -v87, v84, v81
	v_fmac_f32_e32 v93, v80, v83
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v80, v82, v85
	v_rcp_f32_e32 v87, v90
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s12, v46, v79, v46
	v_div_fmas_f32 v81, v81, v89, v84
	v_fma_f32 v84, -v91, v93, v86
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v86, -v88, v80, v82
	v_mul_f32_e32 v89, v94, v95
	v_div_fixup_f32 v50, v81, v79, v50
	v_div_fmas_f32 v83, v84, v83, v93
	v_rcp_f32_e32 v84, v96
	v_fma_f32 v91, -v90, v87, 1.0
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v86, -v92, v89, v94
	v_div_fixup_f32 v49, v83, v79, v49
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s9, v44, v79, v44
	v_fmac_f32_e32 v89, v86, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_scale_f32 v86, null, v69, v69, v41
	v_fma_f32 v81, -v88, v80, v82
	v_mul_f32_e32 v82, v91, v87
	v_fmac_f32_e32 v84, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v88, s10, v42, v79, v42
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v81, -v92, v89, v94
	v_fma_f32 v85, -v90, v82, v91
	v_div_scale_f32 v92, null, v69, v69, v40
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v47, v80, v79, v47
	v_fmac_f32_e32 v82, v85, v87
	v_rcp_f32_e32 v85, v92
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_fmas_f32 v81, v81, v95, v89
	v_mul_f32_e32 v89, v88, v84
	v_fma_f32 v80, -v90, v82, v91
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v69, v69, v39
	v_div_fixup_f32 v46, v81, v79, v46
	v_fma_f32 v81, -v96, v89, v88
	v_div_scale_f32 v90, s11, v41, v69, v41
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_fmas_f32 v80, v80, v87, v82
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v89, v81, v84
	v_mul_f32_e32 v81, v90, v83
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v87, s9, v40, v69, v40
	v_div_scale_f32 v91, null, v69, v69, v38
	v_div_fixup_f32 v44, v80, v79, v44
	v_fma_f32 v80, -v96, v89, v88
	v_fma_f32 v88, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v85
	v_rcp_f32_e32 v95, v91
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v81, v88, v83
	v_div_fmas_f32 v80, v80, v84, v89
	v_fma_f32 v84, -v92, v94, v87
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s10, v39, v69, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v42, v80, v79, v42
	v_fma_f32 v89, -v91, v95, 1.0
	v_fma_f32 v79, -v86, v81, v90
	v_fmac_f32_e32 v94, v84, v85
	v_mul_f32_e32 v80, v88, v82
	v_div_scale_f32 v86, null, v69, v69, v37
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v84, s12, v38, v69, v38
	v_div_fmas_f32 v79, v79, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v80, v88
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v90, null, v69, v69, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v89, v84, v95 :: v_dual_fmac_f32 v80, v83, v82
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v81, v81, v85, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v91, v89, v84
	v_div_fixup_f32 v41, v79, v69, v41
	v_fma_f32 v92, -v86, v87, 1.0
	v_fma_f32 v79, -v93, v80, v88
	v_div_fixup_f32 v40, v81, v69, v40
	v_fmac_f32_e32 v89, v85, v95
	v_div_scale_f32 v81, s9, v37, v69, v37
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v85, -v90, v83, 1.0
	v_div_scale_f32 v88, null, v69, v69, v35
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v89, v84
	v_mul_f32_e32 v82, v81, v87
	v_fmac_f32_e32 v83, v85, v83
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v85, s10, v36, v69, v36
	v_div_scale_f32 v91, null, v69, v69, v34
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v92, v85, v83
	v_div_fmas_f32 v80, v80, v95, v89
	v_fma_f32 v89, -v86, v82, v81
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v84, 1.0
	v_div_fixup_f32 v39, v79, v69, v39
	v_fma_f32 v79, -v90, v92, v85
	v_fmac_f32_e32 v82, v89, v87
	v_div_scale_f32 v89, null, v69, v69, v33
	v_div_fixup_f32 v38, v80, v69, v38
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v80, s11, v35, v69, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v81, -v86, v82, v81
	v_fmac_f32_e32 v92, v79, v83
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s9
	v_dual_mul_f32 v79, v80, v84 :: v_dual_fmac_f32 v94, v93, v94
	v_div_scale_f32 v93, s12, v34, v69, v34
	v_div_fmas_f32 v81, v81, v87, v82
	v_fma_f32 v82, -v90, v92, v85
	v_div_scale_f32 v95, null, v69, v69, v32
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v85, -v88, v79, v80
	v_mul_f32_e32 v87, v93, v94
	v_fma_f32 v90, -v89, v86, 1.0
	v_div_fmas_f32 v82, v82, v83, v92
	v_rcp_f32_e32 v83, v95
	v_fmac_f32_e32 v79, v85, v84
	v_fma_f32 v85, -v91, v87, v93
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s9, v33, v69, v33
	v_div_fixup_f32 v37, v81, v69, v37
	v_div_fixup_f32 v36, v82, v69, v36
	v_fma_f32 v80, -v88, v79, v80
	v_fmac_f32_e32 v87, v85, v94
	v_mul_f32_e32 v81, v90, v86
	v_fma_f32 v82, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v69, v69, v31
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v88, s10, v32, v69, v32
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v91, v87, v93
	v_fma_f32 v84, -v89, v81, v90
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v91, null, v69, v69, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v84, v86
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v35, v79, v69, v35
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v80, v80, v94, v87
	v_mul_f32_e32 v87, v88, v83
	v_fma_f32 v79, -v89, v81, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v34, v80, v69, v34
	v_fma_f32 v80, -v95, v87, v88
	v_div_scale_f32 v89, s11, v31, v69, v31
	v_fmac_f32_e32 v82, v92, v82
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_scale_f32 v92, null, v69, v69, v29
	v_div_fmas_f32 v79, v79, v86, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v80, v83 :: v_dual_fmac_f32 v84, v90, v84
	v_rcp_f32_e32 v81, v92
	v_div_scale_f32 v90, null, v69, v69, v28
	v_mul_f32_e32 v80, v89, v82
	v_div_scale_f32 v86, s9, v30, v69, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v94, v90
	v_div_fixup_f32 v33, v79, v69, v33
	v_fma_f32 v79, -v95, v87, v88
	v_fma_f32 v88, -v85, v80, v89
	v_mul_f32_e32 v93, v86, v84
	v_fma_f32 v95, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v87
	v_fmac_f32_e32 v80, v88, v82
	v_fma_f32 v83, -v91, v93, v86
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v87, s10, v29, v69, v29
	v_fma_f32 v88, -v90, v94, 1.0
	v_div_fixup_f32 v32, v79, v69, v32
	v_fma_f32 v79, -v85, v80, v89
	v_fmac_f32_e32 v93, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v83, v87, v81 :: v_dual_fmac_f32 v94, v88, v94
	v_div_scale_f32 v88, null, v69, v69, v27
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s12, v28, v69, v28
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v93, v86
	v_fma_f32 v82, -v92, v83, v87
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v91, null, v69, v69, v26
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v81
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v82, v91
	v_div_fmas_f32 v80, v80, v84, v93
	v_fma_f32 v84, -v90, v89, v85
	v_div_fixup_f32 v31, v79, v69, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v86, 1.0
	v_fma_f32 v79, -v92, v83, v87
	v_div_fixup_f32 v30, v80, v69, v30
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v80, s9, v27, v69, v27
	v_fmac_f32_e32 v86, v93, v86
	v_fma_f32 v84, -v91, v82, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v92, null, v43, v43, v24
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v81, -v90, v89, v85
	v_mul_f32_e32 v83, v80, v86
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, null, v43, v43, v25
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v85, s10, v26, v69, v26
	v_div_fmas_f32 v81, v81, v94, v89
	v_rcp_f32_e32 v87, v84
	v_fma_f32 v89, -v88, v83, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v85, v82
	v_div_fixup_f32 v29, v79, v69, v29
	v_div_fixup_f32 v28, v81, v69, v28
	v_rcp_f32_e32 v81, v92
	v_fmac_f32_e32 v83, v89, v86
	v_fma_f32 v79, -v91, v90, v85
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v94, null, v43, v43, v22
	v_fma_f32 v89, -v84, v87, 1.0
	v_fma_f32 v80, -v88, v83, v80
	v_div_scale_f32 v88, null, v43, v43, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v79, v82 :: v_dual_fmac_f32 v87, v89, v87
	v_div_scale_f32 v79, s11, v25, v43, v25
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v93, -v92, v81, 1.0
	v_div_fmas_f32 v80, v80, v86, v83
	v_fma_f32 v83, -v91, v90, v85
	v_mul_f32_e32 v85, v79, v87
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v86, s9, v24, v43, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v84, v85, v79
	v_fma_f32 v91, -v88, v89, 1.0
	v_rcp_f32_e32 v96, v94
	v_div_fmas_f32 v82, v83, v82, v90
	v_mul_f32_e32 v95, v86, v81
	v_fmac_f32_e32 v85, v93, v87
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s12, v23, v43, v23
	v_div_fixup_f32 v27, v80, v69, v27
	v_div_fixup_f32 v26, v82, v69, v26
	v_fma_f32 v69, -v84, v85, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v91, v89
	v_div_scale_f32 v82, null, v43, v43, v21
	v_fma_f32 v83, -v92, v95, v86
	v_fma_f32 v80, -v94, v96, 1.0
	v_fma_f32 v79, -v88, v90, v91
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v95, v83, v81 :: v_dual_fmac_f32 v96, v80, v96
	v_fmac_f32_e32 v90, v79, v89
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v80, s10, v22, v43, v22
	v_div_fmas_f32 v69, v69, v87, v85
	v_fma_f32 v83, -v92, v95, v86
	v_div_scale_f32 v85, null, v43, v43, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v80, v96
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v25, v69, v43, v25
	v_fma_f32 v86, -v82, v79, 1.0
	v_div_fmas_f32 v81, v83, v81, v95
	v_fma_f32 v83, -v88, v90, v91
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v88, -v94, v84, v80
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s9, v21, v43, v21
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v84, v88, v96
	v_div_fmas_f32 v83, v83, v89, v90
	v_mul_f32_e32 v69, v86, v79
	v_div_fixup_f32 v24, v81, v43, v24
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v85, v87, 1.0
	v_fma_f32 v80, -v94, v84, v80
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v88, -v82, v69, v86
	v_div_fixup_f32 v23, v83, v43, v23
	v_div_scale_f32 v83, null, v43, v43, v19
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v81, s11, v20, v43, v20
	v_div_fmas_f32 v80, v80, v96, v84
	v_fmac_f32_e32 v69, v88, v79
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v81, v87
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v22, v80, v43, v22
	v_fma_f32 v80, -v82, v69, v86
	v_div_scale_f32 v88, null, v43, v43, v18
	v_fma_f32 v82, -v85, v84, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v69, v80, v79, v69
	v_div_scale_f32 v79, null, v43, v43, v17
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v79
	v_div_scale_f32 v80, s9, v19, v43, v19
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v43, v43, v16
	v_div_fixup_f32 v21, v69, v43, v21
	v_fma_f32 v81, -v85, v84, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v88, v90, 1.0
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v79, v82, 1.0
	v_mul_f32_e32 v85, v80, v89
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v90, v69, v90
	v_div_scale_f32 v69, s10, v18, v43, v18
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v43, v43, v15
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v83, v85, v80
	v_mul_f32_e32 v87, v69, v90
	v_div_scale_f32 v93, s11, v17, v43, v17
	v_fma_f32 v94, -v86, v92, 1.0
	v_rcp_f32_e32 v95, v91
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v69
	v_mul_f32_e32 v96, v93, v82
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s12, v16, v43, v16
	v_div_fixup_f32 v20, v81, v43, v20
	v_fma_f32 v80, -v83, v85, v80
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v81, -v79, v96, v93
	v_mul_f32_e32 v83, v94, v92
	v_fma_f32 v84, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v69, -v88, v87, v69
	v_fmac_f32_e32 v96, v81, v82
	v_fma_f32 v81, -v86, v83, v94
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s9, v15, v43, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v79, v96, v93
	v_fmac_f32_e32 v83, v81, v92
	v_div_fmas_f32 v80, v80, v89, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v81, v84, v95
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, null, v43, v43, v9
	v_div_fmas_f32 v69, v69, v90, v87
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v19, v80, v43, v19
	v_div_fmas_f32 v79, v79, v82, v96
	v_fma_f32 v82, -v86, v83, v94
	v_fma_f32 v86, -v91, v81, v84
	v_rcp_f32_e32 v87, v85
	v_div_fixup_f32 v18, v69, v43, v18
	v_div_fixup_f32 v17, v79, v43, v17
	v_div_scale_f32 v79, null, v43, v43, v8
	v_fmac_f32_e32 v81, v86, v95
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v89, null, v43, v43, v4
	v_div_fmas_f32 v82, v82, v92, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v69, -v91, v81, v84
	v_fma_f32 v80, -v85, v87, 1.0
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v91, v89
	v_div_fixup_f32 v16, v82, v43, v16
	v_div_fmas_f32 v69, v69, v95, v81
	v_rcp_f32_e32 v81, v79
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v80, null, v43, v43, v7
	v_div_scale_f32 v82, null, v43, v43, v6
	v_div_scale_f32 v83, vcc_lo, v9, v43, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v84, v80
	v_rcp_f32_e32 v86, v82
	v_div_fixup_f32 v15, v69, v43, v15
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v69, -v79, v81, 1.0
	v_mul_f32_e32 v88, v83, v87
	v_fma_f32 v95, -v89, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v69, v81
	v_div_scale_f32 v69, s9, v8, v43, v8
	v_fma_f32 v90, -v80, v84, 1.0
	v_fma_f32 v93, -v82, v86, 1.0
	v_fma_f32 v92, -v85, v88, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v94, v69, v81 :: v_dual_fmac_f32 v91, v95, v91
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s10, v7, v43, v7
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s11, v6, v43, v6
	v_fmac_f32_e32 v88, v92, v87
	v_fma_f32 v92, -v79, v94, v69
	v_div_scale_f32 v95, s12, v4, v43, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v96, v90, v84 :: v_dual_mul_f32 v97, v93, v86
	v_fmac_f32_e32 v94, v92, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v98, v95, v91
	v_fma_f32 v83, -v85, v88, v83
	v_fma_f32 v85, -v80, v96, v90
	v_fma_f32 v92, -v82, v97, v93
	v_fma_f32 v69, -v79, v94, v69
	v_fma_f32 v79, -v89, v98, v95
	v_div_fmas_f32 v83, v83, v87, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v96, v85, v84 :: v_dual_fmac_f32 v97, v92, v86
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v98, v79, v91
	v_div_fmas_f32 v69, v69, v81, v94
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v80, -v80, v96, v90
	v_fma_f32 v79, -v82, v97, v93
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v81, -v89, v98, v95
	v_div_fixup_f32 v8, v69, v43, v8
	v_div_fmas_f32 v80, v80, v84, v96
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v86, v97
	s_mov_b32 vcc_lo, s12
	s_mov_b32 s9, 0xc1000000
	v_div_fmas_f32 v81, v81, v91, v98
	v_div_fixup_f32 v9, v83, v43, v9
	v_div_fixup_f32 v7, v80, v43, v7
	v_div_fixup_f32 v6, v79, v43, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v4, v81, v43, v4
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v45
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v75, v40
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v48
	v_rndne_f32_e32 v48, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v61
	v_rndne_f32_e32 v61, v62
	v_rndne_f32_e32 v62, v65
	v_rndne_f32_e32 v65, v66
	v_rndne_f32_e32 v66, v70
	v_rndne_f32_e32 v70, v73
	v_rndne_f32_e32 v73, v74
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v4, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_med3_f32 v6, v6, s9, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v74, v41
	v_cvt_i32_f32_e32 v94, v24
	v_and_b32_e32 v24, 15, v69
	v_and_b32_e32 v41, 15, v44
	v_and_b32_e32 v44, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v69, 10, v0
	v_and_b32_e32 v75, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v73, v73, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v4, v4, s9, 0x40e00000
	v_cvt_i32_f32_e32 v90, v28
	v_cvt_i32_f32_e32 v92, v26
	v_cvt_i32_f32_e32 v107, v6
	v_and_b32_e32 v6, 15, v43
	v_and_b32_e32 v26, 15, v71
	v_and_b32_e32 v28, 15, v72
	v_and_b32_e32 v43, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v71, 0x1800, v69
	v_lshlrev_b32_e32 v72, 6, v75
	v_lshlrev_b32_e32 v74, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v23, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_med3_f32 v9, v9, s9, 0x40e00000
	v_med3_f32 v8, v8, s9, 0x40e00000
	v_med3_f32 v7, v7, s9, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v79, v39
	v_cvt_i32_f32_e32 v80, v38
	v_cvt_i32_f32_e32 v4, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v78, 0, v71, v72
	v_and_or_b32 v11, 0x1b00, v74, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v21, v21, s9, 0x40e00000
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v85, v33
	v_cvt_i32_f32_e32 v86, v32
	v_cvt_i32_f32_e32 v87, v31
	v_cvt_i32_f32_e32 v88, v30
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_cvt_i32_f32_e32 v89, v29
	v_cvt_i32_f32_e32 v91, v27
	v_cvt_i32_f32_e32 v104, v9
	v_cvt_i32_f32_e32 v105, v8
	v_cvt_i32_f32_e32 v106, v7
	v_and_b32_e32 v8, 15, v48
	v_and_b32_e32 v9, 15, v51
	v_and_b32_e32 v27, 15, v73
	v_and_b32_e32 v29, 15, v68
	v_and_b32_e32 v30, 15, v67
	v_and_b32_e32 v40, 15, v46
	v_and_b32_e32 v46, 15, v80
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v12, v78, v13, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v4, v11, v77, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v7, 15, v45
	v_and_b32_e32 v45, 15, v79
	v_cvt_i32_f32_e32 v81, v37
	v_cvt_i32_f32_e32 v82, v36
	v_cvt_i32_f32_e32 v83, v35
	v_cvt_i32_f32_e32 v96, v22
	v_cvt_i32_f32_e32 v97, v21
	v_cvt_i32_f32_e32 v98, v20
	v_cvt_i32_f32_e32 v99, v19
	v_cvt_i32_f32_e32 v101, v17
	v_cvt_i32_f32_e32 v102, v16
	v_cvt_i32_f32_e32 v103, v15
	v_and_b32_e32 v15, 15, v52
	v_and_b32_e32 v16, 15, v53
	v_and_b32_e32 v17, 15, v54
	v_and_b32_e32 v19, 15, v58
	v_and_b32_e32 v20, 15, v61
	v_and_b32_e32 v21, 15, v62
	v_and_b32_e32 v22, 15, v65
	v_and_b32_e32 v35, 15, v56
	v_and_b32_e32 v36, 15, v55
	v_and_b32_e32 v37, 15, v50
	v_and_b32_e32 v38, 15, v49
	v_and_b32_e32 v51, 15, v85
	v_and_b32_e32 v52, 15, v86
	v_and_b32_e32 v53, 15, v87
	v_and_b32_e32 v54, 15, v88
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v93, v25
	v_cvt_i32_f32_e32 v95, v23
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v12, v[6:9]
	ds_store_b128 v12, v[19:22] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v4
	ds_load_b128 v[19:22], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[27:30]
	ds_store_b128 v12, v[35:38] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v4
	ds_load_b128 v[35:38], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[43:46]
	ds_store_b128 v12, v[51:54] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v4
	ds_load_b128 v[51:54], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v84, v34
	v_cvt_i32_f32_e32 v100, v18
	v_and_b32_e32 v18, 15, v57
	v_and_b32_e32 v33, 15, v60
	v_and_b32_e32 v34, 15, v59
	v_and_b32_e32 v59, 15, v93
	v_and_b32_e32 v60, 15, v94
	v_and_b32_e32 v61, 15, v95
	v_and_b32_e32 v62, 15, v96
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v42, v42
	v_and_b32_e32 v23, 15, v66
	v_and_b32_e32 v25, 15, v70
	v_and_b32_e32 v67, 15, v101
	v_and_b32_e32 v68, 15, v102
	v_and_b32_e32 v69, 15, v103
	v_and_b32_e32 v70, 15, v104
	v_and_b32_e32 v31, 15, v64
	v_and_b32_e32 v32, 15, v63
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[59:62]
	ds_store_b128 v12, v[67:70] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[59:62], v4
	ds_load_b128 v[67:70], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[15:18]
	ds_store_b128 v12, v[23:26] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v4
	ds_load_b128 v[23:26], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v39, 15, v47
	v_and_b32_e32 v42, 15, v42
	v_and_b32_e32 v47, 15, v81
	v_and_b32_e32 v48, 15, v82
	v_and_b32_e32 v49, 15, v83
	v_and_b32_e32 v50, 15, v84
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[31:34]
	ds_store_b128 v12, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v4
	ds_load_b128 v[39:42], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v55, 15, v89
	v_and_b32_e32 v56, 15, v90
	v_and_b32_e32 v57, 15, v91
	v_and_b32_e32 v58, 15, v92
	v_and_b32_e32 v63, 15, v97
	v_and_b32_e32 v64, 15, v98
	v_and_b32_e32 v65, 15, v99
	v_and_b32_e32 v66, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[47:50]
	ds_store_b128 v12, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v4
	ds_load_b128 v[55:58], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v71, 15, v105
	v_and_b32_e32 v72, 15, v106
	v_and_b32_e32 v73, 15, v107
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v13, v21, 4, v8
	v_lshl_or_b32 v21, v36, 4, v28
	v_lshl_or_b32 v28, v51, 4, v43
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v76
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, s28, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[63:66]
	ds_store_b128 v12, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v4
	ds_load_b128 v[71:74], v4 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v4, s37, 7, v43
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v8
	v_add_nc_u32_e32 v11, 32, v8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v19, 4, v6
	v_lshl_or_b32 v7, v20, 4, v7
	v_lshl_or_b32 v19, v22, 4, v9
	v_lshl_or_b32 v15, v23, 4, v15
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v17, v25, 4, v17
	v_lshl_or_b32 v18, v26, 4, v18
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 48, v8
	v_mad_u64_u32 v[8:9], null, v8, s9, v[4:5]
	v_mad_u64_u32 v[9:10], null, v10, s9, v[4:5]
	v_mad_u64_u32 v[10:11], null, v11, s9, v[4:5]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v20, v35, 4, v27
	v_lshl_or_b32 v24, v39, 4, v31
	v_lshl_or_b32 v25, v40, 4, v32
	v_lshl_or_b32 v26, v41, 4, v33
	v_lshl_or_b32 v27, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s9, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v19.l
	v_and_b16 v2.l, 0xff, v13.l
	v_lshlrev_b16 v4.l, 8, v7.l
	v_and_b16 v4.h, 0xff, v6.l
	v_lshlrev_b16 v5.l, 8, v18.l
	v_and_b16 v6.l, 0xff, v17.l
	v_lshlrev_b16 v6.h, 8, v16.l
	v_and_b16 v7.l, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v37, 4, v29
	v_lshl_or_b32 v23, v38, 4, v30
	v_lshl_or_b32 v32, v55, 4, v47
	v_lshl_or_b32 v33, v56, 4, v48
	v_lshl_or_b32 v34, v57, 4, v49
	v_lshl_or_b32 v35, v58, 4, v50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v5.l, 8, v27.l
	v_and_b16 v6.l, 0xff, v26.l
	v_lshlrev_b16 v6.h, 8, v25.l
	v_and_b16 v7.l, 0xff, v24.l
	s_mov_b32 s12, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v52, 4, v44
	v_lshl_or_b32 v30, v53, 4, v45
	v_lshl_or_b32 v31, v54, 4, v46
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v40, v71, 4, v63
	v_lshl_or_b32 v41, v72, 4, v64
	v_lshl_or_b32 v42, v73, 4, v65
	v_lshl_or_b32 v44, v74, 4, v66
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v23.l
	v_and_b16 v2.l, 0xff, v22.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v4.h, 0xff, v20.l
	buffer_store_b64 v[12:13], v8, s[12:15], 0 offen
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v35.l
	v_and_b16 v6.l, 0xff, v34.l
	v_lshlrev_b16 v6.h, 8, v33.l
	v_and_b16 v7.l, 0xff, v32.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v67, 4, v59
	v_lshl_or_b32 v37, v68, 4, v60
	v_lshl_or_b32 v38, v69, 4, v61
	v_lshl_or_b32 v39, v70, 4, v62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v8, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v1.l, 8, v31.l
	v_and_b16 v2.l, 0xff, v30.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v4.h, 0xff, v28.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v44.l
	v_and_b16 v6.l, 0xff, v42.l
	v_lshlrev_b16 v6.h, 8, v41.l
	v_and_b16 v7.l, 0xff, v40.l
	buffer_store_b64 v[12:13], v8, s[12:15], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v39.l
	v_and_b16 v2.l, 0xff, v38.l
	v_lshlrev_b16 v4.l, 8, v37.l
	v_and_b16 v4.h, 0xff, v36.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v7, 2, v75
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v4, 0x80000000, v11, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[8:9], v10, s[12:15], 0 offen
	buffer_store_b64 v[12:13], v4, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v43
	v_mov_b16_e32 v2.l, v14.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v5, v7, v6, v43
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s37, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp55:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 219
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 219
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15392
; TotalNumSgprs: 43
; NumVgprs: 219
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 219
; Occupancy: 6
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     219
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
