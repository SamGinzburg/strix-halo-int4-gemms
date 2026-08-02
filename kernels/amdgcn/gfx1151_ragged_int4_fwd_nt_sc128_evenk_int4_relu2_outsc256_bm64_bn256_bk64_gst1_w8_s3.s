	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	v_and_b32_e32 v71, 16, v0
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
	s_sub_i32 s4, s37, s8
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
	s_sub_i32 s37, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s37, s9
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
	s_load_b64 s[28:29], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s6, s2
	s_addc_u32 s5, s7, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s36, 0
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v5, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_load_b128 s[20:23], s[0:1], 0x40
	s_load_b64 s[30:31], s[4:5], 0x0
	s_load_b64 s[34:35], s[6:7], 0x0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v68, 15, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v69, 0xf0, v0
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v70, 3, v0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v51, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s9, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s28, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s29, 0, s0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v11, 2, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 32
	v_add_co_u32 v3, s0, s28, v11
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	v_add_co_u32 v9, vcc_lo, v1, 48
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s10, s4, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s29, 0, s0
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s11, s5, s3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[30:31], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[34:35], v[1:2]
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v2, s28, v68
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_load_b32 s10, s[10:11], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[30:31], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[34:35], v[3:4]
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v3, 16, v2
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v83, v2, s36
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v4, 32, v2
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v2, 48, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[30:31], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[34:35], v[5:6]
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v5, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v92, v2, s36
	v_dual_mov_b32 v141, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v1, 1, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[30:31], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[34:35], v[7:8]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s24, s37, 8
	v_bfe_u32 v6, v0, 4, 1
	v_dual_mov_b32 v150, 0 :: v_dual_and_b32 v7, 24, v2
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v86, v3, s36
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v3, s24, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[30:31], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[34:35], v[9:10]
	v_dual_mov_b32 v149, 0 :: v_dual_lshlrev_b32 v78, 4, v1
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v8, 3, v0
	v_and_or_b32 v6, v2, 30, v6
	v_dual_mov_b32 v148, 0 :: v_dual_and_b32 v5, 24, v5
	v_lshl_or_b32 v110, v68, 5, v7
	v_dual_mov_b32 v136, 0 :: v_dual_lshlrev_b32 v9, 2, v69
	v_dual_mov_b32 v134, 0 :: v_dual_lshlrev_b32 v1, 5, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v89, v4, s36
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s5, s9, s33
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v4, 0x80, v3
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v10, s28, v11
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s4, s4, s8
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s8, s5, s10
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v114, 2, v6
	v_xor_b32_e32 v5, v8, v5
	v_xor_b32_e32 v6, 8, v110
	v_xor_b32_e32 v7, 16, v110
	v_xor_b32_e32 v8, 24, v110
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v2, 28, v2
	v_add3_u32 v1, 0, v9, v1
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v9, 1, v69
	v_mad_u64_u32 v[65:66], null, v3, s9, s[8:9]
	v_mul_lo_u32 v131, v10, s9
	v_mad_u64_u32 v[66:67], null, v4, s9, s[8:9]
	v_dual_mov_b32 v147, 0 :: v_dual_lshlrev_b32 v80, 3, v70
	v_xor_b32_e32 v116, 4, v114
	v_cmp_eq_u32_e64 s5, 0, v71
	v_or_b32_e32 v126, s24, v0
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v138, 0, v5
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v139, 0, v6
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v140, 0, v7
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v142, 0, v8
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v144, v1, v2
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v146, 0, v9
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v67, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s6, s36, s10
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 s3, s3, s7
	s_mov_b32 s7, 0
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	s_mov_b32 s24, s16
	s_mov_b32 s25, s17
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v72
	v_mov_b32_e32 v3, v72
	v_dual_mov_b32 v4, v72 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v72
	v_dual_mov_b32 v6, v72 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v72
	v_dual_mov_b32 v8, v72 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v72 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v72
	v_dual_mov_b32 v12, v72 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v72
	v_dual_mov_b32 v14, v72 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v72
	v_dual_mov_b32 v16, v72 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v72
	v_mov_b32_e32 v19, v72
	v_mov_b32_e32 v20, v72
	v_mov_b32_e32 v21, v72
	v_mov_b32_e32 v22, v72
	v_mov_b32_e32 v23, v72
	v_mov_b32_e32 v24, v72
	v_mov_b32_e32 v26, v72
	v_mov_b32_e32 v27, v72
	v_mov_b32_e32 v28, v72
	v_mov_b32_e32 v29, v72
	v_mov_b32_e32 v30, v72
	v_mov_b32_e32 v31, v72
	v_mov_b32_e32 v32, v72
	v_mov_b32_e32 v34, v72
	v_mov_b32_e32 v35, v72
	v_mov_b32_e32 v36, v72
	v_mov_b32_e32 v37, v72
	v_mov_b32_e32 v38, v72
	v_mov_b32_e32 v39, v72
	v_mov_b32_e32 v40, v72
	v_mov_b32_e32 v42, v72
	v_mov_b32_e32 v43, v72
	v_mov_b32_e32 v44, v72
	v_mov_b32_e32 v45, v72
	v_mov_b32_e32 v46, v72
	v_mov_b32_e32 v47, v72
	v_mov_b32_e32 v48, v72
	v_mov_b32_e32 v50, v72
	v_mov_b32_e32 v51, v72
	v_mov_b32_e32 v52, v72
	v_mov_b32_e32 v53, v72
	v_mov_b32_e32 v54, v72
	v_mov_b32_e32 v55, v72
	v_mov_b32_e32 v56, v72
	v_mov_b32_e32 v58, v72
	v_mov_b32_e32 v59, v72
	v_mov_b32_e32 v60, v72
	v_mov_b32_e32 v61, v72
	v_mov_b32_e32 v62, v72
	v_mov_b32_e32 v63, v72
	v_mov_b32_e32 v64, v72
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s38, s7, 6
	s_mov_b32 s39, -1
	s_mov_b32 s40, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	s_or_b32 s40, s40, s38
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v163, 0, v110
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v153, s40, v78
	v_or_b32_e32 v154, s40, v80
	s_mov_b32 s40, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s39
	s_mov_b32 s39, 0
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v155, v65, v153
	v_add_nc_u32_e32 v157, v66, v153
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_add_nc_u32_e32 v161, v131, v154
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[153:156], v155, s[12:15], 0 offen
	buffer_load_b128 v[157:160], v157, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v161, 0x80000000, v161, s0
	buffer_load_b64 v[161:162], v161, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(2)
	ds_bpermute_b32 v186, v114, v153
	ds_bpermute_b32 v188, v114, v154
	ds_bpermute_b32 v190, v114, v155
	ds_bpermute_b32 v192, v114, v156
	ds_bpermute_b32 v187, v116, v153
	ds_bpermute_b32 v189, v116, v154
	ds_bpermute_b32 v191, v116, v155
	ds_bpermute_b32 v193, v116, v156
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v194, v114, v157
	ds_bpermute_b32 v196, v114, v158
	ds_bpermute_b32 v195, v116, v157
	ds_bpermute_b32 v197, v116, v158
	ds_bpermute_b32 v198, v114, v159
	ds_bpermute_b32 v200, v114, v160
	ds_bpermute_b32 v199, v116, v159
	ds_bpermute_b32 v201, v116, v160
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_store_b64 v138, v[161:162]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[153:156], v163 offset1:1
	ds_load_2addr_stride64_b64 v[157:160], v163 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[161:164], v139 offset1:1
	ds_load_2addr_stride64_b64 v[165:168], v139 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[169:172], v140 offset1:1
	ds_load_2addr_stride64_b64 v[173:176], v140 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[177:180], v142 offset1:1
	ds_load_2addr_stride64_b64 v[181:184], v142 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v185, v187, v186, s5
	v_cndmask_b32_e64 v187, v186, v187, s5
	v_cndmask_b32_e64 v186, v189, v188, s5
	v_cndmask_b32_e64 v188, v188, v189, s5
	v_cndmask_b32_e64 v189, v191, v190, s5
	v_cndmask_b32_e64 v191, v190, v191, s5
	v_cndmask_b32_e64 v190, v193, v192, s5
	v_cndmask_b32_e64 v192, v192, v193, s5
	v_cndmask_b32_e64 v193, v195, v194, s5
	v_cndmask_b32_e64 v195, v194, v195, s5
	v_cndmask_b32_e64 v194, v197, v196, s5
	v_cndmask_b32_e64 v196, v196, v197, s5
	v_cndmask_b32_e64 v197, v199, v198, s5
	v_cndmask_b32_e64 v199, v198, v199, s5
	v_cndmask_b32_e64 v198, v201, v200, s5
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[185:186], v[153:154], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[193:194], v[153:154], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[185:186], v[155:156], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[193:194], v[155:156], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[185:186], v[157:158], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[193:194], v[157:158], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[185:186], v[159:160], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[193:194], v[159:160], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[189:190], v[161:162], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[197:198], v[161:162], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[189:190], v[163:164], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[197:198], v[163:164], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[189:190], v[165:166], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[197:198], v[165:166], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[189:190], v[167:168], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[197:198], v[167:168], v[57:64] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v200, v200, v201, s5
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[187:188], v[169:170], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[195:196], v[169:170], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[187:188], v[171:172], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[195:196], v[171:172], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[187:188], v[173:174], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[195:196], v[173:174], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[187:188], v[175:176], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[195:196], v[175:176], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[191:192], v[177:178], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[199:200], v[177:178], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[191:192], v[179:180], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[199:200], v[179:180], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[191:192], v[181:182], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[199:200], v[181:182], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[191:192], v[183:184], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[199:200], v[183:184], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v153, s7, v83, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s38, s7, s6
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v154, s7, v86, 1
	v_add_lshl_u32 v155, s7, v89, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s38, s38, s33
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v156, s7, v92, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v157, v126, s38, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v153, 0x80000000, v153, s1
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s3
	v_cndmask_b32_e64 v156, 0x80000000, v156, s4
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v157, v157, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v153, v153, s[24:27], 0 offen
	buffer_load_u16 v154, v154, s[24:27], 0 offen
	buffer_load_u16 v155, v155, s[24:27], 0 offen
	buffer_load_u16 v156, v156, s[24:27], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v158, v1
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v159, v2
	v_cvt_f32_i32_e32 v160, v3
	v_cvt_f32_i32_e32 v161, v4
	v_cvt_f32_i32_e32 v162, v5
	v_cvt_f32_i32_e32 v163, v6
	v_cvt_f32_i32_e32 v164, v7
	v_cvt_f32_i32_e32 v165, v8
	v_cvt_f32_i32_e32 v166, v9
	v_cvt_f32_i32_e32 v167, v10
	v_cvt_f32_i32_e32 v168, v11
	v_cvt_f32_i32_e32 v169, v12
	v_cvt_f32_i32_e32 v170, v13
	v_cvt_f32_i32_e32 v171, v14
	v_cvt_f32_i32_e32 v172, v15
	v_cvt_f32_i32_e32 v173, v16
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
	s_add_i32 s7, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s7, s36
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v1, 16, v157
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v20, v20, v154 :: v_dual_lshlrev_b32 v153, 16, v153
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v155, 16, v155
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v157, v158, v153
	v_mul_f32_e32 v18, v18, v154
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v144, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v146
	ds_load_b128 v[5:8], v146 offset:16
	ds_load_b128 v[9:12], v146 offset:512
	ds_load_b128 v[13:16], v146 offset:528
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v158, v159, v153
	v_mul_f32_e32 v159, v160, v153
	v_dual_mul_f32 v160, v161, v153 :: v_dual_mul_f32 v19, v19, v154
	v_dual_mul_f32 v161, v162, v153 :: v_dual_mul_f32 v24, v24, v154
	v_dual_mul_f32 v162, v163, v153 :: v_dual_mul_f32 v17, v17, v154
	v_dual_mul_f32 v163, v164, v153 :: v_dual_mul_f32 v22, v22, v154
	v_dual_mul_f32 v164, v165, v153 :: v_dual_mul_f32 v23, v23, v154
	v_dual_mul_f32 v165, v166, v153 :: v_dual_mul_f32 v28, v28, v154
	v_dual_mul_f32 v166, v167, v153 :: v_dual_mul_f32 v21, v21, v154
	v_dual_mul_f32 v167, v168, v153 :: v_dual_mul_f32 v26, v26, v154
	v_dual_mul_f32 v168, v169, v153 :: v_dual_mul_f32 v27, v27, v154
	v_dual_mul_f32 v169, v170, v153 :: v_dual_mul_f32 v32, v32, v154
	v_dual_mul_f32 v170, v171, v153 :: v_dual_mul_f32 v25, v25, v154
	v_dual_mul_f32 v171, v172, v153 :: v_dual_mul_f32 v30, v30, v154
	v_dual_mul_f32 v153, v173, v153 :: v_dual_mul_f32 v34, v34, v155
	v_dual_mul_f32 v29, v29, v154 :: v_dual_mul_f32 v36, v36, v155
	v_dual_mul_f32 v31, v31, v154 :: v_dual_mul_f32 v38, v38, v155
	v_dual_mul_f32 v33, v33, v155 :: v_dual_mul_f32 v50, v50, v156
	v_dual_mul_f32 v35, v35, v155 :: v_dual_mul_f32 v52, v52, v156
	v_dual_mul_f32 v37, v37, v155 :: v_dual_mul_f32 v54, v54, v156
	v_dual_mul_f32 v39, v39, v155 :: v_dual_mul_f32 v56, v56, v156
	v_dual_mul_f32 v40, v40, v155 :: v_dual_mul_f32 v49, v49, v156
	v_dual_mul_f32 v41, v41, v155 :: v_dual_mul_f32 v58, v58, v156
	v_dual_mul_f32 v42, v42, v155 :: v_dual_mul_f32 v51, v51, v156
	v_dual_mul_f32 v43, v43, v155 :: v_dual_mul_f32 v60, v60, v156
	v_dual_mul_f32 v44, v44, v155 :: v_dual_mul_f32 v53, v53, v156
	v_dual_mul_f32 v45, v45, v155 :: v_dual_mul_f32 v62, v62, v156
	v_dual_mul_f32 v46, v46, v155 :: v_dual_mul_f32 v55, v55, v156
	v_dual_mul_f32 v47, v47, v155 :: v_dual_mul_f32 v64, v64, v156
	v_dual_mul_f32 v48, v48, v155 :: v_dual_mul_f32 v57, v57, v156
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v59, v59, v156 :: v_dual_fmac_f32 v152, v157, v1
	v_dual_mul_f32 v61, v61, v156 :: v_dual_fmac_f32 v150, v159, v3
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v63, v63, v156 :: v_dual_fmac_f32 v148, v161, v5
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v151, v158, v2 :: v_dual_fmac_f32 v136, v167, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v149, v160, v4 :: v_dual_fmac_f32 v134, v169, v13
	v_dual_fmac_f32 v147, v162, v6 :: v_dual_fmac_f32 v132, v171, v15
	v_dual_fmac_f32 v145, v163, v7 :: v_dual_fmac_f32 v130, v153, v16
	v_dual_fmac_f32 v143, v164, v8 :: v_dual_fmac_f32 v128, v18, v2
	v_dual_fmac_f32 v141, v165, v9 :: v_dual_fmac_f32 v122, v23, v7
	v_dual_fmac_f32 v137, v166, v10 :: v_dual_fmac_f32 v124, v21, v5
	v_dual_fmac_f32 v135, v168, v12 :: v_dual_fmac_f32 v120, v25, v9
	v_dual_fmac_f32 v133, v170, v14 :: v_dual_fmac_f32 v118, v27, v11
	v_dual_fmac_f32 v129, v17, v1 :: v_dual_fmac_f32 v112, v31, v15
	v_dual_fmac_f32 v127, v19, v3 :: v_dual_fmac_f32 v108, v34, v2
	v_dual_fmac_f32 v125, v20, v4 :: v_dual_fmac_f32 v104, v38, v6
	v_dual_fmac_f32 v123, v22, v6 :: v_dual_fmac_f32 v106, v36, v4
	v_dual_fmac_f32 v121, v24, v8 :: v_dual_fmac_f32 v100, v42, v10
	v_dual_fmac_f32 v119, v26, v10 :: v_dual_fmac_f32 v102, v40, v8
	v_dual_fmac_f32 v117, v28, v12 :: v_dual_fmac_f32 v96, v46, v14
	v_dual_fmac_f32 v115, v29, v13 :: v_dual_fmac_f32 v98, v44, v12
	v_dual_fmac_f32 v113, v30, v14 :: v_dual_fmac_f32 v94, v48, v16
	v_dual_fmac_f32 v111, v32, v16 :: v_dual_fmac_f32 v90, v51, v3
	v_dual_fmac_f32 v109, v33, v1 :: v_dual_fmac_f32 v88, v52, v4
	v_dual_fmac_f32 v107, v35, v3 :: v_dual_fmac_f32 v82, v56, v8
	v_dual_fmac_f32 v105, v37, v5 :: v_dual_fmac_f32 v84, v55, v7
	v_dual_fmac_f32 v103, v39, v7 :: v_dual_fmac_f32 v76, v60, v12
	v_dual_fmac_f32 v101, v41, v9 :: v_dual_fmac_f32 v74, v62, v14
	v_fmac_f32_e32 v99, v43, v11
	v_fmac_f32_e32 v97, v45, v13
	v_fmac_f32_e32 v95, v47, v15
	v_fmac_f32_e32 v93, v49, v1
	v_fmac_f32_e32 v91, v50, v2
	v_fmac_f32_e32 v87, v53, v5
	v_fmac_f32_e32 v85, v54, v6
	v_fmac_f32_e32 v81, v57, v9
	v_fmac_f32_e32 v79, v58, v10
	v_fmac_f32_e32 v77, v59, v11
	v_fmac_f32_e32 v75, v61, v13
	v_fmac_f32_e32 v73, v63, v15
	v_fmac_f32_e32 v67, v64, v16
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v35, v107, v107 :: v_dual_max_f32 v36, v106, v106
	v_dual_max_f32 v37, v105, v105 :: v_dual_max_f32 v38, v104, v104
	v_dual_max_f32 v39, v103, v103 :: v_dual_max_f32 v40, v101, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v37, 0, v37
	v_dual_max_f32 v41, v100, v100 :: v_dual_max_f32 v42, v99, v99
	v_dual_max_f32 v46, 0, v39 :: v_dual_max_f32 v39, v102, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v43, v98, v98 :: v_dual_max_f32 v86, 0, v40
	v_dual_max_f32 v89, 0, v41 :: v_dual_max_f32 v40, v96, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_max_f32 v83, 0, v39 :: v_dual_max_f32 v92, 0, v42
	v_max_f32_e32 v39, v97, v97
	v_dual_max_f32 v41, v95, v95 :: v_dual_max_f32 v42, v94, v94
	v_dual_max_f32 v98, 0, v43 :: v_dual_max_f32 v43, v93, v93
	v_dual_max_f32 v94, 0, v40 :: v_dual_max_f32 v95, 0, v41
	v_dual_max_f32 v40, v90, v90 :: v_dual_max_f32 v1, v152, v152
	v_dual_max_f32 v2, v151, v151 :: v_dual_max_f32 v5, v148, v148
	v_max_f32_e32 v6, v147, v147
	v_dual_max_f32 v93, 0, v39 :: v_dual_max_f32 v96, 0, v42
	v_dual_max_f32 v41, v88, v88 :: v_dual_max_f32 v42, v87, v87
	v_max_f32_e32 v97, 0, v43
	v_max_f32_e32 v39, v91, v91
	v_max_f32_e32 v43, v85, v85
	v_dual_max_f32 v87, 0, v40 :: v_dual_max_f32 v40, v82, v82
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v7, v145, v145 :: v_dual_max_f32 v8, v143, v143
	v_dual_max_f32 v9, v141, v141 :: v_dual_max_f32 v6, 0, v6
	v_max_f32_e32 v5, 0, v5
	v_dual_max_f32 v15, v132, v132 :: v_dual_max_f32 v16, v130, v130
	v_dual_max_f32 v17, v129, v129 :: v_dual_max_f32 v18, v128, v128
	v_max_f32_e32 v19, v127, v127
	v_dual_max_f32 v25, v120, v120 :: v_dual_max_f32 v26, v119, v119
	v_dual_max_f32 v27, v118, v118 :: v_dual_max_f32 v28, v117, v117
	v_dual_max_f32 v29, v115, v115 :: v_dual_max_f32 v88, 0, v41
	v_dual_max_f32 v90, 0, v42 :: v_dual_max_f32 v91, 0, v43
	v_max_f32_e32 v41, v81, v81
	v_max_f32_e32 v85, 0, v39
	v_dual_max_f32 v42, v79, v79 :: v_dual_max_f32 v43, v77, v77
	v_dual_max_f32 v99, 0, v40 :: v_dual_max_f32 v40, v75, v75
	v_max_f32_e32 v39, v84, v84
	v_dual_max_f32 v3, v150, v150 :: v_dual_max_f32 v4, v149, v149
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v10, v137, v137
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v12, v135, v135 :: v_dual_max_f32 v11, v136, v136
	v_dual_max_f32 v14, v133, v133 :: v_dual_max_f32 v13, v134, v134
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v17, 0, v17
	v_max_f32_e32 v22, v123, v123
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v20, v125, v125
	v_dual_max_f32 v21, v124, v124 :: v_dual_max_f32 v24, v121, v121
	v_max_f32_e32 v23, v122, v122
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v27, 0, v27
	v_max_f32_e32 v30, v113, v113
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v32, v111, v111
	v_max_f32_e32 v31, v112, v112
	v_dual_max_f32 v33, v109, v109 :: v_dual_max_f32 v34, v108, v108
	v_max_f32_e32 v102, 0, v43
	v_max_f32_e32 v84, 0, v39
	v_dual_max_f32 v100, 0, v41 :: v_dual_max_f32 v41, v74, v74
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v48, v1, v1 :: v_dual_max_f32 v101, 0, v42
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v42, v73, v73 :: v_dual_max_f32 v43, v67, v67
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v56, v5, v5 :: v_dual_max_f32 v39, v76, v76
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
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
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v103, 0, v40
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v54, v3, v3
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v104, 0, v41 :: v_dual_max_f32 v105, 0, v42
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v62, v7, v7
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_max_f32_e32 v106, 0, v43
	v_dual_max_f32 v74, 0, v39 :: v_dual_mul_f32 v51, v2, v2
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v82, v11, v11 :: v_dual_mul_f32 v55, v4, v4
	v_mul_f32_e32 v66, v10, v10
	v_dual_mul_f32 v57, v6, v6 :: v_dual_mul_f32 v80, v16, v16
	v_dual_mul_f32 v63, v8, v8 :: v_dual_mul_f32 v76, v14, v14
	v_dual_mul_f32 v65, v9, v9 :: v_dual_mul_f32 v72, v20, v20
	v_dual_mul_f32 v81, v12, v12 :: v_dual_mul_f32 v78, v17, v17
	v_dual_mul_f32 v75, v13, v13 :: v_dual_mul_f32 v64, v22, v22
	v_dual_mul_f32 v79, v15, v15 :: v_dual_mul_f32 v60, v24, v24
	v_dual_mul_f32 v77, v18, v18 :: v_dual_mul_f32 v52, v28, v28
	v_dual_mul_f32 v73, v19, v19 :: v_dual_mul_f32 v58, v26, v26
	v_dual_mul_f32 v67, v21, v21 :: v_dual_mul_f32 v42, v35, v35
	v_dual_mul_f32 v61, v23, v23 :: v_dual_mul_f32 v50, v29, v29
	v_mul_f32_e32 v59, v25, v25
	v_dual_mul_f32 v53, v27, v27 :: v_dual_mul_f32 v44, v33, v33
	v_dual_mul_f32 v49, v30, v30 :: v_dual_mul_f32 v40, v37, v37
	v_mul_f32_e32 v47, v31, v31
	v_dual_mul_f32 v45, v32, v32 :: v_dual_mul_f32 v32, v93, v93
	v_dual_mul_f32 v43, v34, v34 :: v_dual_mul_f32 v34, v92, v92
	v_dual_mul_f32 v41, v36, v36 :: v_dual_mul_f32 v30, v95, v95
	v_dual_mul_f32 v39, v38, v38 :: v_dual_mul_f32 v28, v97, v97
	v_dual_mul_f32 v38, v46, v46 :: v_dual_mul_f32 v37, v83, v83
	v_mul_f32_e32 v24, v90, v90
	v_dual_mul_f32 v36, v86, v86 :: v_dual_mul_f32 v35, v89, v89
	v_dual_mul_f32 v26, v87, v87 :: v_dual_mul_f32 v33, v98, v98
	v_dual_mul_f32 v22, v84, v84 :: v_dual_mul_f32 v31, v94, v94
	v_mul_f32_e32 v20, v100, v100
	v_dual_mul_f32 v29, v96, v96 :: v_dual_mul_f32 v12, v74, v74
	v_dual_mul_f32 v27, v85, v85 :: v_dual_mul_f32 v10, v104, v104
	v_dual_mul_f32 v25, v88, v88 :: v_dual_mul_f32 v8, v106, v106
	v_mul_f32_e32 v23, v91, v91
	v_mul_f32_e32 v21, v99, v99
	v_mul_f32_e32 v19, v101, v101
	v_mul_f32_e32 v17, v102, v102
	v_mul_f32_e32 v11, v103, v103
	v_mul_f32_e32 v9, v105, v105
	v_mov_b32_e32 v5, v71
.LBB0_9:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v51, v51 :: v_dual_max_f32 v2, v48, v48
	v_max3_f32 v4, v66, v82, v81
	v_max3_f32 v6, v75, v76, v79
	v_max3_f32 v3, v55, v56, v57
	v_max_f32_e32 v7, v78, v78
	v_max3_f32 v13, v62, v63, v65
	v_max3_f32 v15, v58, v53, v52
	v_max3_f32 v4, v4, v6, v80
	v_dual_max_f32 v6, v44, v44 :: v_dual_max_f32 v1, v2, v1
	v_max_f32_e32 v2, v77, v77
	v_max3_f32 v16, v50, v49, v47
	v_max3_f32 v18, v35, v34, v33
	v_max3_f32 v46, v32, v31, v30
	s_mov_b32 s0, 0x76543210
	v_max_f32_e32 v2, v7, v2
	v_max3_f32 v1, v1, v54, v3
	v_max_f32_e32 v3, v43, v43
	v_max3_f32 v7, v72, v67, v64
	v_max3_f32 v14, v61, v60, v59
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v1, v13, v4
	v_max_f32_e32 v3, v6, v3
	v_max3_f32 v6, v41, v40, v39
	v_max3_f32 v2, v2, v73, v7
	v_max3_f32 v7, v15, v16, v45
	v_max3_f32 v15, v38, v37, v36
	v_max_f32_e32 v16, v27, v27
	v_max3_f32 v3, v3, v42, v6
	v_max3_f32 v6, v18, v46, v29
	v_max_f32_e32 v18, v28, v28
	v_max3_f32 v2, v2, v14, v7
	v_max3_f32 v13, v19, v17, v12
	v_max3_f32 v14, v11, v10, v9
	v_max3_f32 v3, v3, v15, v6
	v_max_f32_e32 v4, v18, v16
	v_max3_f32 v6, v25, v24, v23
	v_max3_f32 v7, v22, v21, v20
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v15, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, v13, v14, v8
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v18, 0x80, v0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, v26, v6
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v15, v15
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v46, 8, v0
	v_lshrrev_b32_e32 v83, 3, v18
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, v7, v13
	v_max_f32_e32 v6, v6, v6
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v13, 5, v70
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v14 :: v_dual_and_b32 v7, 4, v0
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v14, v70, 9, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v6
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v16, v3, s0, 0xfedcba98 op_sel:[1,0]
	s_barrier
	v_lshl_add_u32 v84, v7, 6, 0
	v_lshl_add_u32 v14, v7, 2, v14
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v15, v16, v16
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v16, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v14, v46, 4, v14
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v6, v6, v6 :: v_dual_lshlrev_b32 v15, 4, v0
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v74, v13, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_or_b32 v71, 0x680, v15, v13
	v_lshlrev_b32_e32 v15, 1, v18
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v71, v71, v16
	v_add3_u32 v6, v14, v15, v74
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v14, v84, v83, v71
	ds_store_b128 v6, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v14
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v71, v3
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	v_dual_max_f32 v3, v3, v3 :: v_dual_add_nc_u32 v18, 0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v71, v71 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v1, v1, v6 :: v_dual_max_f32 v6, v71, v71
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v14, v2
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v46, 3, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v6
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v6, v3
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v14
	v_max_f32_e32 v74, v4, v4
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v71, v2 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v6
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v74, v4
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v6, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v71, v71, v71 :: v_dual_mov_b32 v74, v4
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v71
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v74, v74 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v14, v1 :: v_dual_max_f32 v3, v3, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_lshlrev_b32_e32 v6, 5, v7
	v_lshl_add_u32 v7, v70, 4, 0
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v6, v7, v6, v46
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v14
	v_max_f32_e32 v14, v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v74, v2 :: v_dual_mov_b32 v71, v1
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v14, v4
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v74, v74, v74 :: v_dual_max_f32 v71, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v74 :: v_dual_max_f32 v1, v1, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v14, v14, v14
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v71, 1, v16
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v14
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v14, v18, v71, v46
	ds_store_b128 v14, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[83:86], v6
.Ltmp61:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v14, 4, v69
	v_and_b32_e32 v6, 63, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 48, v14
	v_or_b32_e32 v70, 32, v14
	v_or_b32_e32 v74, 16, v14
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v83, v83
	v_dual_max_f32 v3, v85, v85 :: v_dual_max_f32 v84, v84, v84
	v_dual_max_f32 v86, v86, v86 :: v_dual_max_f32 v7, 0x2b8cbccc, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v83, 0x2b8cbccc, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s28, v6
	v_add_co_ci_u32_e64 v2, null, s29, 0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v7
	v_div_scale_f32 v85, vcc_lo, v7, 0x40e00000, v7
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v83
	v_rcp_f32_e32 v46, v18
	v_max_f32_e32 v84, 0x2b8cbccc, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v91, null, 0x40e00000, 0x40e00000, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v3, -v18, v46, 1.0
	v_fma_f32 v90, -v87, v88, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v3, v46
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s28, v4
	v_add_co_ci_u32_e64 v4, null, s29, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v89, v85, v46
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v70, s0, s28, v70
	v_add_co_ci_u32_e64 v71, null, s29, 0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[30:31], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[34:35], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v3, -v18, v89, v85
	v_fmac_f32_e32 v88, v90, v88
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[30:31], v[70:71]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v89, v3, v46
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s28, v74
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v74, 0x2b8cbccc, v86
	v_div_scale_f32 v86, s6, v83, 0x40e00000, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v18, v89, v85
	v_rcp_f32_e32 v85, v91
	v_div_scale_f32 v90, null, 0x40e00000, 0x40e00000, v74
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s29, 0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v18, v18, v46, v89
	v_rcp_f32_e32 v89, v90
	v_mul_f32_e32 v46, v86, v88
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[34:35], v[70:71]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v71.h, 0
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v70, -v91, v85, 1.0
	v_div_fixup_f32 v7, v18, 0x40e00000, v7
	v_fma_f32 v18, -v87, v46, v86
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[30:31], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[34:35], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v85, v70, v85
	v_div_scale_f32 v70, s7, v84, 0x40e00000, v84
	v_fma_f32 v92, -v90, v89, 1.0
	v_fmac_f32_e32 v46, v18, v88
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v18.l, v7.h
	v_mov_b16_e32 v18.h, v71.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v93, v70, v85
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, s8, v74, 0x40e00000, v74
	v_fma_f32 v3, -v87, v46, v86
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v18
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v18, -v91, v93, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v86, v92, v89
	s_mov_b32 vcc_lo, s6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v7, v7, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v93, v18, v85
	v_fma_f32 v18, -v90, v86, v92
	v_div_fmas_f32 v46, v3, v88, v46
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v87, 0xffff0000, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v70, -v91, v93, v70
	v_fmac_f32_e32 v86, v18, v89
	v_div_fixup_f32 v46, v46, 0x40e00000, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s28, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v88, null, v87, v87, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v83, -v90, v86, v92
	v_div_fmas_f32 v18, v70, v85, v93
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v70, v88
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v71.l, v46.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v83, v83, v89, v86
	v_div_fixup_f32 v18, v18, 0x40e00000, v84
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v87, v87, v51
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s29, 0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v74, v83, 0x40e00000, v74
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v85, 1, v71
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v86, -v88, v70, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v83.l, v18.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v89, v84
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v83.h, v71.h
	v_mov_b16_e32 v71.l, v74.h
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[30:31], v[3:4]
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v70, v86, v70
	v_div_scale_f32 v86, vcc_lo, v48, v87, v48
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[34:35], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v90, null, v87, v87, v54
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v71, 1, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v93, null, v87, v87, v55
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v46, v85, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v85, v86, v70
	v_fma_f32 v46, -v84, v89, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v18, v18, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v92, v90
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v74, v71, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v71, v93
	v_fma_f32 v91, -v88, v85, v86
	v_fmac_f32_e32 v89, v46, v89
	v_div_scale_f32 v94, s8, v51, v87, v51
	v_div_scale_f32 v97, null, v87, v87, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v91, v70
	v_mul_f32_e32 v91, v94, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v90, v92, 1.0
	v_fma_f32 v96, -v93, v71, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v88, v85, v86
	v_fma_f32 v88, -v84, v91, v94
	v_fmac_f32_e32 v92, v95, v92
	v_div_scale_f32 v95, s9, v54, v87, v54
	v_fmac_f32_e32 v71, v96, v71
	v_div_scale_f32 v96, null, v87, v87, v57
	v_div_fmas_f32 v70, v86, v70, v85
	v_fmac_f32_e32 v91, v88, v89
	v_mul_f32_e32 v85, v95, v92
	v_rcp_f32_e32 v86, v97
	v_div_scale_f32 v88, s10, v55, v87, v55
	v_rcp_f32_e32 v98, v96
	v_div_fixup_f32 v48, v70, v87, v48
	v_fma_f32 v70, -v84, v91, v94
	v_fma_f32 v84, -v90, v85, v95
	v_mul_f32_e32 v94, v88, v71
	s_mov_b32 vcc_lo, s8
	.loc	1 1254 13 is_stmt 1             ; ragged.py:1254:13
	v_add_nc_u32_e32 v6, s28, v6
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v99, -v97, v86, 1.0
	v_div_fmas_f32 v70, v70, v89, v91
	v_fmac_f32_e32 v85, v84, v92
	v_fma_f32 v84, -v93, v94, v88
	v_fma_f32 v91, -v96, v98, 1.0
	v_fmac_f32_e32 v86, v99, v86
	v_div_scale_f32 v89, s8, v56, v87, v56
	v_div_fixup_f32 v51, v70, v87, v51
	v_fma_f32 v70, -v90, v85, v95
	v_fmac_f32_e32 v94, v84, v71
	v_fmac_f32_e32 v98, v91, v98
	v_div_scale_f32 v91, null, v87, v87, v62
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v84, v89, v86
	v_div_scale_f32 v90, s11, v57, v87, v57
	v_div_fmas_f32 v70, v70, v92, v85
	v_fma_f32 v85, -v93, v94, v88
	v_rcp_f32_e32 v92, v91
	v_div_scale_f32 v95, null, v87, v87, v63
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v88, -v97, v84, v89
	v_mul_f32_e32 v93, v90, v98
	v_div_fmas_f32 v71, v85, v71, v94
	v_rcp_f32_e32 v85, v95
	v_div_fixup_f32 v54, v70, v87, v54
	v_fmac_f32_e32 v84, v88, v86
	v_fma_f32 v88, -v96, v93, v90
	v_fma_f32 v94, -v91, v92, 1.0
	v_div_fixup_f32 v55, v71, v87, v55
	v_div_scale_f32 v71, s9, v62, v87, v62
	v_fma_f32 v70, -v97, v84, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v93, v88, v98 :: v_dual_fmac_f32 v92, v94, v92
	v_fma_f32 v88, -v95, v85, 1.0
	v_div_scale_f32 v89, null, v87, v87, v65
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v94, null, v87, v87, v66
	v_div_fmas_f32 v70, v70, v86, v84
	v_fma_f32 v84, -v96, v93, v90
	v_dual_mul_f32 v86, v71, v92 :: v_dual_fmac_f32 v85, v88, v85
	v_rcp_f32_e32 v88, v89
	v_div_scale_f32 v90, s8, v63, v87, v63
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v56, v70, v87, v56
	v_div_fmas_f32 v84, v84, v98, v93
	v_fma_f32 v93, -v91, v86, v71
	v_mul_f32_e32 v96, v90, v85
	v_rcp_f32_e32 v98, v94
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v89, v88, 1.0
	v_fmac_f32_e32 v86, v93, v92
	v_fma_f32 v70, -v95, v96, v90
	v_div_fixup_f32 v57, v84, v87, v57
	v_div_scale_f32 v84, s10, v65, v87, v65
	v_fmac_f32_e32 v88, v97, v88
	v_div_scale_f32 v93, null, v87, v87, v82
	v_fma_f32 v71, -v91, v86, v71
	v_fmac_f32_e32 v96, v70, v85
	v_fma_f32 v97, -v94, v98, 1.0
	v_mul_f32_e32 v70, v84, v88
	v_rcp_f32_e32 v91, v93
	v_div_fmas_f32 v71, v71, v92, v86
	v_fma_f32 v86, -v95, v96, v90
	v_div_scale_f32 v99, null, v87, v87, v81
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v98, v97, v98
	v_div_scale_f32 v97, s11, v66, v87, v66
	v_fma_f32 v90, -v89, v70, v84
	v_div_fmas_f32 v85, v86, v85, v96
	v_rcp_f32_e32 v86, v99
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v92, v97, v98
	v_fma_f32 v95, -v93, v91, 1.0
	v_fmac_f32_e32 v70, v90, v88
	v_div_fixup_f32 v62, v71, v87, v62
	v_div_fixup_f32 v63, v85, v87, v63
	v_fma_f32 v90, -v94, v92, v97
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s8, v82, v87, v82
	v_fma_f32 v71, -v89, v70, v84
	v_fma_f32 v85, -v99, v86, 1.0
	v_div_scale_f32 v89, null, v87, v87, v75
	v_fmac_f32_e32 v92, v90, v98
	v_mul_f32_e32 v84, v95, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v85, v86
	v_rcp_f32_e32 v85, v89
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, s9, v81, v87, v81
	v_div_fmas_f32 v70, v71, v88, v70
	v_fma_f32 v71, -v94, v92, v97
	v_fma_f32 v88, -v93, v84, v95
	v_div_scale_f32 v94, null, v87, v87, v76
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v89, v85, 1.0
	v_fmac_f32_e32 v84, v88, v91
	v_rcp_f32_e32 v88, v94
	v_div_fmas_f32 v71, v71, v98, v92
	v_mul_f32_e32 v92, v90, v86
	v_div_fixup_f32 v65, v70, v87, v65
	v_fma_f32 v70, -v93, v84, v95
	v_fmac_f32_e32 v85, v96, v85
	v_div_scale_f32 v96, null, v87, v87, v79
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v66, v71, v87, v66
	v_fma_f32 v71, -v99, v92, v90
	v_div_scale_f32 v93, s10, v75, v87, v75
	v_fma_f32 v95, -v94, v88, 1.0
	v_div_fmas_f32 v70, v70, v91, v84
	v_rcp_f32_e32 v91, v96
	v_div_scale_f32 v97, null, v87, v87, v80
	v_fmac_f32_e32 v92, v71, v86
	v_mul_f32_e32 v84, v93, v85
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s8, v76, v87, v76
	v_rcp_f32_e32 v98, v97
	v_div_fixup_f32 v70, v70, v87, v82
	v_fma_f32 v71, -v99, v92, v90
	v_fma_f32 v82, -v89, v84, v93
	v_mul_f32_e32 v90, v95, v88
	v_fma_f32 v99, -v96, v91, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fmas_f32 v71, v71, v86, v92
	v_fmac_f32_e32 v84, v82, v85
	v_fma_f32 v82, -v94, v90, v95
	v_fmac_f32_e32 v91, v99, v91
	v_div_scale_f32 v86, s9, v79, v87, v79
	v_fma_f32 v92, -v97, v98, 1.0
	v_div_fixup_f32 v71, v71, v87, v81
	v_fma_f32 v81, -v89, v84, v93
	v_fmac_f32_e32 v90, v82, v88
	v_mul_f32_e32 v82, v86, v91
	v_fmac_f32_e32 v98, v92, v98
	v_div_scale_f32 v92, null, v83, v83, v78
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, s11, v80, v87, v80
	v_div_fmas_f32 v81, v81, v85, v84
	v_fma_f32 v84, -v94, v90, v95
	v_fma_f32 v85, -v96, v82, v86
	v_rcp_f32_e32 v93, v92
	v_div_scale_f32 v95, null, v83, v83, v77
	v_mul_f32_e32 v94, v89, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v85, v91
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v95
	v_div_fmas_f32 v84, v84, v88, v90
	v_fma_f32 v88, -v97, v94, v89
	v_div_fixup_f32 v75, v81, v87, v75
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v92, v93, 1.0
	v_fma_f32 v81, -v96, v82, v86
	v_div_fixup_f32 v76, v84, v87, v76
	v_fmac_f32_e32 v94, v88, v98
	v_div_scale_f32 v84, s8, v78, v83, v78
	v_fmac_f32_e32 v93, v90, v93
	v_fma_f32 v86, -v95, v85, 1.0
	v_div_scale_f32 v88, null, v83, v83, v73
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, s9, v77, v83, v77
	v_div_fmas_f32 v81, v81, v91, v82
	v_fma_f32 v82, -v97, v94, v89
	v_mul_f32_e32 v89, v84, v93
	v_fmac_f32_e32 v85, v86, v85
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v91, null, v83, v83, v72
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v96, v90, v85
	v_div_fmas_f32 v82, v82, v98, v94
	v_fma_f32 v94, -v92, v89, v84
	v_rcp_f32_e32 v98, v91
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v74, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v79, v81, v87, v79
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v88, v86, 1.0
	v_div_fixup_f32 v80, v82, v87, v80
	v_fmac_f32_e32 v89, v94, v93
	v_fma_f32 v81, -v95, v96, v90
	v_div_scale_f32 v87, null, v83, v83, v67
	v_fmac_f32_e32 v86, v97, v86
	v_div_scale_f32 v82, s10, v73, v83, v73
	v_fma_f32 v94, -v91, v98, 1.0
	v_fma_f32 v84, -v92, v89, v84
	v_fmac_f32_e32 v96, v81, v85
	v_rcp_f32_e32 v92, v87
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v81, v82, v86 :: v_dual_and_b32 v46, 0xffff0000, v4
	v_fmac_f32_e32 v98, v94, v98
	v_div_scale_f32 v94, s11, v72, v83, v72
	v_div_fmas_f32 v84, v84, v93, v89
	v_fma_f32 v89, -v95, v96, v90
	v_div_scale_f32 v97, null, v83, v83, v64
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v90, -v88, v81, v82
	v_mul_f32_e32 v93, v94, v98
	v_fma_f32 v95, -v87, v92, 1.0
	v_div_fmas_f32 v85, v89, v85, v96
	v_rcp_f32_e32 v89, v97
	v_fmac_f32_e32 v81, v90, v86
	v_fma_f32 v90, -v91, v93, v94
	v_fmac_f32_e32 v92, v95, v92
	v_div_scale_f32 v95, s8, v67, v83, v67
	v_div_fixup_f32 v78, v84, v83, v78
	v_div_fixup_f32 v77, v85, v83, v77
	v_fma_f32 v82, -v88, v81, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v93, v90, v98 :: v_dual_mul_f32 v84, v95, v92
	v_fma_f32 v85, -v97, v89, 1.0
	v_div_scale_f32 v88, null, v83, v83, v61
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, s9, v64, v83, v64
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v91, v93, v94
	v_fma_f32 v86, -v87, v84, v95
	v_fmac_f32_e32 v89, v85, v89
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v91, null, v83, v83, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v86, v92
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v73, v81, v83, v73
	v_rcp_f32_e32 v86, v91
	v_div_fmas_f32 v82, v82, v98, v93
	v_mul_f32_e32 v93, v90, v89
	v_fma_f32 v81, -v87, v84, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v85, 1.0
	v_div_scale_f32 v95, null, v83, v83, v59
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v72, v82, v83, v72
	v_fma_f32 v82, -v97, v93, v90
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v87, s10, v61, v83, v61
	v_fma_f32 v94, -v91, v86, 1.0
	v_div_fmas_f32 v81, v81, v92, v84
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v93, v82, v89
	v_mul_f32_e32 v82, v87, v85
	v_fmac_f32_e32 v86, v94, v86
	v_div_scale_f32 v92, s8, v60, v83, v60
	v_div_scale_f32 v94, null, v83, v83, v58
	v_div_fixup_f32 v67, v81, v83, v67
	v_fma_f32 v81, -v97, v93, v90
	v_fma_f32 v90, -v88, v82, v87
	v_mul_f32_e32 v96, v92, v86
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v82, v90, v85
	v_div_fmas_f32 v81, v81, v89, v93
	v_fma_f32 v89, -v91, v96, v92
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s9, v59, v83, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v64, v81, v83, v64
	v_fma_f32 v93, -v94, v97, 1.0
	v_fma_f32 v81, -v88, v82, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v96, v89, v86 :: v_dual_mul_f32 v87, v90, v84
	v_div_scale_f32 v89, null, v83, v83, v53
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v97, v93, v97
	v_div_scale_f32 v88, s11, v58, v83, v58
	v_div_fmas_f32 v81, v81, v85, v82
	v_fma_f32 v82, -v91, v96, v92
	v_fma_f32 v85, -v95, v87, v90
	v_rcp_f32_e32 v91, v89
	v_div_scale_f32 v93, null, v83, v83, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v92, v88, v97 :: v_dual_fmac_f32 v87, v85, v84
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v93
	v_div_fmas_f32 v82, v82, v86, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v86, -v94, v92, v88
	v_div_fixup_f32 v61, v81, v83, v61
	v_fma_f32 v96, -v89, v91, 1.0
	v_fma_f32 v81, -v95, v87, v90
	v_div_fixup_f32 v60, v82, v83, v60
	v_fmac_f32_e32 v92, v86, v97
	v_div_scale_f32 v82, s8, v53, v83, v53
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v86, -v93, v85, 1.0
	v_div_scale_f32 v90, null, v83, v83, v50
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v98, null, v83, v83, v45
	v_div_fmas_f32 v81, v81, v84, v87
	v_fma_f32 v84, -v94, v92, v88
	v_mul_f32_e32 v87, v82, v91
	v_fmac_f32_e32 v85, v86, v85
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v88, s9, v52, v83, v52
	v_div_scale_f32 v94, null, v83, v83, v49
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v95, v88, v85
	v_div_fmas_f32 v84, v84, v97, v92
	v_fma_f32 v92, -v89, v87, v82
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v90, v86, 1.0
	v_div_fixup_f32 v59, v81, v83, v59
	v_fma_f32 v81, -v93, v95, v88
	v_fmac_f32_e32 v87, v92, v91
	v_div_fixup_f32 v58, v84, v83, v58
	v_fmac_f32_e32 v86, v96, v86
	v_div_scale_f32 v84, s10, v50, v83, v50
	v_div_scale_f32 v92, null, v83, v83, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v94, v97, 1.0
	v_fma_f32 v82, -v89, v87, v82
	v_fmac_f32_e32 v95, v81, v85
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v81, v84, v86
	v_rcp_f32_e32 v89, v92
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s11, v49, v83, v49
	v_div_fmas_f32 v82, v82, v91, v87
	v_fma_f32 v87, -v93, v95, v88
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v90, v81, v84
	v_mul_f32_e32 v91, v96, v97
	v_div_fixup_f32 v53, v82, v83, v53
	v_div_fmas_f32 v85, v87, v85, v95
	v_rcp_f32_e32 v87, v98
	v_fma_f32 v93, -v92, v89, 1.0
	v_fmac_f32_e32 v81, v88, v86
	v_fma_f32 v88, -v94, v91, v96
	v_div_fixup_f32 v52, v85, v83, v52
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s8, v47, v83, v47
	v_fmac_f32_e32 v91, v88, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v98, v87, 1.0
	v_div_scale_f32 v88, null, v74, v74, v44
	v_fma_f32 v82, -v90, v81, v84
	v_mul_f32_e32 v84, v93, v89
	v_fmac_f32_e32 v87, v85, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v90, s9, v45, v83, v45
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v94, v91, v96
	v_fma_f32 v86, -v92, v84, v93
	v_div_scale_f32 v94, null, v74, v74, v43
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v50, v81, v83, v50
	v_fmac_f32_e32 v84, v86, v89
	v_rcp_f32_e32 v86, v94
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fmas_f32 v82, v82, v97, v91
	v_mul_f32_e32 v91, v90, v87
	v_fma_f32 v81, -v92, v84, v93
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v74, v74, v42
	v_div_fixup_f32 v49, v82, v83, v49
	v_fma_f32 v82, -v98, v91, v90
	v_div_scale_f32 v92, s10, v44, v74, v44
	v_fma_f32 v93, -v94, v86, 1.0
	v_div_fmas_f32 v81, v81, v89, v84
	v_rcp_f32_e32 v84, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v82, v87 :: v_dual_mul_f32 v82, v92, v85
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v89, s8, v43, v74, v43
	v_div_scale_f32 v93, null, v74, v74, v41
	v_div_fixup_f32 v47, v81, v83, v47
	v_fma_f32 v81, -v98, v91, v90
	v_fma_f32 v90, -v88, v82, v92
	v_mul_f32_e32 v96, v89, v86
	v_rcp_f32_e32 v97, v93
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v82, v90, v85
	v_div_fmas_f32 v81, v81, v87, v91
	v_fma_f32 v87, -v94, v96, v89
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s9, v42, v74, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v45, v81, v83, v45
	v_fma_f32 v91, -v93, v97, 1.0
	v_fma_f32 v81, -v88, v82, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v96, v87, v86 :: v_dual_mul_f32 v83, v90, v84
	v_div_scale_f32 v88, null, v74, v74, v40
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v97, v91, v97
	v_div_scale_f32 v87, s11, v41, v74, v41
	v_div_fmas_f32 v81, v81, v85, v82
	v_fma_f32 v82, -v94, v96, v89
	v_fma_f32 v85, -v95, v83, v90
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v92, null, v74, v74, v39
	v_mul_f32_e32 v91, v87, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v85, v84
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v82, v82, v86, v96
	v_fma_f32 v86, -v93, v91, v87
	v_div_fixup_f32 v44, v81, v74, v44
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v89, 1.0
	v_fma_f32 v81, -v95, v83, v90
	v_div_fixup_f32 v43, v82, v74, v43
	v_fmac_f32_e32 v91, v86, v97
	v_div_scale_f32 v82, s8, v40, v74, v40
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v86, -v92, v85, 1.0
	v_div_scale_f32 v90, null, v74, v74, v38
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v84, v83
	v_fma_f32 v83, -v93, v91, v87
	v_mul_f32_e32 v84, v82, v89
	v_fmac_f32_e32 v85, v86, v85
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v87, s9, v39, v74, v39
	v_div_scale_f32 v93, null, v74, v74, v37
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v94, v87, v85
	v_div_fmas_f32 v83, v83, v97, v91
	v_fma_f32 v91, -v88, v84, v82
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v86, 1.0
	v_div_fixup_f32 v42, v81, v74, v42
	v_fma_f32 v81, -v92, v94, v87
	v_fmac_f32_e32 v84, v91, v89
	v_div_scale_f32 v91, null, v74, v74, v36
	v_div_fixup_f32 v41, v83, v74, v41
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v83, s10, v38, v74, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v82, -v88, v84, v82
	v_fmac_f32_e32 v94, v81, v85
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v81, v83, v86
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s11, v37, v74, v37
	v_div_fmas_f32 v82, v82, v89, v84
	v_fma_f32 v84, -v92, v94, v87
	v_div_scale_f32 v97, null, v74, v74, v35
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v90, v81, v83
	v_mul_f32_e32 v89, v95, v96
	v_fma_f32 v92, -v91, v88, 1.0
	v_div_fmas_f32 v84, v84, v85, v94
	v_rcp_f32_e32 v85, v97
	v_fmac_f32_e32 v81, v87, v86
	v_fma_f32 v87, -v93, v89, v95
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s8, v36, v74, v36
	v_div_fixup_f32 v40, v82, v74, v40
	v_div_fixup_f32 v39, v84, v74, v39
	v_fma_f32 v82, -v90, v81, v83
	v_fmac_f32_e32 v89, v87, v96
	v_mul_f32_e32 v83, v92, v88
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v74, v74, v34
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, s9, v35, v74, v35
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v93, v89, v95
	v_fma_f32 v86, -v91, v83, v92
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v74, v74, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v88
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v38, v81, v74, v38
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v82, v82, v96, v89
	v_mul_f32_e32 v89, v90, v85
	v_fma_f32 v81, -v91, v83, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v37, v82, v74, v37
	v_fma_f32 v82, -v97, v89, v90
	v_div_scale_f32 v91, s10, v34, v74, v34
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_scale_f32 v94, null, v74, v74, v32
	v_div_fmas_f32 v81, v81, v88, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v82, v85 :: v_dual_fmac_f32 v86, v92, v86
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v92, null, v74, v74, v31
	v_mul_f32_e32 v82, v91, v84
	v_div_scale_f32 v88, s8, v33, v74, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v36, v81, v74, v36
	v_fma_f32 v81, -v97, v89, v90
	v_fma_f32 v90, -v87, v82, v91
	v_mul_f32_e32 v95, v88, v86
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v85, v89
	v_fmac_f32_e32 v82, v90, v84
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s9, v32, v74, v32
	v_fma_f32 v90, -v92, v96, 1.0
	v_div_fixup_f32 v35, v81, v74, v35
	v_fma_f32 v81, -v87, v82, v91
	v_fmac_f32_e32 v95, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v85, v89, v83 :: v_dual_fmac_f32 v96, v90, v96
	v_div_scale_f32 v90, null, v74, v74, v30
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, s11, v31, v74, v31
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v85, v89
	v_rcp_f32_e32 v88, v90
	v_div_scale_f32 v93, null, v74, v74, v29
	v_mul_f32_e32 v91, v87, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v83
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v84, v93
	v_div_fmas_f32 v82, v82, v86, v95
	v_fma_f32 v86, -v92, v91, v87
	v_div_fixup_f32 v34, v81, v74, v34
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v88, 1.0
	v_fma_f32 v81, -v94, v85, v89
	v_div_fixup_f32 v33, v82, v74, v33
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v82, s8, v30, v74, v30
	v_fmac_f32_e32 v88, v95, v88
	v_fma_f32 v86, -v93, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v94, null, v46, v46, v27
	v_div_fmas_f32 v81, v81, v83, v85
	v_fma_f32 v83, -v92, v91, v87
	v_mul_f32_e32 v85, v82, v88
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, null, v46, v46, v28
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v87, s9, v29, v74, v29
	v_div_fmas_f32 v83, v83, v96, v91
	v_rcp_f32_e32 v89, v86
	v_fma_f32 v91, -v90, v85, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v92, v87, v84
	v_div_fixup_f32 v32, v81, v74, v32
	v_div_fixup_f32 v31, v83, v74, v31
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v85, v91, v88
	v_fma_f32 v81, -v93, v92, v87
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v96, null, v46, v46, v25
	v_fma_f32 v91, -v86, v89, 1.0
	v_fma_f32 v82, -v90, v85, v82
	v_div_scale_f32 v90, null, v46, v46, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v81, v84 :: v_dual_fmac_f32 v89, v91, v89
	v_div_scale_f32 v81, s10, v28, v46, v28
	v_rcp_f32_e32 v91, v90
	v_fma_f32 v95, -v94, v83, 1.0
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v93, v92, v87
	v_mul_f32_e32 v87, v81, v89
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v83, v95, v83
	v_div_scale_f32 v88, s8, v27, v46, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v86, v87, v81
	v_fma_f32 v93, -v90, v91, 1.0
	v_rcp_f32_e32 v98, v96
	v_div_fmas_f32 v84, v85, v84, v92
	v_mul_f32_e32 v97, v88, v83
	v_fmac_f32_e32 v87, v95, v89
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s11, v26, v46, v26
	v_div_fixup_f32 v30, v82, v74, v30
	v_div_fixup_f32 v29, v84, v74, v29
	v_fma_f32 v74, -v86, v87, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v93, v91
	v_div_scale_f32 v84, null, v46, v46, v24
	v_fma_f32 v85, -v94, v97, v88
	v_fma_f32 v82, -v96, v98, 1.0
	v_fma_f32 v81, -v90, v92, v93
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v97, v85, v83 :: v_dual_fmac_f32 v98, v82, v98
	v_fmac_f32_e32 v92, v81, v91
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v82, s9, v25, v46, v25
	v_div_fmas_f32 v74, v74, v89, v87
	v_fma_f32 v85, -v94, v97, v88
	v_div_scale_f32 v87, null, v46, v46, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v86, v82, v98
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v28, v74, v46, v28
	v_fma_f32 v88, -v84, v81, 1.0
	v_div_fmas_f32 v83, v85, v83, v97
	v_fma_f32 v85, -v90, v92, v93
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v96, v86, v82
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, s8, v24, v46, v24
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v90, v98
	v_div_fmas_f32 v85, v85, v91, v92
	v_mul_f32_e32 v74, v88, v81
	v_div_fixup_f32 v27, v83, v46, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v87, v89, 1.0
	v_fma_f32 v82, -v96, v86, v82
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v90, -v84, v74, v88
	v_div_fixup_f32 v26, v85, v46, v26
	v_div_scale_f32 v85, null, v46, v46, v22
	v_fmac_f32_e32 v89, v83, v89
	v_div_scale_f32 v83, s10, v23, v46, v23
	v_div_fmas_f32 v82, v82, v98, v86
	v_fmac_f32_e32 v74, v90, v81
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v83, v89
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v25, v82, v46, v25
	v_fma_f32 v82, -v84, v74, v88
	v_div_scale_f32 v90, null, v46, v46, v21
	v_fma_f32 v84, -v87, v86, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v82, v81, v74
	v_div_scale_f32 v81, null, v46, v46, v20
	v_fma_f32 v88, -v85, v91, 1.0
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v86, v84, v89
	v_rcp_f32_e32 v84, v81
	v_div_scale_f32 v82, s8, v22, v46, v22
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v88, null, v46, v46, v19
	v_div_fixup_f32 v24, v74, v46, v24
	v_fma_f32 v83, -v87, v86, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v90, v92, 1.0
	v_rcp_f32_e32 v94, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v81, v84, 1.0
	v_mul_f32_e32 v87, v82, v91
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v92, v74, v92
	v_div_scale_f32 v74, s9, v21, v46, v21
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v93, null, v46, v46, v17
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v85, v87, v82
	v_mul_f32_e32 v89, v74, v92
	v_div_scale_f32 v95, s10, v20, v46, v20
	v_fma_f32 v96, -v88, v94, 1.0
	v_rcp_f32_e32 v97, v93
	v_fmac_f32_e32 v87, v86, v91
	v_fma_f32 v86, -v90, v89, v74
	v_mul_f32_e32 v98, v95, v84
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s11, v19, v46, v19
	v_div_fixup_f32 v23, v83, v46, v23
	v_fma_f32 v82, -v85, v87, v82
	v_fmac_f32_e32 v89, v86, v92
	v_fma_f32 v83, -v81, v98, v95
	v_mul_f32_e32 v85, v96, v94
	v_fma_f32 v86, -v93, v97, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v74, -v90, v89, v74
	v_fmac_f32_e32 v98, v83, v84
	v_fma_f32 v83, -v88, v85, v96
	v_fmac_f32_e32 v97, v86, v97
	v_div_scale_f32 v86, s8, v17, v46, v17
	v_div_fmas_f32 v82, v82, v91, v87
	v_fma_f32 v81, -v81, v98, v95
	v_fmac_f32_e32 v85, v83, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v86, v97
	v_div_scale_f32 v87, null, v46, v46, v12
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v22, v82, v46, v22
	v_div_fmas_f32 v74, v74, v92, v89
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v89, v87
	v_div_fmas_f32 v81, v81, v84, v98
	v_fma_f32 v84, -v88, v85, v96
	v_fma_f32 v88, -v93, v83, v86
	v_div_fixup_f32 v21, v74, v46, v21
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v20, v81, v46, v20
	v_div_fmas_f32 v84, v84, v94, v85
	v_fmac_f32_e32 v83, v88, v97
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v82, -v87, v89, 1.0
	v_div_scale_f32 v81, null, v46, v46, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v93, v83, v86
	v_div_fixup_f32 v19, v84, v46, v19
	v_fmac_f32_e32 v89, v82, v89
	v_div_scale_f32 v82, null, v46, v46, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v74, v74, v97, v83
	v_div_scale_f32 v85, vcc_lo, v12, v46, v12
	v_rcp_f32_e32 v83, v81
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v17, v74, v46, v17
	v_mul_f32_e32 v90, v85, v89
	v_div_scale_f32 v84, null, v46, v46, v9
	v_div_scale_f32 v91, null, v46, v46, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v87, v90, v85
	v_rcp_f32_e32 v88, v84
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v74, -v81, v83, 1.0
	v_fma_f32 v92, -v82, v86, 1.0
	v_rcp_f32_e32 v93, v91
	v_fmac_f32_e32 v90, v94, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v74, v83
	v_div_scale_f32 v74, s8, v11, v46, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v87, v90, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v84, v88, 1.0
	v_mul_f32_e32 v96, v74, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v85, v89, v90
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fma_f32 v94, -v81, v96, v74
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v94, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s9, v10, v46, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v81, v96, v74
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v12, v85, v46, v12
	v_mul_f32_e32 v98, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v74, v83, v96
	s_mov_b32 vcc_lo, s9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v82, v98, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v39
	v_and_b32_e32 v39, 15, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v91, v93, 1.0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v87, v86
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v97, v93
	v_div_scale_f32 v97, s11, v8, v46, v8
	v_fma_f32 v82, -v82, v98, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v92, v32
	v_med3_f32 v34, v34, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v11, v74, v46, v11
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v76
	v_rndne_f32_e32 v76, v80
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v59, 15, v92
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v86, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v80, v44
	v_and_b32_e32 v44, 15, v49
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v10, v82, v46, v10
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s10, v9, v46, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v100, v97, v93 :: v_dual_and_b32 v49, 15, v82
	v_mul_f32_e32 v99, v95, v88
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v91, v100, v97
	v_fma_f32 v94, -v84, v99, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v78, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v99, v94, v88
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v94, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v100, v81, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v87, v37
	v_and_b32_e32 v37, 15, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v84, v99, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v61, 15, v94
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v91, v100, v97
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v77, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v88, v99
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v93, v100
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v9, v81, v46, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v83, v46, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v48
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v78, v78, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v77, v77, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v67, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v51
	v_rndne_f32_e32 v51, v54
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v62
	v_rndne_f32_e32 v62, v63
	v_rndne_f32_e32 v63, v65
	v_rndne_f32_e32 v65, v66
	v_rndne_f32_e32 v66, v70
	v_rndne_f32_e32 v70, v71
	v_rndne_f32_e32 v71, v75
	v_rndne_f32_e32 v75, v79
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v79, v45
	v_cvt_i32_f32_e32 v89, v35
	v_cvt_i32_f32_e32 v93, v31
	v_cvt_i32_f32_e32 v12, v12
	v_and_b32_e32 v31, 15, v78
	v_and_b32_e32 v35, 15, v67
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v67, 10, v0
	v_lshlrev_b32_e32 v78, 4, v68
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v109, v8
	v_and_b32_e32 v32, 15, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v67, 0x1800, v67
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v77, 15, v12
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v12, v78, v16
	v_lshlrev_b32_e32 v16, 6, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v8, 15, v46
	v_and_b32_e32 v46, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v79, 6, v5
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v29, v29
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v81, v43
	v_cvt_i32_f32_e32 v83, v41
	v_cvt_i32_f32_e32 v96, v28
	v_cvt_i32_f32_e32 v97, v27
	v_cvt_i32_f32_e32 v98, v26
	v_cvt_i32_f32_e32 v99, v25
	v_and_b32_e32 v30, 15, v76
	v_and_b32_e32 v76, 15, v17
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v17, 0, v67, v79
	v_and_or_b32 v13, 0x1b00, v16, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v88, v36
	v_cvt_i32_f32_e32 v91, v33
	v_cvt_i32_f32_e32 v104, v20
	v_cvt_i32_f32_e32 v105, v19
	v_cvt_i32_f32_e32 v86, v38
	v_cvt_i32_f32_e32 v100, v24
	v_cvt_i32_f32_e32 v101, v23
	v_cvt_i32_f32_e32 v102, v22
	v_cvt_i32_f32_e32 v103, v21
	v_cvt_i32_f32_e32 v106, v11
	v_cvt_i32_f32_e32 v107, v10
	v_cvt_i32_f32_e32 v108, v9
	v_and_b32_e32 v9, 15, v48
	v_and_b32_e32 v10, 15, v51
	v_and_b32_e32 v11, 15, v54
	v_and_b32_e32 v19, 15, v55
	v_and_b32_e32 v20, 15, v56
	v_and_b32_e32 v21, 15, v57
	v_and_b32_e32 v22, 15, v62
	v_and_b32_e32 v23, 15, v63
	v_and_b32_e32 v24, 15, v65
	v_and_b32_e32 v25, 15, v66
	v_and_b32_e32 v33, 15, v73
	v_and_b32_e32 v34, 15, v72
	v_and_b32_e32 v36, 15, v64
	v_and_b32_e32 v38, 15, v60
	v_and_b32_e32 v43, 15, v50
	v_and_b32_e32 v45, 15, v47
	v_and_b32_e32 v47, 15, v80
	v_and_b32_e32 v48, 15, v81
	v_and_b32_e32 v50, 15, v83
	v_and_b32_e32 v63, 15, v96
	v_and_b32_e32 v64, 15, v97
	v_and_b32_e32 v65, 15, v98
	v_and_b32_e32 v66, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v12, v17, v12, v15
	v_xad_u32 v13, v13, v69, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v84, v40
	v_cvt_i32_f32_e32 v95, v29
	v_and_b32_e32 v26, 15, v70
	v_and_b32_e32 v27, 15, v71
	v_and_b32_e32 v28, 15, v74
	v_and_b32_e32 v29, 15, v75
	v_and_b32_e32 v40, 15, v58
	v_and_b32_e32 v41, 15, v53
	v_and_b32_e32 v42, 15, v52
	v_and_b32_e32 v55, 15, v88
	v_and_b32_e32 v56, 15, v89
	v_and_b32_e32 v57, 15, v90
	v_and_b32_e32 v58, 15, v91
	v_and_b32_e32 v74, 15, v104
	v_and_b32_e32 v75, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v12, v[8:11]
	ds_store_b128 v12, v[23:26] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v13
	ds_load_b128 v[23:26], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[31:34]
	ds_store_b128 v12, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v13
	ds_load_b128 v[39:42], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[47:50]
	ds_store_b128 v12, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v13
	ds_load_b128 v[55:58], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[63:66]
	ds_store_b128 v12, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v13
	ds_load_b128 v[74:77], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[19:22]
	ds_store_b128 v12, v[27:30] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[19:22], v13
	ds_load_b128 v[27:30], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[35:38]
	ds_store_b128 v12, v[43:46] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v13
	ds_load_b128 v[43:46], v13 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v84
	v_and_b32_e32 v52, 15, v85
	v_and_b32_e32 v53, 15, v86
	v_and_b32_e32 v54, 15, v87
	v_and_b32_e32 v60, 15, v93
	v_and_b32_e32 v62, 15, v95
	v_and_b32_e32 v70, 15, v100
	v_and_b32_e32 v71, 15, v101
	v_and_b32_e32 v72, 15, v102
	v_and_b32_e32 v73, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[51:54]
	ds_store_b128 v12, v[59:62] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v13
	ds_load_b128 v[59:62], v13 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v78, 15, v106
	v_and_b32_e32 v79, 15, v107
	v_and_b32_e32 v80, 15, v108
	v_and_b32_e32 v81, 15, v109
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v30, 4, v22
	v_lshl_or_b32 v30, v46, 4, v38
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v46, 3, v68
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v26, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, s28, v14
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[70:73]
	ds_store_b128 v12, v[78:81] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v13
	ds_load_b128 v[78:81], v13 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v23, 4, v8
	v_lshl_or_b32 v9, v24, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v8, s37, 7, v46
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 16, v11
	v_add_nc_u32_e32 v14, 32, v11
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v10, v25, 4, v10
	v_lshl_or_b32 v19, v27, 4, v19
	v_lshl_or_b32 v20, v28, 4, v20
	v_lshl_or_b32 v21, v29, 4, v21
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 48, v11
	v_mad_u64_u32 v[11:12], null, v11, s8, v[8:9]
	v_mad_u64_u32 v[12:13], null, v13, s8, v[8:9]
	v_mad_u64_u32 v[13:14], null, v14, s8, v[8:9]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v27, v43, 4, v35
	v_lshl_or_b32 v28, v44, 4, v36
	v_lshl_or_b32 v29, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v15, s8, v[8:9]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v17.l
	v_and_b16 v4.l, 0xff, v10.l
	v_lshlrev_b16 v7.l, 8, v9.l
	v_and_b16 v8.l, 0xff, v16.l
	v_lshlrev_b16 v8.h, 8, v22.l
	v_and_b16 v9.l, 0xff, v21.l
	v_lshlrev_b16 v9.h, 8, v20.l
	v_and_b16 v10.l, 0xff, v19.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v39, 4, v31
	v_lshl_or_b32 v24, v40, 4, v32
	v_lshl_or_b32 v25, v41, 4, v33
	v_lshl_or_b32 v26, v42, 4, v34
	v_lshl_or_b32 v35, v59, 4, v51
	v_lshl_or_b32 v36, v60, 4, v52
	v_lshl_or_b32 v37, v61, 4, v53
	v_lshl_or_b32 v38, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v4.l, v3.l
	v_or_b16 v15.l, v8.l, v7.l
	v_or_b16 v16.h, v9.l, v8.h
	v_or_b16 v16.l, v10.l, v9.h
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v8.h, 8, v30.l
	v_and_b16 v9.l, 0xff, v29.l
	v_lshlrev_b16 v9.h, 8, v28.l
	v_and_b16 v10.l, 0xff, v27.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v31, v55, 4, v47
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v43, v78, 4, v69
	v_lshl_or_b32 v44, v79, 4, v70
	v_lshl_or_b32 v45, v80, 4, v71
	v_lshl_or_b32 v47, v81, 4, v72
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v26.l
	v_and_b16 v4.l, 0xff, v25.l
	v_lshlrev_b16 v7.l, 8, v24.l
	v_and_b16 v8.l, 0xff, v23.l
	buffer_store_b64 v[15:16], v11, s[8:11], 0 offen
	v_or_b16 v16.h, v9.l, v8.h
	v_or_b16 v16.l, v10.l, v9.h
	v_lshlrev_b16 v8.h, 8, v38.l
	v_and_b16 v9.l, 0xff, v37.l
	v_lshlrev_b16 v9.h, 8, v36.l
	v_and_b16 v10.l, 0xff, v35.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v74, 4, v63
	v_lshl_or_b32 v40, v75, 4, v64
	v_lshl_or_b32 v41, v76, 4, v65
	v_lshl_or_b32 v42, v77, 4, v66
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v4.l, v3.l
	v_or_b16 v15.l, v8.l, v7.l
	v_cndmask_b32_e32 v11, 0x80000000, v12, vcc_lo
	v_lshlrev_b16 v3.l, 8, v34.l
	v_and_b16 v4.l, 0xff, v33.l
	v_lshlrev_b16 v7.l, 8, v32.l
	v_and_b16 v8.l, 0xff, v31.l
	v_or_b16 v12.h, v9.l, v8.h
	v_or_b16 v12.l, v10.l, v9.h
	v_lshlrev_b16 v8.h, 8, v47.l
	v_and_b16 v9.l, 0xff, v45.l
	v_lshlrev_b16 v9.h, 8, v44.l
	v_and_b16 v10.l, 0xff, v43.l
	buffer_store_b64 v[15:16], v11, s[8:11], 0 offen
	v_or_b16 v11.h, v4.l, v3.l
	v_or_b16 v11.l, v8.l, v7.l
	v_lshlrev_b16 v3.l, 8, v42.l
	v_and_b16 v4.l, 0xff, v41.l
	v_lshlrev_b16 v7.l, 8, v40.l
	v_and_b16 v8.l, 0xff, v39.l
	v_or_b16 v16.h, v9.l, v8.h
	v_or_b16 v16.l, v10.l, v9.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v9, 4, v0
	v_lshrrev_b32_e32 v5, 2, v5
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v4.l, v3.l
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.l, v8.l, v7.l
	v_dual_cndmask_b32 v8, 0x80000000, v14 :: v_dual_and_b32 v9, 2, v9
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[11:12], v13, s[8:11], 0 offen
	buffer_store_b64 v[15:16], v8, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v8, 0, v46
	v_mov_b16_e32 v4.l, v18.h
	v_mov_b16_e32 v3.l, v7.h
	v_add3_u32 v5, v5, v9, v46
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
	ds_store_b64 v8, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v3, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v4, v6, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[30:31], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[34:35], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v4, s37, 1
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
.Ltmp62:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 202
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 202
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14244
; TotalNumSgprs: 43
; NumVgprs: 202
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 202
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
	.byte	1                               ; Abbrev [1] 0xb:0x6f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x49 DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x56:0x22 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp3                          ; DW_AT_low_pc
	.long	.Ltmp61-.Ltmp3                  ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x6b:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     202
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
