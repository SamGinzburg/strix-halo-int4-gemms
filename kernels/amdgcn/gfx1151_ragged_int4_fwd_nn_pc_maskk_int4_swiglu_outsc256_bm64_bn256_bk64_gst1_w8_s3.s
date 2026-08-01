	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	v_mov_b32_e32 v169, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_lshlrev_b32_e32 v0, 1, v169
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 24
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s4, s4, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
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
	s_mul_i32 s9, s6, s5
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s12
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s12, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s15, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s17, s14, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s18, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s28, s13, s15
	s_sub_i32 s33, s28, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s33, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[12:13], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s12
	s_addc_u32 s3, s5, s13
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s4, s6, s12
	s_addc_u32 s5, s7, s13
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[46:47], s[2:3], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[44:45], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s8, s12
	s_addc_u32 s3, s9, s13
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s10, s12
	s_addc_u32 s5, s11, s13
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s35, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v1, s46 :: v_dual_lshlrev_b32 v2, 1, v169
	v_mov_b32_e32 v3, s44
	s_branch .LBB0_3
.LBB0_2:
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x40
	s_load_b128 s[24:27], s[0:1], 0x10
	s_load_b64 s[40:41], s[2:3], 0x0
	s_load_b64 s[42:43], s[4:5], 0x0
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v170, 15, v169
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v171, 0x80, v169
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v144, 0
	v_mov_b32_e32 v133, 0
	v_mov_b32_e32 v131, 0
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s47, s33, 8
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s48, s34, 1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v18, 5, v169
	s_load_b128 s[16:19], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v20, 0x7f, v169
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v19, 0xe0, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s44, v18
	v_add_co_ci_u32_e64 v3, null, s45, 0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_lshlrev_b32_e32 v21, 1, v20
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v4, vcc_lo, v2, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 16
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	v_add_co_u32 v10, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v11, null, 0, v3, vcc_lo
	v_add_co_u32 v12, vcc_lo, v2, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, 0, v3, vcc_lo
	v_add_co_u32 v14, vcc_lo, v2, 48
	v_add_co_ci_u32_e64 v15, null, 0, v3, vcc_lo
	v_add_co_u32 v16, vcc_lo, v2, 56
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[42:43], v[2:3]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[40:41], v[4:5]
	v_cmp_le_i64_e64 s5, s[40:41], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[42:43], v[4:5]
	v_cmp_gt_i64_e64 s13, s[42:43], v[14:15]
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_lshrrev_b32_e32 v14, 7, v171
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s49, vcc_lo, s7
	v_cmp_eq_u32_e32 vcc_lo, 0, v171
	v_and_b32_e32 v4, 24, v0
	s_and_b32 s50, s0, s8
	v_dual_mov_b32 v199, v14 :: v_dual_lshlrev_b32 v2, 1, v14
	.loc	1 1068 35                       ; ragged.py:1068:35
	s_mul_i32 s0, s48, s35
	v_cndmask_b32_e64 v3, 0x88, 0, vcc_lo
	s_mul_i32 s57, s0, s46
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_mul_i32 s0, s35, s46
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[40:41], v[6:7]
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshl_add_u32 v2, s0, 1, v2
	v_xor_b32_e32 v5, v3, v20
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[42:43], v[6:7]
	v_lshl_or_b32 v180, v170, 5, v4
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_lshl_b32 s0, s28, 8
	v_mul_lo_u32 v3, s34, v2
	v_xor_b32_e32 v4, 0x110, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[40:41], v[8:9]
	.loc	1 1046 20 is_stmt 0             ; ragged.py:1046:20
	s_and_b32 s51, s1, s9
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_add_i32 s1, s0, s34
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[42:43], v[8:9]
	v_dual_mov_b32 v49, v1 :: v_dual_add_nc_u32 v214, 0, v4
	v_mov_b32_e32 v4, v1
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add3_u32 v3, s1, v3, v21
	s_lshl_b32 s1, s15, 8
	v_xor_b32_e32 v8, 16, v180
	v_add_nc_u32_e32 v6, 61, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[40:41], v[10:11]
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_subrev_nc_u32_e32 v3, s1, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[42:43], v[10:11]
	v_dual_mov_b32 v51, v1 :: v_dual_add_nc_u32 v216, 0, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v3, 1, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off
	scratch_store_b32 off, v169, off offset:80
	v_xor_b32_e32 v5, 8, v180
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_or_b32_e32 v11, 30, v14
	v_lshrrev_b32_e32 v7, 1, v19
	v_add_nc_u32_e32 v10, 53, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[40:41], v[16:17]
	v_dual_mov_b32 v58, v1 :: v_dual_add_nc_u32 v215, 0, v5
	v_mov_b32_e32 v5, v1
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_mul_lo_u32 v6, s34, v6
	v_mul_lo_u32 v11, s34, v11
	v_add3_u32 v181, 0, v170, v7
	v_add_nc_u32_e32 v7, 57, v2
	v_mul_lo_u32 v10, s34, v10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[42:43], v[16:17]
	v_mov_b32_e32 v16, v1
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[40:41], v[12:13]
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_add3_u32 v6, v6, s0, v21
	v_lshlrev_b32_e32 v11, 1, v11
	v_mul_lo_u32 v7, s34, v7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[42:43], v[12:13]
	v_xor_b32_e32 v9, 24, v180
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_subrev_nc_u32_e32 v6, s1, v6
	v_add_nc_u32_e32 v12, 49, v2
	v_add_nc_u32_e32 v127, s44, v18
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v13, 37, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v6, 1, v6
	scratch_store_b32 off, v3, off offset:4 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s34, v14
	v_dual_mov_b32 v60, v1 :: v_dual_add_nc_u32 v217, 0, v9
	v_mov_b32_e32 v9, v1
	v_dual_mov_b32 v66, v1 :: v_dual_and_b32 v135, 31, v169
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v177, s47, v21
	v_mov_b32_e32 v61, v1
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshlrev_b32_e32 v3, 1, v3
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v18, v1
	v_dual_mov_b32 v63, v1 :: v_dual_add_nc_u32 v218, 0, v0
	scratch_store_b32 off, v3, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v3, 28, v14
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v65, v1
	v_mov_b32_e32 v67, v1
	v_mov_b32_e32 v69, v1
	v_mul_lo_u32 v3, s34, v3
	v_mov_b32_e32 v70, v1
	v_mov_b32_e32 v71, v1
	v_mov_b32_e32 v72, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v73, v1
	v_mov_b32_e32 v74, v1
	v_mov_b32_e32 v75, v1
	v_lshlrev_b32_e32 v3, 1, v3
	scratch_store_b32 off, v6, off offset:12 ; 4-byte Folded Spill
	v_add3_u32 v6, v7, s0, v21
	v_add3_u32 v7, v10, s0, v21
	v_mul_lo_u32 v10, s34, v12
	scratch_store_b32 off, v3, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v12, 45, v2
	v_subrev_nc_u32_e32 v6, s1, v6
	v_subrev_nc_u32_e32 v7, s1, v7
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v24, v1
	v_mul_lo_u32 v12, s34, v12
	v_add_nc_u32_e32 v6, 1, v6
	scratch_store_b32 off, v11, off offset:16 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 1, v7
	v_or_b32_e32 v11, 26, v14
	v_or_b32_e32 v7, 24, v14
	scratch_store_b32 off, v6, off offset:20 ; 4-byte Folded Spill
	v_add3_u32 v6, v10, s0, v21
	v_add3_u32 v10, v12, s0, v21
	v_add_nc_u32_e32 v12, 41, v2
	v_mul_lo_u32 v7, s34, v7
	v_mov_b32_e32 v23, v1
	v_subrev_nc_u32_e32 v6, s1, v6
	v_subrev_nc_u32_e32 v10, s1, v10
	v_mul_lo_u32 v12, s34, v12
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v30, v1
	v_add_nc_u32_e32 v6, 1, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:28
	scratch_store_b32 off, v170, off offset:84
	v_mul_lo_u32 v3, s34, v11
	v_or_b32_e32 v11, 22, v14
	scratch_store_b32 off, v6, off offset:36 ; 4-byte Folded Spill
	v_dual_mov_b32 v27, v1 :: v_dual_lshlrev_b32 v6, 1, v7
	v_mov_b32_e32 v76, v1
	v_mul_lo_u32 v11, s34, v11
	v_dual_mov_b32 v26, v1 :: v_dual_lshlrev_b32 v3, 1, v3
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v77, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	scratch_store_b32 off, v3, off offset:32 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s34, v13
	v_lshlrev_b32_e32 v7, 1, v11
	scratch_store_b32 off, v6, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 1, v10
	v_or_b32_e32 v10, 20, v14
	v_or_b32_e32 v11, 18, v14
	v_or_b32_e32 v13, 16, v14
	v_mov_b32_e32 v78, v1
	v_add3_u32 v3, v3, s0, v21
	v_mul_lo_u32 v10, s34, v10
	v_mul_lo_u32 v11, s34, v11
	v_mov_b32_e32 v79, v1
	v_mov_b32_e32 v80, v1
	v_subrev_nc_u32_e32 v3, s1, v3
	v_mov_b32_e32 v81, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v82, v1
	v_mov_b32_e32 v83, v1
	v_add_nc_u32_e32 v3, 1, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v7, off offset:48
	scratch_store_b32 off, v171, off offset:88
	v_add3_u32 v7, v12, s0, v21
	v_add_nc_u32_e32 v12, 29, v2
	scratch_store_b32 off, v3, off offset:60 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v11, 1, v11
	v_mov_b32_e32 v31, v1
	v_subrev_nc_u32_e32 v7, s1, v7
	v_mul_lo_u32 v12, s34, v12
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v35, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v38, v1 :: v_dual_add_nc_u32 v7, 1, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:44
	scratch_store_b32 off, v0, off offset:92
	v_add_nc_u32_e32 v6, 33, v2
	v_mov_b32_e32 v42, v1
	scratch_store_b32 off, v7, off offset:52 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v7, 1, v10
	v_add_nc_u32_e32 v10, 25, v2
	v_mul_lo_u32 v6, s34, v6
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v44, v1
	v_mul_lo_u32 v10, s34, v10
	v_mov_b32_e32 v84, v1
	v_mov_b32_e32 v85, v1
	v_mov_b32_e32 v48, v1
	v_add3_u32 v6, v6, s0, v21
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v86, v1
	v_mov_b32_e32 v87, v1
	v_add3_u32 v10, v10, s0, v21
	v_subrev_nc_u32_e32 v3, s1, v6
	v_mul_lo_u32 v6, s34, v13
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v54, v1
	v_subrev_nc_u32_e32 v10, s1, v10
	v_add_nc_u32_e32 v3, 1, v3
	scratch_store_b32 off, v7, off offset:56 ; 4-byte Folded Spill
	v_add3_u32 v7, v12, s0, v21
	v_or_b32_e32 v12, 10, v14
	v_lshlrev_b32_e32 v6, 1, v6
	scratch_store_b32 off, v11, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v11, 14, v14
	v_subrev_nc_u32_e32 v7, s1, v7
	v_add_nc_u32_e32 v202, 1, v10
	scratch_store_b32 off, v6, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 12, v14
	v_mov_b32_e32 v39, v1
	v_add_nc_u32_e32 v201, 1, v7
	v_mul_lo_u32 v7, s34, v11
	v_add_nc_u32_e32 v11, 17, v2
	v_mul_lo_u32 v6, s34, v6
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v43, v1
	v_mul_lo_u32 v11, s34, v11
	v_dual_mov_b32 v50, v1 :: v_dual_lshlrev_b32 v7, 1, v7
	scratch_store_b32 off, v3, off offset:68 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 21, v2
	v_lshlrev_b32_e32 v203, 1, v6
	v_mov_b32_e32 v45, v1
	scratch_store_b32 off, v7, off offset:76 ; 4-byte Folded Spill
	v_mul_lo_u32 v7, s34, v12
	v_mul_lo_u32 v3, s34, v3
	v_add3_u32 v6, v11, s0, v21
	v_add_nc_u32_e32 v12, 13, v2
	v_or_b32_e32 v11, 4, v14
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v52, v1
	v_subrev_nc_u32_e32 v6, s1, v6
	v_lshlrev_b32_e32 v205, 1, v7
	v_add3_u32 v3, v3, s0, v21
	v_or_b32_e32 v7, 8, v14
	v_mul_lo_u32 v10, s34, v12
	v_add_nc_u32_e32 v206, 1, v6
	v_or_b32_e32 v12, 2, v14
	v_subrev_nc_u32_e32 v3, s1, v3
	v_mul_lo_u32 v6, s34, v7
	v_or_b32_e32 v7, 6, v14
	v_mul_lo_u32 v11, s34, v11
	v_mul_lo_u32 v12, s34, v12
	v_add_nc_u32_e32 v204, 1, v3
	v_add_nc_u32_e32 v3, 9, v2
	v_add_nc_u32_e32 v2, 5, v2
	v_add3_u32 v10, v10, s0, v21
	v_lshlrev_b32_e32 v207, 1, v6
	v_mov_b32_e32 v6, v1
	v_mul_lo_u32 v3, s34, v3
	v_mul_lo_u32 v2, s34, v2
	v_dual_mov_b32 v64, v1 :: v_dual_add_nc_u32 v131, 56, v127
	v_dual_mov_b32 v68, v1 :: v_dual_add_nc_u32 v133, 48, v127
	v_dual_mov_b32 v59, v1 :: v_dual_add_nc_u32 v134, 40, v127
	v_dual_mov_b32 v57, v1 :: v_dual_add_nc_u32 v132, 32, v127
	v_dual_mov_b32 v55, v1 :: v_dual_add_nc_u32 v130, 24, v127
	v_add3_u32 v3, v3, s0, v21
	v_add3_u32 v2, v2, s0, v21
	v_dual_mov_b32 v62, v1 :: v_dual_add_nc_u32 v129, 16, v127
	v_mad_u64_u32 v[162:163], null, v131, s35, v[135:136]
	v_dual_mov_b32 v53, v1 :: v_dual_add_nc_u32 v128, 8, v127
	v_mad_u64_u32 v[163:164], null, v133, s35, v[135:136]
	v_mul_lo_u32 v7, s34, v7
	v_mad_u64_u32 v[164:165], null, v134, s35, v[135:136]
	v_mad_u64_u32 v[165:166], null, v132, s35, v[135:136]
	v_mad_u64_u32 v[166:167], null, v130, s35, v[135:136]
	v_subrev_nc_u32_e32 v10, s1, v10
	v_subrev_nc_u32_e32 v3, s1, v3
	v_subrev_nc_u32_e32 v2, s1, v2
	v_mad_u64_u32 v[167:168], null, v129, s35, v[135:136]
	v_mad_u64_u32 v[168:169], null, v128, s35, v[135:136]
	v_mad_u64_u32 v[169:170], null, v127, s35, v[135:136]
	v_add_nc_u32_e32 v208, 1, v10
	v_lshlrev_b32_e32 v209, 1, v7
	v_add_nc_u32_e32 v210, 1, v3
	v_lshlrev_b32_e32 v211, 1, v11
	v_add_nc_u32_e32 v212, 1, v2
	v_dual_mov_b32 v56, v1 :: v_dual_lshlrev_b32 v213, 1, v12
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v88, v1
	v_mov_b32_e32 v89, v1
	v_mov_b32_e32 v90, v1
	v_mov_b32_e32 v91, v1
	v_mov_b32_e32 v92, v1
	v_mov_b32_e32 v93, v1
	v_mov_b32_e32 v94, v1
	v_mov_b32_e32 v95, v1
	v_mov_b32_e32 v96, v1
	v_mov_b32_e32 v97, v1
	v_mov_b32_e32 v98, v1
	v_mov_b32_e32 v99, v1
	v_mov_b32_e32 v100, v1
	v_mov_b32_e32 v101, v1
	v_mov_b32_e32 v102, v1
	v_mov_b32_e32 v103, v1
	v_mov_b32_e32 v104, v1
	v_mov_b32_e32 v105, v1
	v_mov_b32_e32 v106, v1
	v_mov_b32_e32 v107, v1
	v_mov_b32_e32 v108, v1
	v_mov_b32_e32 v109, v1
	v_mov_b32_e32 v110, v1
	v_mov_b32_e32 v111, v1
	v_mov_b32_e32 v112, v1
	v_mov_b32_e32 v113, v1
	v_mov_b32_e32 v114, v1
	v_mov_b32_e32 v115, v1
	v_mov_b32_e32 v116, v1
	v_mov_b32_e32 v117, v1
	v_mov_b32_e32 v118, v1
	v_mov_b32_e32 v119, v1
	v_mov_b32_e32 v120, v1
	v_mov_b32_e32 v121, v1
	v_mov_b32_e32 v122, v1
	v_mov_b32_e32 v123, v1
	v_mov_b32_e32 v124, v1
	v_mov_b32_e32 v125, v1
	v_mov_b32_e32 v126, v1
	v_dual_mov_b32 v200, v135 :: v_dual_mov_b32 v127, v1
	v_mov_b32_e32 v128, v1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s52, s2, s10
	s_and_b32 s53, s3, s11
	s_and_b32 s54, s4, s12
	s_and_b32 s55, s5, s13
	s_and_b32 s56, s6, s14
	.loc	1 1058 13                       ; ragged.py:1058:13
	s_mov_b32 s58, 0
	s_and_b32 s37, s19, 0xffff
	s_add_u32 s59, s57, s34
	.loc	1 1058 19 is_stmt 0             ; ragged.py:1058:19
	s_lshl_b32 s60, s34, 6
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s36, s18
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s17, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_add_nc_u32_e32 v129, s17, v200
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v146, s17, v168
	v_add_nc_u32_e32 v147, s17, v167
	v_add_nc_u32_e32 v148, s17, v166
	v_add_nc_u32_e32 v149, s17, v165
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s15, s35, v129
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v129, s17, v199
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add3_u32 v233, v213, s58, v177
	v_add3_u32 v232, v211, s58, v177
	v_add3_u32 v231, v209, s58, v177
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s16, s49, s15
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s14, s35, v129
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add3_u32 v230, v207, s58, v177
	v_add3_u32 v229, v205, s58, v177
	v_add3_u32 v228, v203, s58, v177
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v150, s17, v164
	v_add_nc_u32_e32 v151, s17, v163
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_add_nc_u32_e32 v152, s17, v162
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	v_add_nc_u32_e32 v131, s57, v233
	v_add_nc_u32_e32 v132, s57, v232
	v_add_nc_u32_e32 v133, s57, v231
	v_add_nc_u32_e32 v134, s57, v230
	v_add_nc_u32_e32 v135, s57, v229
	v_add_nc_u32_e32 v136, s57, v228
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v231, s59, v231
	v_add_nc_u32_e32 v232, s59, v232
	v_add_nc_u32_e32 v233, s59, v233
	v_add_nc_u32_e32 v228, s59, v228
	v_add_nc_u32_e32 v229, s59, v229
	v_add_nc_u32_e32 v230, s59, v230
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add3_u32 v227, v0, s58, v177
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v137, s57, v227
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v227, s59, v227
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add3_u32 v226, v0, s58, v177
	scratch_load_b32 v0, off, off offset:64 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v138, s57, v226
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v226, s59, v226
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add3_u32 v225, v0, s58, v177
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v139, s57, v225
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v225, s59, v225
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add3_u32 v224, v0, s58, v177
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v140, s57, v224
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v224, s59, v224
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add3_u32 v223, v0, s58, v177
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v141, s57, v223
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v223, s59, v223
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add3_u32 v222, v0, s58, v177
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v142, s57, v222
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v222, s59, v222
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add3_u32 v221, v0, s58, v177
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v143, s57, v221
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v130, 2, v129
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v221, s59, v221
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s11, s35, v130
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v130, 4, v129
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v131, 0x80000000, v131, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s12, s35, v130
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v130, 6, v129
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v233, 0x80000000, v233, s11
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v132, 0x80000000, v132, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s13, s35, v130
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v130, 8, v129
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v232, 0x80000000, v232, s12
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v133, 0x80000000, v133, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s10, s35, v130
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v130, 10, v129
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v231, 0x80000000, v231, s13
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v134, 0x80000000, v134, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s7, s35, v130
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v130, 12, v129
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v230, 0x80000000, v230, s10
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v135, 0x80000000, v135, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s8, s35, v130
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v130, 14, v129
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v229, 0x80000000, v229, s7
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v136, 0x80000000, v136, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s9, s35, v130
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v130, 16, v129
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v228, 0x80000000, v228, s8
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v137, 0x80000000, v137, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s6, s35, v130
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v130, 18, v129
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v227, 0x80000000, v227, s9
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v138, 0x80000000, v138, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s3, s35, v130
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v130, 20, v129
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v226, 0x80000000, v226, s6
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v139, 0x80000000, v139, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s4, s35, v130
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v130, 22, v129
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v225, 0x80000000, v225, s3
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v140, 0x80000000, v140, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s5, s35, v130
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v130, 24, v129
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v224, 0x80000000, v224, s4
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v141, 0x80000000, v141, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s2, s35, v130
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v130, 26, v129
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v223, 0x80000000, v223, s5
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v130
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v130, 28, v129
	v_add_nc_u32_e32 v129, 30, v129
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v222, 0x80000000, v222, s2
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v143, 0x80000000, v143, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s0, s35, v130
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_i32_e64 s1, s35, v129
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v221, 0x80000000, v221, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add3_u32 v219, v0, s58, v177
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	v_add_nc_u32_e32 v144, s57, v219
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v219, s59, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v144, 0x80000000, v144, s0
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v219, 0x80000000, v219, s0
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add3_u32 v234, v0, s58, v177
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v130, s57, v234
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v234, s59, v234
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v129, 0x80000000, v130, s14
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v130, s17, v169
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v234, 0x80000000, v234, s14
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s17, s17, 32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v130, 0x80000000, v130, s16
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s16, s50, s15
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v146, 0x80000000, v146, s16
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s16, s51, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v147, 0x80000000, v147, s16
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s16, s52, s15
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v148, 0x80000000, v148, s16
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s16, s53, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v149, 0x80000000, v149, s16
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s16, s54, s15
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v150, 0x80000000, v150, s16
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s16, s55, s15
	s_and_b32 s15, s56, s15
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v151, 0x80000000, v151, s16
	v_cndmask_b32_e64 v152, 0x80000000, v152, s15
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add3_u32 v220, v0, s58, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v145, s57, v220
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v220, s59, v220
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v145, 0x80000000, v145, s1
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x7
	buffer_load_u8 v130, v130, s[28:31], 0 offen
	buffer_load_u8 v147, v147, s[28:31], 0 offen
	buffer_load_u8 v149, v149, s[28:31], 0 offen
	buffer_load_u8 v151, v151, s[28:31], 0 offen
	buffer_load_u8 v152, v152, s[28:31], 0 offen
	buffer_load_u8 v150, v150, s[28:31], 0 offen
	buffer_load_u8 v148, v148, s[28:31], 0 offen
	buffer_load_u8 v146, v146, s[28:31], 0 offen
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0xf
	buffer_load_u16 v170, v129, s[36:39], 0 offen
	buffer_load_u16 v171, v131, s[36:39], 0 offen
	buffer_load_u16 v172, v132, s[36:39], 0 offen
	buffer_load_u16 v173, v133, s[36:39], 0 offen
	buffer_load_u16 v235, v134, s[36:39], 0 offen
	buffer_load_u16 v236, v135, s[36:39], 0 offen
	buffer_load_u16 v237, v136, s[36:39], 0 offen
	buffer_load_u16 v238, v137, s[36:39], 0 offen
	buffer_load_u16 v239, v138, s[36:39], 0 offen
	buffer_load_u16 v240, v139, s[36:39], 0 offen
	buffer_load_u16 v241, v140, s[36:39], 0 offen
	buffer_load_u16 v242, v141, s[36:39], 0 offen
	buffer_load_u16 v243, v142, s[36:39], 0 offen
	buffer_load_u16 v244, v143, s[36:39], 0 offen
	buffer_load_u16 v245, v144, s[36:39], 0 offen
	buffer_load_u16 v246, v145, s[36:39], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v220, 0x80000000, v220, s1
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v129, 0, v0
	ds_store_b8 v129, v130
	ds_store_b8 v129, v147 offset:512
	ds_store_b8 v129, v149 offset:1024
	ds_store_b8 v129, v151 offset:1536
	ds_store_b8 v214, v146
	ds_store_b8 v214, v148 offset:512
	ds_store_b8 v214, v150 offset:1024
	ds_store_b8 v214, v152 offset:1536
	v_add_nc_u32_e32 v129, 0, v180
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[157:160], v129 offset1:1
	ds_load_2addr_stride64_b64 v[153:156], v129 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[149:152], v215 offset1:1
	ds_load_2addr_stride64_b64 v[145:148], v215 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[141:144], v216 offset1:1
	ds_load_2addr_stride64_b64 v[137:140], v216 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[133:136], v217 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v217 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v218, v170
	ds_store_b16 v218, v171 offset:512
	ds_store_b16 v218, v172 offset:1024
	ds_store_b16 v218, v173 offset:1536
	ds_store_b16 v218, v235 offset:2048
	ds_store_b16 v218, v236 offset:2560
	ds_store_b16 v218, v237 offset:3072
	ds_store_b16 v218, v238 offset:3584
	ds_store_b16 v218, v239 offset:4096
	ds_store_b16 v218, v240 offset:4608
	ds_store_b16 v218, v241 offset:5120
	ds_store_b16 v218, v242 offset:5632
	ds_store_b16 v218, v243 offset:6144
	ds_store_b16 v218, v244 offset:6656
	ds_store_b16 v218, v245 offset:7168
	ds_store_b16 v218, v246 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v170, v181 offset:1280
	ds_load_u8 v171, v181 offset:1024
	ds_load_u8 v172, v181 offset:1920
	ds_load_u8 v173, v181 offset:1664
	ds_load_u8 v235, v181 offset:1408
	ds_load_u8 v236, v181 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v181 offset:1792
	ds_load_u8 v237, v181 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v235, v236, v235, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v172, 16, v235
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v237, v171, 0xc0c0004
	ds_load_u8 v237, v181 offset:256
	ds_load_u8 v238, v181
	ds_load_u8 v239, v181 offset:896
	ds_load_u8 v240, v181 offset:640
	ds_load_u8 v241, v181 offset:384
	ds_load_u8 v242, v181 offset:128
	v_lshl_or_b32 v171, v171, 16, v170
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v237, v238, v237, 0xc0c0004
	ds_load_u8 v238, v181 offset:768
	ds_load_u8 v243, v181 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v236, v242, v241, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v238, v243, v238, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v170, v238, 16, v237
	v_perm_b32 v237, v240, v239, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[97:104], v[170:171], v[153:154], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v172, v237, 16, v236
	v_wmma_i32_16x16x16_iu4 v[113:120], v[170:171], v[155:156], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[170:171], v[157:158], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[170:171], v[159:160], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[172:173], v[153:154], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[172:173], v[155:156], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[172:173], v[157:158], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[172:173], v[159:160], v[89:96] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v235, s58, v0
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v235, 0x80000000, v235, s14
	s_clause 0x4
	buffer_load_u8 v235, v235, s[36:39], 0 offen
	buffer_load_u8 v237, v231, s[36:39], 0 offen
	buffer_load_u8 v232, v232, s[36:39], 0 offen
	buffer_load_u8 v233, v233, s[36:39], 0 offen
	buffer_load_u8 v234, v234, s[36:39], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v231.l, 8, v235.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v235.l, v234.l, v231.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v231, s58, v212
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v231, 0x80000000, v231, s11
	buffer_load_u8 v231, v231, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v231.l, 8, v231.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v235.h, v233.l, v231.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v231, s58, v210
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v231, 0x80000000, v231, s12
	buffer_load_u8 v231, v231, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v231.l, 8, v231.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v236.l, v232.l, v231.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v231, s58, v208
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v231, 0x80000000, v231, s13
	buffer_load_u8 v231, v231, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v231.l, 8, v231.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v236.h, v237.l, v231.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v231, s58, v206
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v231, 0x80000000, v231, s10
	s_clause 0x4
	buffer_load_u8 v231, v231, s[36:39], 0 offen
	buffer_load_u8 v232, v227, s[36:39], 0 offen
	buffer_load_u8 v228, v228, s[36:39], 0 offen
	buffer_load_u8 v229, v229, s[36:39], 0 offen
	buffer_load_u8 v230, v230, s[36:39], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v227.l, 8, v231.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v237.l, v230.l, v227.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v227, s58, v204
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v227, 0x80000000, v227, s7
	buffer_load_u8 v227, v227, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v227.l, 8, v227.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v237.h, v229.l, v227.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v227, s58, v202
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v227, 0x80000000, v227, s8
	buffer_load_u8 v227, v227, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v227.l, 8, v227.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v238.l, v228.l, v227.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v227, s58, v201
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v227, 0x80000000, v227, s9
	buffer_load_u8 v227, v227, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v227.l, 8, v227.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v238.h, v232.l, v227.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v227, s58, v0
	scratch_load_b32 v0, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v227, 0x80000000, v227, s6
	s_clause 0x4
	buffer_load_u8 v227, v227, s[36:39], 0 offen
	buffer_load_u8 v228, v223, s[36:39], 0 offen
	buffer_load_u8 v224, v224, s[36:39], 0 offen
	buffer_load_u8 v225, v225, s[36:39], 0 offen
	buffer_load_u8 v226, v226, s[36:39], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v223.l, 8, v227.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v239.l, v226.l, v223.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v223, s58, v0
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v223, 0x80000000, v223, s3
	buffer_load_u8 v223, v223, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v223.l, 8, v223.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v239.h, v225.l, v223.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v223, s58, v0
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v223, 0x80000000, v223, s4
	buffer_load_u8 v223, v223, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v223.l, 8, v223.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v240.l, v224.l, v223.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v223, s58, v0
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v223, 0x80000000, v223, s5
	buffer_load_u8 v223, v223, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v223.l, 8, v223.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v240.h, v228.l, v223.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v223, s58, v0
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v223, 0x80000000, v223, s2
	s_clause 0x4
	buffer_load_u8 v223, v223, s[36:39], 0 offen
	buffer_load_u8 v220, v220, s[36:39], 0 offen
	buffer_load_u8 v224, v219, s[36:39], 0 offen
	buffer_load_u8 v221, v221, s[36:39], 0 offen
	buffer_load_u8 v222, v222, s[36:39], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v219.l, 8, v223.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v241.l, v222.l, v219.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v219, s58, v0
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v219, 0x80000000, v219, vcc_lo
	buffer_load_u8 v219, v219, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v219.l, 8, v219.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v241.h, v221.l, v219.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v219, s58, v0
	.loc	1 1095 35                       ; ragged.py:1095:35
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v219, 0x80000000, v219, s0
	buffer_load_u8 v219, v219, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v219.l, 8, v219.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v242.l, v224.l, v219.l
	v_add_nc_u32_e32 v219, s58, v0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_add_i32 s58, s58, s60
	s_cmp_lt_i32 s17, s35
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e64 v219, 0x80000000, v219, s1
	buffer_load_u8 v219, v219, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v219.l, 8, v219.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v242.h, v220.l, v219.l
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v243, v181 offset:3328
	ds_load_u8 v244, v181 offset:3072
	ds_load_u8 v245, v181 offset:3840
	ds_load_u8 v246, v181 offset:3584
	ds_load_u8 v247, v181 offset:3968
	ds_load_u8 v248, v181 offset:3712
	ds_load_u8 v249, v181 offset:3456
	ds_load_u8 v250, v181 offset:3200
	ds_load_u8 v251, v181 offset:2304
	ds_load_u8 v252, v181 offset:2048
	ds_load_u8 v253, v181 offset:2816
	ds_load_u8 v254, v181 offset:2560
	ds_load_u8 v255, v181 offset:2944
	ds_load_u8 v175, v181 offset:2688
	ds_load_u8 v174, v181 offset:2432
	ds_load_u8 v176, v181 offset:2176
	ds_load_u8 v161, v181 offset:5376
	ds_load_u8 v178, v181 offset:5120
	ds_load_u8 v0, v181 offset:5888
	ds_load_u8 v182, v181 offset:5632
	ds_load_u8 v183, v181 offset:6016
	ds_load_u8 v184, v181 offset:5760
	ds_load_u8 v185, v181 offset:5504
	ds_load_u8 v179, v181 offset:5248
	ds_load_u8 v186, v181 offset:4352
	ds_load_u8 v187, v181 offset:4096
	ds_load_u8 v188, v181 offset:4864
	ds_load_u8 v189, v181 offset:4608
	ds_load_u8 v190, v181 offset:4992
	ds_load_u8 v191, v181 offset:4736
	ds_load_u8 v192, v181 offset:4480
	ds_load_u8 v193, v181 offset:4224
	ds_load_u8 v221, v181 offset:7424
	ds_load_u8 v223, v181 offset:7168
	ds_load_u8 v224, v181 offset:7936
	ds_load_u8 v226, v181 offset:7680
	ds_load_u8 v219, v181 offset:8064
	ds_load_u8 v220, v181 offset:7808
	ds_load_u8 v222, v181 offset:7552
	ds_load_u8 v225, v181 offset:7296
	ds_load_u8 v229, v181 offset:6400
	ds_load_u8 v231, v181 offset:6144
	ds_load_u8 v232, v181 offset:6912
	ds_load_u8 v234, v181 offset:6656
	ds_load_u8 v227, v181 offset:7040
	ds_load_u8 v228, v181 offset:6784
	ds_load_u8 v230, v181 offset:6528
	ds_load_u8 v233, v181 offset:6272
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v218, v235
	ds_store_b16_d16_hi v218, v235 offset:512
	ds_store_b16 v218, v236 offset:1024
	ds_store_b16_d16_hi v218, v236 offset:1536
	ds_store_b16 v218, v237 offset:2048
	ds_store_b16_d16_hi v218, v237 offset:2560
	ds_store_b16 v218, v238 offset:3072
	ds_store_b16_d16_hi v218, v238 offset:3584
	ds_store_b16 v218, v239 offset:4096
	ds_store_b16_d16_hi v218, v239 offset:4608
	ds_store_b16 v218, v240 offset:5120
	ds_store_b16_d16_hi v218, v240 offset:5632
	ds_store_b16 v218, v241 offset:6144
	ds_store_b16_d16_hi v218, v241 offset:6656
	ds_store_b16 v218, v242 offset:7168
	ds_store_b16_d16_hi v218, v242 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1100 32                       ; ragged.py:1100:32
	ds_load_u8 v235, v181 offset:1280
	ds_load_u8 v236, v181 offset:1024
	ds_load_u8 v237, v181 offset:1920
	ds_load_u8 v238, v181 offset:1664
	ds_load_u8 v239, v181 offset:1408
	ds_load_u8 v240, v181 offset:1152
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v0, v182, v0, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v235, v236, v235, 0xc0c0004
	ds_load_u8 v236, v181 offset:1792
	ds_load_u8 v241, v181 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v237, v238, v237, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v236, v241, v236, 0xc0c0004
	ds_load_u8 v241, v181 offset:256
	ds_load_u8 v242, v181
	ds_load_u8 v194, v181 offset:896
	ds_load_u8 v195, v181 offset:640
	ds_load_u8 v196, v181 offset:384
	ds_load_u8 v197, v181 offset:128
	v_lshl_or_b32 v236, v236, 16, v235
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v241, v242, v241, 0xc0c0004
	ds_load_u8 v242, v181 offset:768
	ds_load_u8 v198, v181 offset:512
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v194, v195, v194, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v198, v198, v242, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v235, v198, 16, v241
	v_perm_b32 v198, v240, v239, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[235:236], v[153:154], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v238, v237, 16, v198
	v_lshl_or_b32 v237, v194, 16, v196
	v_wmma_i32_16x16x16_iu4 v[49:56], v[235:236], v[155:156], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[235:236], v[157:158], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[235:236], v[159:160], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[237:238], v[153:154], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[237:238], v[155:156], v[57:64] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v153, v244, v243, 0xc0c0004
	v_perm_b32 v154, v246, v245, 0xc0c0004
	v_perm_b32 v155, v252, v251, 0xc0c0004
	v_perm_b32 v156, v254, v253, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[237:238], v[157:158], v[9:16] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v157, v176, v174, 0xc0c0004
	v_lshl_or_b32 v154, v154, 16, v153
	v_perm_b32 v158, v175, v255, 0xc0c0004
	v_lshl_or_b32 v153, v156, 16, v155
	v_perm_b32 v155, v250, v249, 0xc0c0004
	v_perm_b32 v156, v248, v247, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[25:32], v[237:238], v[159:160], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[97:104], v[153:154], v[145:146], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[153:154], v[147:148], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v156, v156, 16, v155
	v_lshl_or_b32 v155, v158, 16, v157
	.loc	1 1100 32                       ; ragged.py:1100:32
	ds_load_u8 v157, v181 offset:3328
	ds_load_u8 v158, v181 offset:3072
	ds_load_u8 v159, v181 offset:3968
	ds_load_u8 v160, v181 offset:3712
	ds_load_u8 v170, v181 offset:3456
	ds_load_u8 v171, v181 offset:3200
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[65:72], v[153:154], v[149:150], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[153:154], v[151:152], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[155:156], v[145:146], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[155:156], v[147:148], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[155:156], v[149:150], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[155:156], v[151:152], v[89:96] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v181 offset:3840
	ds_load_u8 v172, v181 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v159, 16, v170
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v172, v158, 0xc0c0004
	ds_load_u8 v172, v181 offset:2304
	ds_load_u8 v173, v181 offset:2048
	ds_load_u8 v174, v181 offset:2944
	ds_load_u8 v175, v181 offset:2688
	ds_load_u8 v176, v181 offset:2432
	ds_load_u8 v194, v181 offset:2176
	v_lshl_or_b32 v158, v158, 16, v157
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v181 offset:2816
	ds_load_u8 v195, v181 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v171, v194, v176, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v195, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v157, v173, 16, v172
	v_perm_b32 v172, v175, v174, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[157:158], v[145:146], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v159, v172, 16, v171
	v_wmma_i32_16x16x16_iu4 v[49:56], v[157:158], v[147:148], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[157:158], v[149:150], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[157:158], v[151:152], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[159:160], v[145:146], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[159:160], v[147:148], v[57:64] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v145, v178, v161, 0xc0c0004
	v_perm_b32 v147, v187, v186, 0xc0c0004
	v_perm_b32 v148, v189, v188, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[149:150], v[9:16] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v149, v193, v192, 0xc0c0004
	v_lshl_or_b32 v146, v0, 16, v145
	v_perm_b32 v0, v179, v185, 0xc0c0004
	v_lshl_or_b32 v145, v148, 16, v147
	v_perm_b32 v147, v184, v183, 0xc0c0004
	v_perm_b32 v150, v191, v190, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[25:32], v[159:160], v[151:152], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[97:104], v[145:146], v[137:138], v[97:104] neg_lo:[1,1,0]
	v_lshl_or_b32 v148, v147, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v147, v150, 16, v149
	.loc	1 1100 32                       ; ragged.py:1100:32
	ds_load_u8 v0, v181 offset:5376
	ds_load_u8 v149, v181 offset:5120
	ds_load_u8 v151, v181 offset:6016
	ds_load_u8 v152, v181 offset:5760
	ds_load_u8 v153, v181 offset:5504
	ds_load_u8 v154, v181 offset:5248
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[113:120], v[145:146], v[139:140], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[145:146], v[141:142], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[145:146], v[143:144], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[147:148], v[137:138], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[147:148], v[139:140], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[147:148], v[141:142], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[147:148], v[143:144], v[89:96] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v149, v0, 0xc0c0004
	ds_load_u8 v149, v181 offset:5888
	ds_load_u8 v150, v181 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v181 offset:4352
	ds_load_u8 v155, v181 offset:4096
	ds_load_u8 v156, v181 offset:4992
	ds_load_u8 v157, v181 offset:4736
	ds_load_u8 v158, v181 offset:4480
	ds_load_u8 v159, v181 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v155, v155, v150, 0xc0c0004
	ds_load_u8 v150, v181 offset:4864
	ds_load_u8 v160, v181 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v160, v150, 0xc0c0004
	v_lshl_or_b32 v150, v149, 16, v0
	v_perm_b32 v0, v154, v153, 0xc0c0004
	v_perm_b32 v153, v159, v158, 0xc0c0004
	v_perm_b32 v154, v157, v156, 0xc0c0004
	v_lshl_or_b32 v149, v160, 16, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v152, v151, 16, v0
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v0, v223, v221, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_lshl_or_b32 v151, v154, 16, v153
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[149:150], v[137:138], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[149:150], v[139:140], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[149:150], v[141:142], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[149:150], v[143:144], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[151:152], v[137:138], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[151:152], v[139:140], v[57:64] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v137, v226, v224, 0xc0c0004
	v_perm_b32 v139, v231, v229, 0xc0c0004
	v_perm_b32 v140, v234, v232, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[141:142], v[9:16] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v141, v233, v230, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v0
	v_perm_b32 v0, v225, v222, 0xc0c0004
	v_lshl_or_b32 v137, v140, 16, v139
	v_perm_b32 v139, v220, v219, 0xc0c0004
	v_perm_b32 v142, v228, v227, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[25:32], v[151:152], v[143:144], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[65:72], v[137:138], v[133:134], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v140, v139, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v139, v142, 16, v141
	.loc	1 1100 32                       ; ragged.py:1100:32
	ds_load_u8 v0, v181 offset:7424
	ds_load_u8 v141, v181 offset:7168
	ds_load_u8 v143, v181 offset:8064
	ds_load_u8 v144, v181 offset:7808
	ds_load_u8 v145, v181 offset:7552
	ds_load_u8 v146, v181 offset:7296
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[81:88], v[137:138], v[135:136], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[137:138], v[129:130], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[137:138], v[131:132], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[139:140], v[133:134], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[139:140], v[135:136], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[139:140], v[129:130], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[139:140], v[131:132], v[121:128] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v141, v0, 0xc0c0004
	ds_load_u8 v141, v181 offset:7936
	ds_load_u8 v142, v181 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v181 offset:6400
	ds_load_u8 v147, v181 offset:6144
	ds_load_u8 v148, v181 offset:7040
	ds_load_u8 v149, v181 offset:6784
	ds_load_u8 v150, v181 offset:6528
	ds_load_u8 v151, v181 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v147, v147, v142, 0xc0c0004
	ds_load_u8 v142, v181 offset:6912
	ds_load_u8 v152, v181 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v142, 0xc0c0004
	v_lshl_or_b32 v142, v141, 16, v0
	v_perm_b32 v0, v146, v145, 0xc0c0004
	v_perm_b32 v145, v151, v150, 0xc0c0004
	v_perm_b32 v146, v149, v148, 0xc0c0004
	v_lshl_or_b32 v141, v152, 16, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v144, v143, 16, v0
	v_lshl_or_b32 v143, v146, 16, v145
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[141:142], v[133:134], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[141:142], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[141:142], v[129:130], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[141:142], v[131:132], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[133:134], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[143:144], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[143:144], v[129:130], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[143:144], v[131:132], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v137, v92
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v92, v2
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v2, off, off offset:92
	scratch_load_b32 v169, off, off offset:80
	scratch_load_b32 v170, off, off offset:84
	scratch_load_b32 v171, off, off offset:88
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v165, v65
	v_cvt_f32_i32_e32 v166, v66
	v_cvt_f32_i32_e32 v168, v67
	v_cvt_f32_i32_e32 v167, v68
	v_cvt_f32_i32_e32 v141, v69
	v_cvt_f32_i32_e32 v142, v70
	v_cvt_f32_i32_e32 v143, v71
	v_cvt_f32_i32_e32 v145, v72
	v_cvt_f32_i32_e32 v144, v73
	v_cvt_f32_i32_e32 v138, v74
	v_cvt_f32_i32_e32 v139, v75
	v_cvt_f32_i32_e32 v140, v76
	v_cvt_f32_i32_e32 v129, v77
	v_cvt_f32_i32_e32 v132, v78
	v_cvt_f32_i32_e32 v131, v79
	v_cvt_f32_i32_e32 v130, v80
	v_cvt_f32_i32_e32 v162, v81
	v_cvt_f32_i32_e32 v161, v82
	v_cvt_f32_i32_e32 v164, v83
	v_cvt_f32_i32_e32 v163, v84
	v_cvt_f32_i32_e32 v148, v85
	v_cvt_f32_i32_e32 v147, v86
	v_cvt_f32_i32_e32 v150, v87
	v_cvt_f32_i32_e32 v151, v88
	v_cvt_f32_i32_e32 v146, v89
	v_cvt_f32_i32_e32 v136, v90
	v_cvt_f32_i32_e32 v135, v91
	v_cvt_f32_i32_e32 v82, v93
	v_cvt_f32_i32_e32 v134, v94
	v_cvt_f32_i32_e32 v133, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v158, v97
	v_cvt_f32_i32_e32 v157, v98
	v_cvt_f32_i32_e32 v160, v99
	v_cvt_f32_i32_e32 v159, v100
	v_cvt_f32_i32_e32 v153, v101
	v_cvt_f32_i32_e32 v152, v102
	v_cvt_f32_i32_e32 v154, v103
	v_cvt_f32_i32_e32 v155, v104
	v_cvt_f32_i32_e32 v149, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v105, v107
	v_cvt_f32_i32_e32 v107, v108
	v_cvt_f32_i32_e32 v81, v109
	v_cvt_f32_i32_e32 v101, v110
	v_cvt_f32_i32_e32 v100, v111
	v_cvt_f32_i32_e32 v99, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v156, v115
	v_cvt_f32_i32_e32 v115, v116
	v_cvt_f32_i32_e32 v109, v117
	v_cvt_f32_i32_e32 v110, v118
	v_cvt_f32_i32_e32 v111, v119
	v_cvt_f32_i32_e32 v112, v120
	v_cvt_f32_i32_e32 v108, v121
	v_cvt_f32_i32_e32 v95, v122
	v_cvt_f32_i32_e32 v97, v123
	v_cvt_f32_i32_e32 v98, v124
	v_cvt_f32_i32_e32 v80, v125
	v_cvt_f32_i32_e32 v104, v126
	v_cvt_f32_i32_e32 v103, v127
	v_cvt_f32_i32_e32 v102, v128
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v91, v1
	v_cvt_f32_i32_e32 v94, v3
	v_cvt_f32_i32_e32 v93, v4
	v_cvt_f32_i32_e32 v70, v5
	v_cvt_f32_i32_e32 v71, v6
	v_cvt_f32_i32_e32 v72, v7
	v_cvt_f32_i32_e32 v73, v8
	v_cvt_f32_i32_e32 v74, v9
	v_cvt_f32_i32_e32 v67, v10
	v_cvt_f32_i32_e32 v68, v11
	v_cvt_f32_i32_e32 v69, v12
	v_cvt_f32_i32_e32 v8, v13
	v_cvt_f32_i32_e32 v66, v14
	v_cvt_f32_i32_e32 v65, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v89, v17
	v_cvt_f32_i32_e32 v90, v18
	v_cvt_f32_i32_e32 v87, v19
	v_cvt_f32_i32_e32 v88, v20
	v_cvt_f32_i32_e32 v78, v21
	v_cvt_f32_i32_e32 v77, v22
	v_cvt_f32_i32_e32 v76, v23
	v_cvt_f32_i32_e32 v75, v24
	v_cvt_f32_i32_e32 v79, v25
	v_cvt_f32_i32_e32 v18, v26
	v_cvt_f32_i32_e32 v17, v27
	v_cvt_f32_i32_e32 v15, v28
	v_cvt_f32_i32_e32 v7, v29
	v_cvt_f32_i32_e32 v21, v30
	v_cvt_f32_i32_e32 v20, v31
	v_cvt_f32_i32_e32 v19, v32
	v_cvt_f32_i32_e32 v86, v33
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v83, v35
	v_cvt_f32_i32_e32 v84, v36
	v_cvt_f32_i32_e32 v32, v37
	v_cvt_f32_i32_e32 v31, v38
	v_cvt_f32_i32_e32 v30, v39
	v_cvt_f32_i32_e32 v29, v40
	v_cvt_f32_i32_e32 v28, v41
	v_cvt_f32_i32_e32 v14, v42
	v_cvt_f32_i32_e32 v13, v43
	v_cvt_f32_i32_e32 v12, v44
	v_cvt_f32_i32_e32 v6, v45
	v_cvt_f32_i32_e32 v24, v46
	v_cvt_f32_i32_e32 v23, v47
	v_cvt_f32_i32_e32 v22, v48
	v_cvt_f32_i32_e32 v37, v49
	v_cvt_f32_i32_e32 v36, v50
	v_cvt_f32_i32_e32 v33, v51
	v_cvt_f32_i32_e32 v34, v52
	v_cvt_f32_i32_e32 v41, v53
	v_cvt_f32_i32_e32 v40, v54
	v_cvt_f32_i32_e32 v39, v55
	v_cvt_f32_i32_e32 v38, v56
	v_cvt_f32_i32_e32 v35, v57
	v_cvt_f32_i32_e32 v11, v58
	v_cvt_f32_i32_e32 v10, v59
	v_cvt_f32_i32_e32 v9, v60
	v_cvt_f32_i32_e32 v5, v61
	v_cvt_f32_i32_e32 v27, v62
	v_cvt_f32_i32_e32 v26, v63
	v_cvt_f32_i32_e32 v25, v64
	v_mov_b32_e32 v1, s46
	v_mov_b32_e32 v3, s44
.LBB0_7:                                ; %._crit_edge
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v0, 28, v2
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 5, v169
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v4, 0xf0, v169
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v2, 32, v2
	v_lshl_add_u32 v42, v4, 2, 0
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_mov_b32 s8, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v45, v42, v2, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt vmcnt(1)
	v_add_co_u32 v42, s0, s44, v170
	v_add_co_ci_u32_e64 v43, null, s45, 0, s0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v2, 16, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v0, 1, v42
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[42:43], v[42:43]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v42, s1, s44, v2
	v_add_co_ci_u32_e64 v43, null, s45, 0, s1
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v2, 32, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v44, 1, v42
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[40:41], v[42:43]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[42:43], v[42:43]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v42, s3, s44, v2
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_or_b32_e32 v2, s47, v169
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v43, null, s45, 0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v46, 1, v42
	s_mov_b32 s0, 0x76543210
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_mad_u64_u32 v[1:2], null, s48, v1, v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 48, v170
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[40:41], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[42:43], v[42:43]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s1, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v42, s5, s44, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v43, null, s45, 0, s5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s1, s34, 31
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v2, 1, v42
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s1, s34, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[40:41], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[42:43], v[42:43]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_cndmask_b32_e32 v42, 0x80000000, v44, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v43, 0x80000000, v46, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s5, s1, 1
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x3
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	buffer_load_u16 v42, v42, s[8:11], 0 offen
	buffer_load_u16 v46, v43, s[8:11], 0 offen
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_lshlrev_b32_e32 v43, 1, v1
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	buffer_load_u16 v43, v43, s[8:11], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v45, v43
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v43, 16, v42
	v_lshlrev_b32_e32 v42, 16, v46
	v_lshlrev_b32_e32 v44, 16, v0
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v55, v160, v42
	v_mul_f32_e32 v46, v168, v44
	v_mul_f32_e32 v53, v164, v43
	v_mul_f32_e32 v0, v156, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v156, v4, 1, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v48, v166, v44 :: v_dual_mul_f32 v63, v115, v2
	v_dual_mul_f32 v50, v162, v43 :: v_dual_mul_f32 v117, v113, v2
	v_mul_f32_e32 v64, v114, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[113:116], v156
	ds_load_b128 v[123:126], v156 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v49, v165, v44
	v_dual_mul_f32 v47, v167, v44 :: v_dual_mul_f32 v62, v157, v42
	v_mul_f32_e32 v51, v161, v43
	v_mul_f32_e32 v133, v133, v43
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v90, v90, v43 :: v_dual_mul_f32 v71, v71, v44
	v_mul_f32_e32 v15, v15, v43
	v_dual_mul_f32 v67, v67, v44 :: v_dual_mul_f32 v18, v18, v43
	v_mul_f32_e32 v91, v91, v44
	v_mul_f32_e32 v89, v89, v43
	v_mul_f32_e32 v17, v17, v43
	v_mul_f32_e32 v7, v7, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v57, v49, v113
	v_mul_f32_e32 v49, v55, v115
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v55, v143, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v59, v47, v116 :: v_dual_mul_f32 v54, v53, v115
	v_dual_mul_f32 v47, v62, v114 :: v_dual_mul_f32 v62, v63, v116
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v121, v55, v125
	v_dual_mul_f32 v63, v0, v115 :: v_dual_mul_f32 v56, v159, v42
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v52, v163, v43 :: v_dual_mul_f32 v61, v158, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v58, v48, v114
	v_dual_mul_f32 v60, v46, v115 :: v_dual_mul_f32 v51, v51, v114
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v115, v148, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v48, v56, v116
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v56, v142, v44 :: v_dual_mul_f32 v109, v109, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v52, v52, v116 :: v_dual_mul_f32 v127, v155, v42
	v_dual_mul_f32 v46, v61, v113 :: v_dual_mul_f32 v143, v112, v2
	v_mul_f32_e32 v53, v117, v113
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v0, v145, v44 :: v_dual_mul_f32 v145, v111, v2
	v_dual_mul_f32 v142, v152, v42 :: v_dual_mul_f32 v109, v109, v123
	v_dual_mul_f32 v116, v147, v43 :: v_dual_mul_f32 v147, v110, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v55, v115, v123 :: v_dual_mul_f32 v50, v50, v113
	v_dual_mul_f32 v61, v64, v114 :: v_dual_mul_f32 v64, v141, v44
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v113, v151, v43
	v_mul_f32_e32 v114, v150, v43
	v_mul_f32_e32 v128, v154, v42
	v_mul_f32_e32 v141, v153, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v119, v64, v123
	v_dual_mul_f32 v120, v56, v124 :: v_dual_mul_f32 v115, v145, v125
	v_mul_f32_e32 v122, v0, v126
	v_mul_f32_e32 v118, v113, v126
	v_dual_mul_f32 v110, v141, v123 :: v_dual_mul_f32 v95, v95, v2
	v_mul_f32_e32 v111, v142, v124
	v_dual_mul_f32 v56, v116, v124 :: v_dual_mul_f32 v145, v137, v43
	v_dual_mul_f32 v112, v128, v125 :: v_dual_mul_f32 v113, v147, v124
	v_dual_mul_f32 v117, v114, v125 :: v_dual_mul_f32 v0, v144, v44
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v97, v97, v2
	v_mul_f32_e32 v125, v139, v44
	v_dual_mul_f32 v123, v146, v43 :: v_dual_mul_f32 v124, v140, v44
	v_mul_f32_e32 v128, v149, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v114, v127, v126
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v147, v135, v43
	v_mul_f32_e32 v148, v107, v42
	v_mul_f32_e32 v107, v105, v42
	v_mul_f32_e32 v108, v108, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v116, v143, v126
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v126, v138, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[137:140], v156 offset:512
	ds_load_b128 v[141:144], v156 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v146, v136, v43
	v_dual_mul_f32 v96, v96, v43 :: v_dual_mul_f32 v103, v103, v2
	v_mul_f32_e32 v106, v106, v42
	v_mul_f32_e32 v101, v101, v42
	v_mul_f32_e32 v99, v99, v42
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v85, v85, v42
	v_mul_f32_e32 v37, v37, v2
	v_mul_f32_e32 v149, v33, v2
	v_mul_f32_e32 v84, v84, v42
	v_mul_f32_e32 v31, v31, v42
	v_mul_f32_e32 v30, v30, v42
	v_mul_f32_e32 v29, v29, v42
	v_mul_f32_e32 v38, v38, v2
	v_mul_f32_e32 v35, v35, v2
	v_mul_f32_e32 v14, v14, v42
	v_dual_mul_f32 v68, v68, v44 :: v_dual_mul_f32 v13, v13, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v64, v0, v137 :: v_dual_mul_f32 v95, v95, v138
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v0, v132, v44 :: v_dual_mul_f32 v127, v123, v137
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v123, v128, v137 :: v_dual_mul_f32 v136, v125, v139
	v_mul_f32_e32 v125, v147, v139
	v_mul_f32_e32 v135, v126, v138
	v_mul_f32_e32 v107, v107, v139
	v_mul_f32_e32 v105, v108, v137
	v_dual_mul_f32 v137, v124, v140 :: v_dual_mul_f32 v124, v146, v138
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v132, v130, v44 :: v_dual_mul_f32 v147, v80, v2
	v_mul_f32_e32 v146, v81, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v130, v0, v142
	.loc	1 1124 41                       ; ragged.py:1124:41
	v_add_lshl_u32 v0, v1, s34, 1
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v126, v145, v140
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v128, v131, v44 :: v_dual_mul_f32 v145, v82, v43
	v_mul_f32_e32 v98, v98, v2
	.loc	1 1124 41                       ; ragged.py:1124:41
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v106, v106, v138 :: v_dual_mul_f32 v81, v103, v143
	v_dual_mul_f32 v97, v97, v139 :: v_dual_mul_f32 v108, v148, v140
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v138, v129, v44 :: v_dual_mul_f32 v129, v134, v43
	v_dual_mul_f32 v134, v100, v42 :: v_dual_mul_f32 v103, v145, v141
	v_mul_f32_e32 v139, v104, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v131, v128, v143 :: v_dual_mul_f32 v98, v98, v140
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v140, v102, v2 :: v_dual_mul_f32 v1, v93, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v132, v132, v144
	v_mul_f32_e32 v104, v129, v142
	v_mul_f32_e32 v128, v133, v143
	v_mul_f32_e32 v102, v99, v144
	v_mul_f32_e32 v80, v139, v142
	v_mul_f32_e32 v82, v140, v144
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v148, v36, v2
	v_mul_f32_e32 v28, v28, v42
	v_mul_f32_e32 v6, v6, v42
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s8, s20
	.loc	1 1124 41                       ; ragged.py:1124:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_store_b32 v45, v0
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v94, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v100, v101, v142 :: v_dual_mul_f32 v101, v134, v143
	v_mul_f32_e32 v133, v138, v141
	v_dual_mul_f32 v129, v96, v144 :: v_dual_mul_f32 v96, v147, v141
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v45, v92, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v99, v146, v141
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[138:141], v156
	ds_load_b128 v[142:145], v156 offset:16
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v147, v83, v42
	v_mul_f32_e32 v146, v86, v42
	v_mul_f32_e32 v70, v70, v44
	v_mul_f32_e32 v32, v32, v42
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v134, v91, v138 :: v_dual_mul_f32 v83, v85, v139
	v_mul_f32_e32 v91, v0, v140
	v_dual_mul_f32 v85, v147, v140 :: v_dual_mul_f32 v88, v88, v43
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v73, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v36, v37, v138
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v73, v77, v43 :: v_dual_mul_f32 v34, v34, v2
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v37, v148, v139
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v92, v87, v43
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v94, v45, v139
	v_mul_f32_e32 v93, v1, v141
	v_mul_f32_e32 v86, v89, v138
	v_dual_mul_f32 v45, v146, v138 :: v_dual_mul_f32 v88, v88, v141
	v_mul_f32_e32 v33, v34, v141
	v_mul_f32_e32 v89, v92, v140
	v_dual_mul_f32 v87, v90, v139 :: v_dual_mul_f32 v34, v149, v140
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v139, v40, v2
	v_dual_mul_f32 v1, v72, v44 :: v_dual_mul_f32 v72, v78, v43
	v_mul_f32_e32 v138, v41, v2
	v_mul_f32_e32 v90, v76, v43
	v_mul_f32_e32 v140, v39, v2
	v_mul_f32_e32 v92, v75, v43
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v84, v84, v141 :: v_dual_mul_f32 v75, v71, v143
	v_mul_f32_e32 v76, v1, v144
	v_mul_f32_e32 v71, v73, v143
	v_dual_mul_f32 v39, v31, v143 :: v_dual_mul_f32 v40, v30, v144
	v_dual_mul_f32 v41, v29, v145 :: v_dual_mul_f32 v30, v139, v143
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v143, v10, v2
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v31, v140, v144
	v_mul_f32_e32 v73, v92, v145
	v_mul_f32_e32 v77, v0, v145
	v_dual_mul_f32 v1, v38, v145 :: v_dual_mul_f32 v32, v32, v142
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v74, v44
	v_dual_mul_f32 v38, v69, v44 :: v_dual_mul_f32 v69, v79, v43
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v78, v70, v142
	v_mul_f32_e32 v70, v72, v142
	v_mul_f32_e32 v29, v138, v142
	v_mul_f32_e32 v72, v90, v144
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v74, v12, v42
	v_mul_f32_e32 v142, v11, v2
	v_mul_f32_e32 v144, v9, v2
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_load_b128 v[9:12], v156 offset:512
	ds_load_b128 v[138:141], v156 offset:528
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v145, v69, v9
	v_mul_f32_e32 v147, v35, v9
	v_mul_f32_e32 v92, v67, v10
	v_mul_f32_e32 v69, v18, v10
	v_mul_f32_e32 v67, v17, v11
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v17, v19, v43
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v35, v14, v10
	v_dual_mul_f32 v79, v68, v11 :: v_dual_mul_f32 v68, v15, v12
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v14, v16, v44
	v_mul_f32_e32 v16, v20, v43
	v_mul_f32_e32 v20, v23, v42
	v_dual_mul_f32 v23, v26, v2 :: v_dual_mul_f32 v18, v13, v11
	v_mul_f32_e32 v13, v65, v44
	v_dual_mul_f32 v15, v21, v43 :: v_dual_mul_f32 v146, v28, v9
	v_mul_f32_e32 v21, v22, v42
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v90, v38, v12 :: v_dual_mul_f32 v19, v24, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v13, v13, v140 :: v_dual_mul_f32 v0, v0, v9
	v_mul_f32_e32 v9, v142, v10
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v22, v27, v2
	v_mul_f32_e32 v24, v25, v2
	v_dual_mul_f32 v2, v5, v2 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v0
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v26, v21, v141 :: v_dual_mul_f32 v21, v6, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v10, v143, v11 :: v_dual_mul_f32 v27, v24, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v24, v7, v138
	v_dual_mul_f32 v28, v74, v12 :: v_dual_mul_f32 v19, v19, v139
	v_mul_f32_e32 v15, v15, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v11, v144, v12
	v_mul_f32_e32 v17, v17, v141
	v_mul_f32_e32 v23, v23, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v8, v8, v44 :: v_dual_add_f32 v5, 1.0, v5
	v_dual_mul_f32 v12, v66, v44 :: v_dual_mul_f32 v25, v8, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v5, v5, v0
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v12, v12, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v7, v6
	v_fma_f32 v8, -v6, v7, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, v8, v7
	v_div_scale_f32 v8, vcc_lo, v0, v5, v0
	v_mul_f32_e32 v38, v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v6, v38, v8
	v_fmac_f32_e32 v38, v42, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v6, v38, v8
	v_div_fmas_f32 v6, v6, v7, v38
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_dual_mul_f32 v7, 0xbfb8aa3b, v12 :: v_dual_mul_f32 v22, v22, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v6, v5, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v64, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v7, v7
	v_ldexp_f32 v7, v7, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v8, null, v7, v7, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v8
	v_fma_f32 v42, -v8, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, vcc_lo, v12, v7, v12
	v_mul_f32_e32 v43, v42, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v8, v43, v42
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_dual_mul_f32 v14, v14, v141 :: v_dual_fmac_f32 v43, v44, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v14
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fma_f32 v8, -v8, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v8, v8, v38, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v38, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v13
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v38, v38, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v38, v38, v13
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v13, v38, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v44, v43
	v_fma_f32 v66, -v42, v65, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_dual_mul_f32 v16, v16, v140 :: v_dual_fmac_f32 v65, v66, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v42, v65, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v43, v65
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v0, v0, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v6
	v_fma_f32 v44, -v6, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_dual_mul_f32 v2, v2, v138 :: v_dual_fmac_f32 v43, v44, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, vcc_lo, v14, v0, v14
	v_mul_f32_e32 v65, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v6, v65, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v20, v20, v140 :: v_dual_fmac_f32 v65, v66, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v6, v65, v44
	v_div_fmas_f32 v43, v6, v43, v65
	v_div_fixup_f32 v6, v8, v7, v12
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v7, v7
	v_ldexp_f32 v7, v7, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v8, null, v7, v7, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v12, v8
	v_fma_f32 v44, -v8, v12, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, v44, v12
	v_div_scale_f32 v44, vcc_lo, v145, v7, v145
	v_mul_f32_e32 v65, v44, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v8, v65, v44
	v_fmac_f32_e32 v65, v66, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v8, v65, v44
	v_div_fmas_f32 v12, v8, v12, v65
	v_div_fixup_f32 v8, v42, v38, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v13, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v7, v12, v7, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v12, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v15
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v13, v13, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, null, v38, v38, v15
	v_rcp_f32_e32 v42, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v13, v42, 1.0
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, vcc_lo, v15, v38, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v44, v42
	v_fma_f32 v66, -v13, v65, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v42
	v_fma_f32 v13, -v13, v65, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v13, v42, v65
	v_div_fixup_f32 v13, v43, v0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v16
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v14
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v14, null, v0, v0, v16
	v_rcp_f32_e32 v43, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v14, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v16, v0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v44, v43
	v_fma_f32 v66, -v14, v65, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v43
	v_fma_f32 v14, -v14, v65, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v14, v14, v43, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v12, null, v43, v43, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v12
	v_fma_f32 v65, -v12, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v65, v44
	v_div_scale_f32 v65, vcc_lo, v17, v43, v17
	v_mul_f32_e32 v66, v65, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v12, v66, v65
	v_fmac_f32_e32 v66, v74, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v66, v65
	v_div_fmas_f32 v44, v12, v44, v66
	v_div_fixup_f32 v12, v42, v38, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v15, 0xbfb8aa3b, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v14, v14, v0, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v15, v15, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v65, -v38, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v65, v42
	v_div_scale_f32 v65, vcc_lo, v146, v15, v146
	v_mul_f32_e32 v66, v65, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v38, v66, v65
	v_fmac_f32_e32 v66, v74, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v66, v65
	v_div_fmas_f32 v38, v38, v42, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v15, v38, v15, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v16
	v_fma_f32 v65, -v16, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v65, v42
	v_div_scale_f32 v65, vcc_lo, v19, v0, v19
	v_mul_f32_e32 v66, v65, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v16, v66, v65
	v_fmac_f32_e32 v66, v74, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v66, v65
	v_div_fmas_f32 v42, v16, v42, v66
	v_div_fixup_f32 v16, v44, v43, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v17, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v43, v43, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v17
	v_fma_f32 v65, -v17, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v65, v44
	v_div_scale_f32 v65, vcc_lo, v20, v43, v20
	v_mul_f32_e32 v66, v65, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v17, v66, v65
	v_fmac_f32_e32 v66, v74, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v66, v65
	v_div_fmas_f32 v44, v17, v44, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v17, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v38, v38, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v17
	v_fma_f32 v66, -v17, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v26, v38, v26
	v_mul_f32_e32 v74, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v17, v74, v66
	v_fmac_f32_e32 v74, v138, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v74, v66
	v_div_fmas_f32 v65, v17, v65, v74
	v_div_fixup_f32 v17, v42, v0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v19, null, v0, v0, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v19
	v_fma_f32 v66, -v19, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v66, v42
	v_div_scale_f32 v66, vcc_lo, v147, v0, v147
	v_mul_f32_e32 v74, v66, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v19, v74, v66
	v_fmac_f32_e32 v74, v138, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v74, v66
	v_div_fmas_f32 v42, v19, v42, v74
	v_div_fixup_f32 v19, v44, v43, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v20, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v43, v43, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v20
	v_fma_f32 v66, -v20, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v66, v44
	v_div_scale_f32 v66, vcc_lo, v22, v43, v22
	v_mul_f32_e32 v74, v66, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v20, v74, v66
	v_fmac_f32_e32 v74, v138, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v74, v66
	v_div_fmas_f32 v44, v20, v44, v74
	v_div_fixup_f32 v20, v65, v38, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v26, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v38
	v_fma_f32 v66, -v38, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v23, v26, v23
	v_mul_f32_e32 v74, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v38, v74, v66
	v_fmac_f32_e32 v74, v138, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v74, v66
	v_div_fmas_f32 v65, v38, v65, v74
	v_div_fixup_f32 v38, v42, v0, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v105, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v27
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v0, v0, v27
	v_rcp_f32_e32 v66, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v42, v66, 1.0
	v_fmac_f32_e32 v66, v74, v66
	v_div_scale_f32 v74, vcc_lo, v27, v0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v74, v66
	v_fma_f32 v139, -v42, v138, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v66
	v_fma_f32 v42, -v42, v138, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v66, v42, v66, v138
	v_div_fixup_f32 v42, v44, v43, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v134
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v134
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v22, v22, v134
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v74, v44
	v_div_scale_f32 v74, vcc_lo, v134, v22, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v74, v44
	v_fma_f32 v139, -v43, v138, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v44
	v_fma_f32 v43, -v43, v138, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v74, v43, v44, v138
	v_div_fixup_f32 v43, v65, v26, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v74, v22, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v23, v23, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v26
	v_fma_f32 v65, -v26, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v65, v44
	v_div_scale_f32 v65, vcc_lo, v94, v23, v94
	v_mul_f32_e32 v138, v65, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v26, v138, v65
	v_fmac_f32_e32 v138, v139, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v138, v65
	v_div_fmas_f32 v26, v26, v44, v138
	v_div_fixup_f32 v44, v66, v0, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v26, v23, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v78
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v93
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v0, v0, v93
	v_rcp_f32_e32 v65, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v27, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v93, v0, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v66, v65
	v_fma_f32 v139, -v27, v138, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v65
	v_fma_f32 v27, -v27, v138, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v27, v27, v65, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v65, 0xbfb8aa3b, v91
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v91
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v66, v66, v91
	v_rcp_f32_e32 v74, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v65, v74, 1.0
	v_fmac_f32_e32 v74, v134, v74
	v_div_scale_f32 v134, vcc_lo, v91, v66, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v134, v74
	v_fma_f32 v139, -v65, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v74
	v_fma_f32 v65, -v65, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v74, v65, v74, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v66, v74, v66, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v74, 0xbfb8aa3b, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v78
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v26, v26, v78
	v_rcp_f32_e32 v94, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v65, v94, 1.0
	v_fmac_f32_e32 v94, v134, v94
	v_div_scale_f32 v134, vcc_lo, v78, v26, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v134, v94
	v_fma_f32 v139, -v65, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v94
	v_fma_f32 v65, -v65, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v94, v65, v94, v138
	v_div_fixup_f32 v65, v27, v0, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v75
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v75
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v0, v0, v75
	v_rcp_f32_e32 v93, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v27, v93, 1.0
	v_fmac_f32_e32 v93, v134, v93
	v_div_scale_f32 v134, vcc_lo, v75, v0, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v134, v93
	v_fma_f32 v139, -v27, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v93
	v_fma_f32 v27, -v27, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v93, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v75, v27, v0, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v0, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v76
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v74, v74, v91
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v91, 1.0, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v91, v91, v76
	v_rcp_f32_e32 v93, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v74, v93, 1.0
	v_fmac_f32_e32 v93, v134, v93
	v_div_scale_f32 v134, vcc_lo, v76, v91, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v134, v93
	v_fma_f32 v139, -v74, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v93
	v_fma_f32 v74, -v74, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v93, v74, v93, v138
	v_div_fixup_f32 v74, v94, v26, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v76, v93, v91, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v26, v26, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v94, v78
	v_fma_f32 v134, -v78, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v134, v94
	v_div_scale_f32 v134, vcc_lo, v77, v26, v77
	v_mul_f32_e32 v138, v134, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v78, v138, v134
	v_fmac_f32_e32 v138, v139, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v78, v138, v134
	v_div_fmas_f32 v78, v78, v94, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v77, v78, v26, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v26, 0xbfb8aa3b, v79
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v0, v0, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v94, v27
	v_fma_f32 v134, -v27, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v134, v94
	v_div_scale_f32 v134, vcc_lo, v92, v0, v92
	v_mul_f32_e32 v138, v134, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v27, v138, v134
	v_fmac_f32_e32 v138, v139, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v138, v134
	v_div_fmas_f32 v27, v27, v94, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v79
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v26, v26, v79
	v_rcp_f32_e32 v91, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v78, v91, 1.0
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, vcc_lo, v79, v26, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v93, v91
	v_fma_f32 v134, -v78, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v134, v91
	v_fma_f32 v78, -v78, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v91, v78, v91, v94
	v_div_fixup_f32 v78, v27, v0, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v79, v91, v26, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v0, v0, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v27
	v_fma_f32 v93, -v27, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v90, v0, v90
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v27, v94, v93
	v_fmac_f32_e32 v94, v134, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v94, v93
	v_div_fmas_f32 v27, v27, v92, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v92, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v90, v27, v0, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_mul_f32_e32 v0, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v25
	v_exp_f32_e32 v92, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v92, v92, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v93, null, v92, v92, v25
	v_rcp_f32_e32 v94, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v93, v94, 1.0
	v_fmac_f32_e32 v94, v134, v94
	v_div_scale_f32 v134, vcc_lo, v25, v92, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v134, v94
	v_fma_f32 v139, -v93, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v94
	v_fma_f32 v93, -v93, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v93, v93, v94, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v0, v0, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v91, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v91, v27
	v_div_scale_f32 v91, vcc_lo, v86, v0, v86
	v_mul_f32_e32 v94, v91, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v26, v94, v91
	v_fmac_f32_e32 v94, v134, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v94, v91
	v_div_fmas_f32 v26, v26, v27, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v86, v26, v0, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_mul_f32_e32 v0, 0xbfb8aa3b, v70
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v87
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v91
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v91, null, v27, v27, v87
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v91, v94, 1.0
	v_fmac_f32_e32 v94, v134, v94
	v_div_scale_f32 v134, vcc_lo, v87, v27, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v134, v94
	v_fma_f32 v139, -v91, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v94
	v_fma_f32 v91, -v91, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v94, v91, v94, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v91, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v87, v94, v27, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v91
	v_cndmask_b32_e64 v91, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v91, v91
	v_ldexp_f32 v91, v91, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v134, 1.0, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v91, null, v134, v134, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v138, v91
	v_fma_f32 v139, -v91, v138, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v138
	v_div_scale_f32 v139, vcc_lo, v88, v134, v88
	v_mul_f32_e32 v140, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v91, v140, v139
	v_fmac_f32_e32 v140, v141, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v140, v139
	v_div_fmas_f32 v138, v91, v138, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v91, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v88, v138, v134, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v91
	v_cndmask_b32_e64 v91, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v89
	v_exp_f32_e32 v91, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v91, v91, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v139, 1.0, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v91, null, v139, v139, v89
	v_rcp_f32_e32 v140, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v91, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v89, v139, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v91, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v91, -v91, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v140, v91, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v91, v93, v92, v25
	v_div_fixup_f32 v89, v140, v139, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v70
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v0, v0, v70
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v70, v0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v27, v26
	v_fma_f32 v93, -v25, v92, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v26
	v_fma_f32 v25, -v25, v92, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v25, v25, v26, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v71
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v26, v26, v71
	v_rcp_f32_e32 v92, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v27, v92, 1.0
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v71, v26, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v93, v92
	v_fma_f32 v134, -v27, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v134, v92
	v_fma_f32 v27, -v27, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v27, v27, v92, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v92, 0xbfb8aa3b, v72
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v72
	v_exp_f32_e32 v92, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v92, v92, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v92, null, v94, v94, v72
	v_rcp_f32_e32 v93, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v92, v93, 1.0
	v_fmac_f32_e32 v93, v134, v93
	v_div_scale_f32 v134, vcc_lo, v72, v94, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v134, v93
	v_fma_f32 v139, -v92, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v93
	v_fma_f32 v92, -v92, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v134, v92, v93, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v92, 0xbfb8aa3b, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v94, v134, v94, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v92, v92
	v_ldexp_f32 v92, v92, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v138, 1.0, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v92, null, v138, v138, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v93, v92
	v_fma_f32 v139, -v92, v93, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v139, v93
	v_div_scale_f32 v139, vcc_lo, v73, v138, v73
	v_mul_f32_e32 v140, v139, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v92, v140, v139
	v_fmac_f32_e32 v140, v141, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v92, v140, v139
	v_div_fmas_f32 v139, v92, v93, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v92, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v73, v139, v138, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v69
	v_exp_f32_e32 v92, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v92, v92, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v140, 1.0, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v92, null, v140, v140, v69
	v_rcp_f32_e32 v93, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v92, v93, 1.0
	v_fmac_f32_e32 v93, v141, v93
	v_div_scale_f32 v141, vcc_lo, v69, v140, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v93
	v_fma_f32 v143, -v92, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v93
	v_fma_f32 v92, -v92, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v141, v92, v93, v142
	v_div_fixup_f32 v92, v25, v0, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v93, v27, v26, v71
	v_div_fixup_f32 v72, v141, v140, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v0, v0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v67, v0, v67
	v_mul_f32_e32 v69, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v25, v69, v27
	v_fmac_f32_e32 v69, v70, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v69, v27
	v_div_fmas_f32 v25, v25, v26, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v26, v26, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v27
	v_fma_f32 v70, -v27, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v68, v26, v68
	v_mul_f32_e32 v71, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v27, v71, v70
	v_fmac_f32_e32 v71, v134, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v71, v70
	v_div_fmas_f32 v27, v27, v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v69, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v69, v69
	v_ldexp_f32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v69, v69, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v134, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v134, v71
	v_div_scale_f32 v134, vcc_lo, v24, v69, v24
	v_mul_f32_e32 v138, v134, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v70, v138, v134
	v_fmac_f32_e32 v138, v139, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v70, v138, v134
	v_div_fixup_f32 v134, v25, v0, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v70, v70, v71, v138
	v_div_fixup_f32 v138, v27, v26, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v70, v69, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v24, v103, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v0, v0, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v45, v0, v45
	v_mul_f32_e32 v67, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v25, v67, v27
	v_fmac_f32_e32 v67, v68, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v67, v27
	v_div_fmas_f32 v25, v25, v26, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v25, v0, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_mul_f32_e32 v25, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v83
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v26, v26, v83
	v_rcp_f32_e32 v67, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v27, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v83, v26, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v68, v67
	v_fma_f32 v139, -v27, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v139, v67
	v_fma_f32 v27, -v27, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v67, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v27, v26, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v68
	v_fma_f32 v139, -v68, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v139, v71
	v_div_scale_f32 v139, vcc_lo, v84, v67, v84
	v_mul_f32_e32 v140, v139, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v68, v140, v139
	v_fmac_f32_e32 v140, v141, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v140, v139
	v_div_fmas_f32 v68, v68, v71, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v71, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v83, v68, v67, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v85
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v139, null, v71, v71, v85
	v_rcp_f32_e32 v140, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v139, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v85, v71, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v139, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v139, v139, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v84, v139, v71, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v49, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v67, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v67, v27
	v_div_scale_f32 v67, vcc_lo, v32, v25, v32
	v_mul_f32_e32 v68, v67, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v26, v68, v67
	v_fmac_f32_e32 v68, v69, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v68, v67
	v_div_fmas_f32 v26, v26, v27, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v27, v27, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v39, v27, v39
	v_mul_f32_e32 v70, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v67, v70, v69
	v_fmac_f32_e32 v70, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v70, v69
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v67, v27, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v40
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v68, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v40
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v69, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v40, v68, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v71, v70
	v_fma_f32 v139, -v69, v85, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v139, v70
	v_fma_f32 v69, -v69, v85, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v69, v70, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v70, 0xbfb8aa3b, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v40, v69, v68, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v70, v70, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v85, v71
	v_fma_f32 v139, -v71, v85, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v139, v85
	v_div_scale_f32 v139, vcc_lo, v41, v70, v41
	v_mul_f32_e32 v140, v139, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v71, v140, v139
	v_fmac_f32_e32 v140, v141, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v140, v139
	v_div_fmas_f32 v71, v71, v85, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v85, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v71, v70, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v85
	v_cndmask_b32_e64 v85, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, 0xbfb8aa3b, v35
	v_exp_f32_e32 v85, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v85, v85, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v85, 1.0, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v139, null, v85, v85, v35
	v_rcp_f32_e32 v140, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v139, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v35, v85, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v139, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v139, v139, v140, v142
	v_div_fixup_f32 v140, v26, v25, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v85, v139, v85, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v32, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v32, v27
	v_div_scale_f32 v32, vcc_lo, v18, v25, v18
	v_mul_f32_e32 v35, v32, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v26, v35, v32
	v_fmac_f32_e32 v35, v67, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v35, v32
	v_div_fmas_f32 v26, v26, v27, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v27, v27, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v35, v32
	v_fma_f32 v67, -v32, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v67, v35
	v_div_scale_f32 v67, vcc_lo, v28, v27, v28
	v_mul_f32_e32 v68, v67, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v32, v68, v67
	v_fmac_f32_e32 v68, v69, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v68, v67
	v_div_fmas_f32 v32, v32, v35, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v35, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v32, v27, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v21
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v35, v35, v21
	v_rcp_f32_e32 v68, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v67, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v21, v35, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v68
	v_fma_f32 v71, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v68
	v_fma_f32 v67, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v36
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v68, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v36
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v69, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v36, v68, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v71, v70
	v_fma_f32 v141, -v69, v139, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v141, v70
	v_fma_f32 v69, -v69, v139, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v69, v69, v70, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v70, 0xbfb8aa3b, v37
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v37
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v70, v70, v37
	v_rcp_f32_e32 v139, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v71, v139, 1.0
	v_fmac_f32_e32 v139, v141, v139
	v_div_scale_f32 v141, vcc_lo, v37, v70, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v139
	v_fma_f32 v143, -v71, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v139
	v_fma_f32 v71, -v71, v142, v141
	v_div_fixup_f32 v141, v67, v35, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v71, v71, v139, v142
	v_div_fixup_f32 v139, v26, v25, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v18, 0xbfb8aa3b, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v142, v69, v68, v36
	v_div_fixup_f32 v143, v71, v70, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v18, v18, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v21
	v_fma_f32 v26, -v21, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v33, v18, v33
	v_mul_f32_e32 v27, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v21, v27, v26
	v_fmac_f32_e32 v27, v32, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v21, v27, v26
	v_div_fmas_f32 v21, v21, v25, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v145, v21, v18, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_mul_f32_e32 v18, 0xbfb8aa3b, v1
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v34
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v25, v25, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v34
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v32, v27
	v_div_scale_f32 v32, vcc_lo, v34, v25, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v32, v27
	v_fma_f32 v36, -v26, v35, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v27
	v_fma_f32 v26, -v26, v35, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v26, v27, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v144, v26, v25, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v27, v27, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v35, v32
	v_fma_f32 v36, -v32, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, vcc_lo, v29, v27, v29
	v_mul_f32_e32 v37, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v32, v37, v36
	v_fmac_f32_e32 v37, v67, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v37, v36
	v_div_fmas_f32 v32, v32, v35, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v35, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v146, v32, v27, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v30
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v35, v35, v30
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v36, v37, 1.0
	v_fmac_f32_e32 v37, v67, v37
	v_div_scale_f32 v67, vcc_lo, v30, v35, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v37
	v_fma_f32 v69, -v36, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v37
	v_fma_f32 v36, -v36, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v37, 0xbfb8aa3b, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v147, v36, v35, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v37, v37, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v31, v37, v31
	v_mul_f32_e32 v70, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v67, v70, v69
	v_dual_fmac_f32 v70, v71, v68 :: v_dual_mul_f32 v71, v60, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v136, v79
	v_mul_f32_e32 v60, v50, v86
	v_mul_f32_e32 v50, v48, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v67, v70, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v69, v58, v23 :: v_dual_mul_f32 v58, v52, v88
	v_mul_f32_e32 v23, v129, v16
	v_mul_f32_e32 v52, v46, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v57, v22
	v_dual_mul_f32 v68, v59, v65 :: v_dual_mul_f32 v65, v137, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v148, v67, v37, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v135, v78
	v_dual_mul_f32 v59, v51, v87 :: v_dual_mul_f32 v22, v128, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v54, v89
	v_mul_f32_e32 v54, v126, v138
	v_dual_mul_f32 v14, v101, v19 :: v_dual_mul_f32 v51, v47, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v111, v39
	v_mul_f32_e32 v16, v99, v141
	v_dual_mul_f32 v46, v108, v28 :: v_dual_mul_f32 v47, v107, v139
	v_mul_f32_e32 v48, v106, v85
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v52|, |v51|
.Ltmp6:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v45, v53, v142 :: v_dual_and_b32 v78, 0x60, v169
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_ldexp_f32 v18, v18, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v18, v18, v1
	v_rcp_f32_e32 v25, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v21, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v1, v18, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v25
	v_fma_f32 v29, -v21, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v29, v25
	v_fma_f32 v21, -v21, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v25, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v149, v21, v18, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v1, |v70|, |v69|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v104, v12
	v_mul_f32_e32 v18, v112, v40
	v_mul_f32_e32 v12, v109, v146
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v9
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v25, v25, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v9
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v29, v27
	v_div_scale_f32 v29, vcc_lo, v9, v25, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v30, v29, v27
	v_fma_f32 v31, -v26, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v27
	v_fma_f32 v26, -v26, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v26, v27, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v150, v26, v25, v9
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v25, v130, v6 :: v_dual_mul_f32 v26, v131, v8
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, |v24|, |v21|, |v22|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v116, v149
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v115, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v10
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v27, v27, v10
	v_rcp_f32_e32 v30, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v29, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v10, v27, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v29, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v30
	v_fma_f32 v29, -v29, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v29, v29, v30, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v30, 0xbfb8aa3b, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v151, v29, v27, v10
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v132, v13
	v_mul_f32_e32 v29, v118, v73
	v_mul_f32_e32 v13, v100, v17
	v_mul_f32_e32 v17, v114, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v40, v97, v151 :: v_dual_mul_f32 v41, v95, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v11
	v_exp_f32_e32 v30, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v30, v30, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v30, v30, v11
	v_rcp_f32_e32 v32, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v31, v32, 1.0
	v_fmac_f32_e32 v32, v33, v32
	v_div_scale_f32 v33, vcc_lo, v11, v30, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v34, v33, v32
	v_fma_f32 v35, -v31, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v32
	v_fma_f32 v31, -v31, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v31, v31, v32, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v32, 0xbfb8aa3b, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v152, v31, v30, v11
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v56, v93
	v_mul_f32_e32 v56, v124, v72
	v_mul_f32_e32 v30, v117, v94
	v_mul_f32_e32 v11, v113, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v39, v98, v152 :: v_dual_fmac_f32 v32, 0xbfb8aa3b, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v32, v32, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v32, v32, v2
	v_rcp_f32_e32 v34, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v33, v34, 1.0
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v2, v32, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v36, v35, v34
	v_fma_f32 v37, -v33, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v37, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v119, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v33, v36, v35
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v35, v121, v76 :: v_dual_lshlrev_b32 v76, 1, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v34, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v120, v75
	v_mul_f32_e32 v34, v122, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v10, v33, v32, v2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v133, v91
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, |v68|, |v37|, |v36|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v55, v92
	v_mul_f32_e32 v55, v125, v134
	v_mul_f32_e32 v10, v96, v10
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, |v32|, |v25|, |v26|
	v_max3_f32 v1, v1, |v71|, v2
	v_max3_f32 v2, |v67|, |v66|, |v65|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v2, v2, v5, |v27|
	v_max3_f32 v5, |v35|, |v34|, |v64|
	v_max3_f32 v74, v1, v5, v2
	v_max_f32_e64 v2, |v60|, |v59|
	v_max3_f32 v5, |v58|, |v33|, |v31|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v1, v127, v7
	v_dual_mul_f32 v7, v82, v44 :: v_dual_mul_f32 v44, v61, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v2, |v57|, v5
	v_max3_f32 v5, |v56|, |v55|, |v54|
	v_max_f32_e64 v28, |v45|, |v44|
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v5, v5, v6, |v23|
	v_max3_f32 v6, |v30|, |v29|, |v1|
	v_max3_f32 v72, v2, v6, v5
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v2, v123, v15 :: v_dual_mul_f32 v15, v102, v20
	v_mul_f32_e32 v20, v110, v140
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, |v16|, |v13|, |v14|
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v5, |v50|, |v20|, |v19|
	v_max3_f32 v0, v0, |v49|, v5
	v_max3_f32 v5, |v48|, |v47|, |v46|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v5, v5, v6, |v15|
	v_max3_f32 v6, |v18|, |v17|, |v2|
	v_max3_f32 v0, v0, v6, v5
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v6, v81, v43 :: v_dual_mul_f32 v43, v62, v145
	v_dual_mul_f32 v5, v80, v42 :: v_dual_mul_f32 v42, v63, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v53, |v43|, |v12|, |v11|
	v_max3_f32 v61, |v10|, |v5|, |v6|
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v28, v28, |v42|, v53
	v_max3_f32 v53, |v41|, |v40|, |v39|
	v_max3_f32 v53, v53, v61, |v7|
	v_max3_f32 v61, |v9|, |v8|, |v38|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v28, v28, v61, v53
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v53, v74, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v61, v72, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v53, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v79, v74, v53
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v53, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v72, v61
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v61, 8, v169
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v53, v53, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v81, v0, v53
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v28, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v82, v28, v0
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v169
	v_and_b32_e32 v28, 4, v169
	v_lshl_add_u32 v53, v0, 9, 0
	v_lshlrev_b32_e32 v74, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v63, v28, 6, 0
	v_lshl_add_u32 v0, v0, 4, 0
	v_lshl_add_u32 v53, v28, 2, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v62, v74, v78
	v_lshlrev_b32_e32 v28, 5, v28
	v_lshl_add_u32 v53, v61, 4, v53
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v53, v53, v76, v62
	v_lshrrev_b32_e32 v62, 3, v171
	ds_store_b128 v53, v[79:82]
	v_lshlrev_b32_e32 v53, 4, v169
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v53, 0x680, v53, v74
	v_xor_b32_e32 v53, v53, v78
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v53, v63, v62, v53
	ds_load_b128 v[79:82], v53
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v62, v79
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v79, v79
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v63, v80
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v75, v80, v80 :: v_dual_mov_b32 v72, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v62, v62 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v81, v81
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v63, v63 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v53, v82, v82
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v62, v62, v62
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v63, v63, v63 :: v_dual_max_f32 v62, v73, v62
	v_dual_max_f32 v82, v82, v82 :: v_dual_max_f32 v63, v75, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v73, v62
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v53, v53, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v62, v62, v73 :: v_dual_mov_b32 v73, v63
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v73, v73
	v_max_f32_e32 v63, v63, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v73, v62
	v_mov_b32_e32 v75, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v73, v73 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v73, v73
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v79, v62, v73 :: v_dual_max_f32 v62, v72, v72
	v_max_f32_e32 v80, v63, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v62, v77, v62
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v63, v63 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v63, v63, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v62, v62, v63
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v63, v63, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v81, v62, v63 :: v_dual_mov_b32 v62, v53
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v62, v62 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v53, v53, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v62, v53
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v62, v62, v62
	v_dual_max_f32 v82, v53, v62 :: v_dual_lshlrev_b32 v53, 3, v61
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v61, 0, v171
	v_lshrrev_b32_e32 v62, 1, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v0, v28, v53
	v_add3_u32 v61, v61, v62, v53
	ds_store_b128 v61, v[79:82]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v0
.Ltmp57:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v79, v79
	v_dual_max_f32 v28, v81, v81 :: v_dual_max_f32 v53, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v61, v82, v82 :: v_dual_max_f32 v0, 0x2b8cbccc, v0
	v_max_f32_e32 v61, 0x2b8cbccc, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v62, null, 0x40e00000, 0x40e00000, v0
	v_rcp_f32_e32 v63, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v62, v63, 1.0
	v_fmac_f32_e32 v63, v72, v63
	v_div_scale_f32 v72, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v72, v63
	v_fma_f32 v75, -v62, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v75, v63
	v_fma_f32 v62, -v62, v73, v72
	v_max_f32_e32 v72, 0x2b8cbccc, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v63, v62, v63, v73
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v63, 0x40e00000, v0
	v_rcp_f32_e32 v62, v28
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v63.h, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v73, -v28, v62, 1.0
	v_fmac_f32_e32 v62, v73, v62
	v_div_scale_f32 v73, vcc_lo, v72, 0x40e00000, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v73, v62
	v_fma_f32 v77, -v28, v75, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v77, v62
	v_fma_f32 v28, -v28, v75, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v73, v28, v62, v75
	v_max_f32_e32 v75, 0x2b8cbccc, v53
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v28
	v_fma_f32 v62, -v28, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v62, v53
	v_div_scale_f32 v62, vcc_lo, v75, 0x40e00000, v75
	v_mul_f32_e32 v77, v62, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v28, v77, v62
	v_fmac_f32_e32 v77, v79, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v77, v62
	v_div_fmas_f32 v77, v28, v53, v77
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v28
	v_fma_f32 v62, -v28, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v62, v53
	v_div_scale_f32 v62, vcc_lo, v61, 0x40e00000, v61
	v_mul_f32_e32 v79, v62, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v28, v79, v62
	v_fmac_f32_e32 v79, v80, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v79, v62
	v_div_fmas_f32 v62, v28, v53, v79
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e32 v28.h, v63.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v28, v0, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v53, 0xffff0000, v28
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v53, v53, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v79, v0
	v_fma_f32 v80, -v0, v79, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, vcc_lo, v70, v53, v70
	v_mul_f32_e32 v81, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v0, v81, v80
	v_fmac_f32_e32 v81, v82, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v81, v80
	v_div_fmas_f32 v79, v0, v79, v81
	v_div_scale_f32 v0, null, v53, v53, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v70, v79, v53, v70
	v_rcp_f32_e32 v80, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v0, v80, 1.0
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v81, vcc_lo, v69, v53, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v81, v80
	v_fma_f32 v83, -v0, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v80
	v_fma_f32 v0, -v0, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v0, v80, v82
	v_div_scale_f32 v0, null, v53, v53, v71
	v_div_fixup_f32 v69, v80, v53, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v81, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v0, v81, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v71, v53, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v69, 15, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v83, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v0, v83, v82
	v_fmac_f32_e32 v83, v84, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v83, v82
	v_div_fmas_f32 v81, v0, v81, v83
	v_div_scale_f32 v0, null, v53, v53, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v71, v81, v53, v71
	v_rcp_f32_e32 v82, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v0, v82, 1.0
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, vcc_lo, v68, v53, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v82
	v_fma_f32 v85, -v0, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v82
	v_fma_f32 v0, -v0, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v0, v82, v84
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 4, v170
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v79, v82, v53, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v0, v0, v78
	v_lshlrev_b32_e32 v78, 10, v169
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v70
	v_rndne_f32_e32 v70, v71
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v83, 0x1800, v78
	v_and_b32_e32 v78, 16, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v84, 6, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v83, 0, v83, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v68, 15, v68
	v_and_b32_e32 v70, 15, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v76, v83, v0, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v53, v53, v37
	v_rcp_f32_e32 v83, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v0, v83, 1.0
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v37, v53, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v86, -v0, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v83
	v_fma_f32 v0, -v0, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v83, v0, v83, v85
	v_div_scale_f32 v0, null, v53, v53, v36
	v_div_fixup_f32 v37, v83, v53, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v84, v0
	v_fma_f32 v85, -v0, v84, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v85, vcc_lo, v36, v53, v36
	v_mul_f32_e32 v86, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v0, v86, v85
	v_fmac_f32_e32 v86, v87, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v86, v85
	v_div_fmas_f32 v84, v0, v84, v86
	v_div_scale_f32 v0, null, v53, v53, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v85, v0
	v_fma_f32 v86, -v0, v85, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v85
	v_div_scale_f32 v86, vcc_lo, v35, v53, v35
	v_mul_f32_e32 v87, v86, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v0, v87, v86
	v_fmac_f32_e32 v87, v88, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v87, v86
	v_div_fmas_f32 v85, v0, v85, v87
	v_div_scale_f32 v0, null, v53, v53, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v0
	v_fma_f32 v87, -v0, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v34, v53, v34
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v0, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v88, v87
	v_div_fmas_f32 v86, v0, v86, v88
	v_div_scale_f32 v0, null, v53, v53, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v87, v0
	v_fma_f32 v88, -v0, v87, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v64, v53, v64
	v_mul_f32_e32 v89, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v0, v89, v88
	v_fmac_f32_e32 v89, v90, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v89, v88
	v_div_fmas_f32 v0, v0, v87, v89
	v_div_scale_f32 v87, null, v53, v53, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v53, v64
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v87, v88, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v67, v53, v67
	v_mul_f32_e32 v90, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v87, v90, v89
	v_fmac_f32_e32 v90, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v87, v90, v89
	v_div_fmas_f32 v87, v87, v88, v90
	v_div_scale_f32 v88, null, v53, v53, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v64, v87, v53, v67
	v_rcp_f32_e32 v89, v88
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v64, v64
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v64, v64, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v66, v53, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v71, 15, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v91, v90
	v_div_fmas_f32 v88, v88, v89, v91
	v_div_scale_f32 v89, null, v53, v53, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v66, v88, v53, v66
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v89, v90, 1.0
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v65, v53, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v90
	v_fma_f32 v89, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_fixup_f32 v67, v89, v53, v65
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v65, v64
	v_and_b32_e32 v64, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v65, 15, v65
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v66, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v67, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 6, v169
	ds_store_b128 v76, v[68:71]
	ds_store_b128 v76, v[64:67] offset:512
	s_waitcnt lgkmcnt(0)
	v_and_or_b32 v0, 0x1b00, v0, v74
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_xad_u32 v64, v0, v4, 0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v53, v53, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[65:68], v64
	ds_load_b128 v[79:82], v64 offset:1024
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v4, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v69, -v0, v4, 1.0
	v_fmac_f32_e32 v4, v69, v4
	v_div_scale_f32 v69, vcc_lo, v32, v53, v32
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v79, 4, v65
	v_lshl_or_b32 v66, v80, 4, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v70, v69, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v81, 4, v67
	v_lshl_or_b32 v68, v82, 4, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v0, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v4
	v_fma_f32 v0, -v0, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v70, v0, v4, v70
	v_div_scale_f32 v0, null, v53, v53, v25
	v_rcp_f32_e32 v4, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v0, v4, 1.0
	v_fmac_f32_e32 v4, v69, v4
	v_div_scale_f32 v69, vcc_lo, v25, v53, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v69, v4
	v_fma_f32 v74, -v0, v71, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v74, v4
	v_fma_f32 v0, -v0, v71, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v0, v4, v71
	v_div_scale_f32 v0, null, v53, v53, v26
	v_div_fixup_f32 v25, v71, v53, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v4, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v69, -v0, v4, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v4, v69, v4
	v_div_scale_f32 v69, vcc_lo, v26, v53, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v69, v4
	v_fma_f32 v79, -v0, v74, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v79, v4
	v_fma_f32 v0, -v0, v74, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v74, v0, v4, v74
	v_div_scale_f32 v0, null, v53, v53, v27
	v_rcp_f32_e32 v4, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v0, v4, 1.0
	v_fmac_f32_e32 v4, v69, v4
	v_div_scale_f32 v69, vcc_lo, v27, v53, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v79, v69, v4
	v_fma_f32 v80, -v0, v79, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v4
	v_fma_f32 v0, -v0, v79, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v79, v0, v4, v79
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v77, 0x40e00000, v75
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v4.h, v63.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_fixup_f32 v27, v79, v53, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v4.l, v0.h
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v0, v4, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v69, 0xffff0000, v4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v4.l, 8, v66.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v69, v69, v60
	v_rcp_f32_e32 v75, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v0, v75, 1.0
	v_fmac_f32_e32 v75, v77, v75
	v_div_scale_f32 v77, vcc_lo, v60, v69, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v77, v75
	v_fma_f32 v81, -v0, v80, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v75
	v_fma_f32 v0, -v0, v80, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v0, v0, v75, v80
	v_div_scale_f32 v75, null, v69, v69, v59
	v_rcp_f32_e32 v77, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v75, v77, 1.0
	v_fmac_f32_e32 v77, v80, v77
	v_div_scale_f32 v80, vcc_lo, v59, v69, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v80, v77
	v_fma_f32 v82, -v75, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v77
	v_fma_f32 v75, -v75, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v75, v77, v81
	v_div_scale_f32 v75, null, v69, v69, v57
	v_div_fixup_f32 v59, v82, v69, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v75
	v_fma_f32 v80, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v77, v80, v77
	v_div_scale_f32 v80, vcc_lo, v57, v69, v57
	v_div_fixup_f32 v26, v74, v53, v26
	v_mul_f32_e32 v81, v80, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v75, v81, v80
	v_fmac_f32_e32 v81, v87, v77
	v_div_fixup_f32 v36, v84, v53, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v81, v80
	v_div_fmas_f32 v87, v75, v77, v81
	v_div_scale_f32 v75, null, v69, v69, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v75
	v_fma_f32 v80, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v77, v80, v77
	v_div_scale_f32 v80, vcc_lo, v58, v69, v58
	v_div_fixup_f32 v32, v70, v53, v32
	v_mul_f32_e32 v81, v80, v77
	v_div_fixup_f32 v0, v0, v69, v60
	v_div_fixup_f32 v60, v87, v69, v57
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v59
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v75, v81, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v88, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v75, v81, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v88, v75, v77, v81
	v_div_scale_f32 v75, null, v69, v69, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v75
	v_fma_f32 v80, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v80, v77
	v_div_scale_f32 v80, vcc_lo, v33, v69, v33
	v_mul_f32_e32 v81, v80, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v75, v81, v80
	v_fmac_f32_e32 v81, v89, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v81, v80
	v_div_fmas_f32 v75, v75, v77, v81
	v_div_scale_f32 v77, null, v69, v69, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v80, v77
	v_fma_f32 v81, -v77, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v81, vcc_lo, v31, v69, v31
	v_mul_f32_e32 v89, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v77, v89, v81
	v_fmac_f32_e32 v89, v90, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v77, v89, v81
	v_div_fmas_f32 v77, v77, v80, v89
	v_div_scale_f32 v80, null, v69, v69, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v31, v77, v69, v31
	v_rcp_f32_e32 v81, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v80, v81, 1.0
	v_fmac_f32_e32 v81, v89, v81
	v_div_scale_f32 v89, vcc_lo, v30, v69, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v81
	v_fma_f32 v91, -v80, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v81
	v_fma_f32 v80, -v80, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v80, v81, v90
	v_div_scale_f32 v81, null, v69, v69, v29
	v_div_fixup_f32 v30, v80, v69, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v81
	v_fma_f32 v90, -v81, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v29, v69, v29
	v_div_fixup_f32 v82, v88, v69, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v58, v57
	v_and_b32_e32 v57, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v91, v90, v89
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v81, v91, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v81, v91, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v59, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v89, v91
	v_div_scale_f32 v89, null, v69, v69, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v29, v81, v69, v29
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v89, v90, 1.0
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v1, v69, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v90
	v_fma_f32 v89, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_scale_f32 v90, null, v69, v69, v56
	v_div_fixup_f32 v0, v89, v69, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v91, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v90, v91, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v56, v69, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v87, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v90, v93, v92
	v_fmac_f32_e32 v93, v94, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v90, v93, v92
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_scale_f32 v91, null, v69, v69, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v1, v90, v69, v56
	v_rcp_f32_e32 v92, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v1, v1
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v56, v56, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v1, v1, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v55, v69, v55
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v60, 15, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v88, 15, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v91, v94, v93
	v_fmac_f32_e32 v94, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v94, v93
	v_div_fmas_f32 v91, v91, v92, v94
	v_div_scale_f32 v92, null, v69, v69, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v55, v91, v69, v55
	v_rcp_f32_e32 v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v55
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v92, v93, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v54, v69, v54
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v89, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v94, v93
	v_fma_f32 v96, -v92, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v93
	v_fma_f32 v92, -v92, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v92, v92, v93, v95
	v_div_fixup_f32 v54, v92, v69, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v54
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v90, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v69, v69, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[57:60]
	ds_store_b128 v76, v[87:90] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v1, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v24, v69, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v54, v1
	v_fma_f32 v56, -v0, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v56, v1
	v_fma_f32 v0, -v0, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v55, v0, v1, v55
	v_div_scale_f32 v0, null, v69, v69, v21
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v21, v69, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v56, v54, v1
	v_fma_f32 v57, -v0, v56, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v1
	v_fma_f32 v0, -v0, v56, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v56, v0, v1, v56
	v_div_scale_f32 v0, null, v69, v69, v22
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v22, v69, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v54, v1
	v_fma_f32 v58, -v0, v57, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v58, v1
	v_fma_f32 v0, -v0, v57, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v57, v0, v1, v57
	v_div_scale_f32 v0, null, v69, v69, v23
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v23, v69, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v54, v1
	v_fma_f32 v59, -v0, v58, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v1
	v_fma_f32 v0, -v0, v58, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v58, v0, v1, v58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v73, 0x40e00000, v72
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v63.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 1, v63
	v_add3_u32 v1, v0, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v54, 0xffff0000, v1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v68.l
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v54, v54, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v59, v0
	v_fma_f32 v60, -v0, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v60, vcc_lo, v52, v54, v52
	v_mul_f32_e32 v72, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v0, v72, v60
	v_fmac_f32_e32 v72, v73, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v72, v60
	v_div_fmas_f32 v0, v0, v59, v72
	v_div_scale_f32 v59, null, v54, v54, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v54, v52
	v_rcp_f32_e32 v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v72, -v59, v60, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v60, v72, v60
	v_div_scale_f32 v72, vcc_lo, v51, v54, v51
	v_mul_f32_e32 v73, v72, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v59, v73, v72
	v_fmac_f32_e32 v73, v82, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v73, v72
	v_div_fmas_f32 v73, v59, v60, v73
	v_div_scale_f32 v59, null, v54, v54, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v51, v73, v54, v51
	v_rcp_f32_e32 v60, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v59, v60, 1.0
	v_fmac_f32_e32 v60, v72, v60
	v_div_scale_f32 v72, vcc_lo, v49, v54, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v72, v60
	v_fma_f32 v87, -v59, v82, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v87, v60
	v_fma_f32 v59, -v59, v82, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v59, v60, v82
	v_div_scale_f32 v59, null, v54, v54, v50
	v_div_fixup_f32 v52, v82, v54, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v60, v59
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v51
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v49, v49, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v72, -v59, v60, 1.0
	v_fmac_f32_e32 v60, v72, v60
	v_div_scale_f32 v72, vcc_lo, v50, v54, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v72, v60
	v_fma_f32 v88, -v59, v87, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v60
	v_fma_f32 v59, -v59, v87, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v59, v60, v87
	v_div_scale_f32 v59, null, v54, v54, v20
	v_div_fixup_f32 v73, v87, v54, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v60, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v50, v49
	v_and_b32_e32 v49, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v52
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v50, 15, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v72, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v60, v72, v60
	v_div_scale_f32 v72, vcc_lo, v20, v54, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v72, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v59, v88, v72
	v_fmac_f32_e32 v88, v89, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v88, v72
	v_div_fmas_f32 v59, v59, v60, v88
	v_div_scale_f32 v60, null, v54, v54, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v20, v59, v54, v20
	v_rcp_f32_e32 v72, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v60, v72, 1.0
	v_fmac_f32_e32 v72, v88, v72
	v_div_scale_f32 v88, vcc_lo, v19, v54, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v88, v72
	v_fma_f32 v90, -v60, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v72
	v_fma_f32 v60, -v60, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v60, v60, v72, v89
	v_div_scale_f32 v72, null, v54, v54, v18
	v_div_fixup_f32 v19, v60, v54, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v72
	v_fma_f32 v89, -v72, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v18, v54, v18
	v_mul_f32_e32 v90, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v72, v90, v89
	v_fmac_f32_e32 v90, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v72, v90, v89
	v_div_fmas_f32 v72, v72, v88, v90
	v_div_scale_f32 v88, null, v54, v54, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v18, v72, v54, v18
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v88, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v17, v54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v88, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v99, v88, v89, v91
	v_div_scale_f32 v88, null, v54, v54, v2
	v_div_fixup_f32 v17, v99, v54, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v2, v54, v2
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v91, v90
	v_div_fmas_f32 v88, v88, v89, v91
	v_div_scale_f32 v89, null, v54, v54, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v88, v54, v2
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v89, v90, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v48, v54, v48
	v_dual_mul_f32 v92, v91, v90 :: v_dual_and_b32 v87, 15, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v89, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v89, v92, v91
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_scale_f32 v90, null, v54, v54, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v2, v89, v54, v48
	v_rcp_f32_e32 v91, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v2, v2
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v48, v48, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v2, v2, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v90, v91, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v47, v54, v47
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v52, 15, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v93, v92, v91 :: v_dual_and_b32 v88, 15, v2
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_scale_f32 v91, null, v54, v54, v46
	v_div_fixup_f32 v47, v90, v54, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v92, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v46, v54, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v89, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v91, v94, v93
	v_fmac_f32_e32 v94, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v94, v93
	v_div_fmas_f32 v91, v91, v92, v94
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v46, v91, v54, v46
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[91:94], v64
	ds_load_b128 v[95:98], v64 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v90, 15, v0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v62, 0x40e00000, v61
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[49:52]
	ds_store_b128 v76, v[87:90] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v63.l, v0.h
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v63
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v54, v54, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v0
	v_fma_f32 v47, -v0, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v16, v54, v16
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v0, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v48, v47
	v_div_fmas_f32 v0, v0, v46, v48
	v_div_scale_f32 v46, null, v54, v54, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v54, v16
	v_rcp_f32_e32 v47, v46
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v16, v16, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v48, -v46, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v13, v54, v13
	v_dual_mul_f32 v49, v48, v47 :: v_dual_and_b32 v16, 15, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v46, v49, v48
	v_fmac_f32_e32 v49, v50, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v46, v49, v48
	v_div_fmas_f32 v51, v46, v47, v49
	v_div_scale_f32 v46, null, v54, v54, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v47, v46
	v_fma_f32 v48, -v46, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v14, v54, v14
	v_mul_f32_e32 v49, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v46, v49, v48
	v_fmac_f32_e32 v49, v50, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v46, v49, v48
	v_div_fmas_f32 v52, v46, v47, v49
	v_div_scale_f32 v46, null, v54, v54, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v47, v46
	v_fma_f32 v48, -v46, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v15, v54, v15
	v_mul_f32_e32 v49, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v46, v49, v48
	v_fmac_f32_e32 v49, v50, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v46, v49, v48
	v_div_fmas_f32 v61, v46, v47, v49
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v46, 0xffff0000, v2
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_and_b16 v2.l, 0xff, v67.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v47, null, v46, v46, v45
	v_rcp_f32_e32 v48, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v47, v48, 1.0
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, vcc_lo, v45, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v50, v49, v48
	v_fma_f32 v62, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v62, v48
	v_fma_f32 v47, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v47, v47, v48, v50
	v_div_scale_f32 v48, null, v46, v46, v44
	v_div_fixup_f32 v45, v47, v46, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v49, v48
	v_fma_f32 v50, -v48, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, vcc_lo, v44, v46, v44
	v_mul_f32_e32 v62, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v48, v62, v50
	v_fmac_f32_e32 v62, v63, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v48, v62, v50
	v_div_fmas_f32 v48, v48, v49, v62
	v_div_scale_f32 v49, null, v46, v46, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v44, v48, v46, v44
	v_rcp_f32_e32 v50, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v49, v50, 1.0
	v_fmac_f32_e32 v50, v62, v50
	v_div_scale_f32 v62, vcc_lo, v42, v46, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v63, v62, v50
	v_fma_f32 v73, -v49, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v73, v50
	v_fma_f32 v49, -v49, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v49, v49, v50, v63
	v_div_scale_f32 v50, null, v46, v46, v43
	v_div_fixup_f32 v47, v49, v46, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v62, v50
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v45
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v63, -v50, v62, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v62, v63, v62
	v_div_scale_f32 v63, vcc_lo, v43, v46, v43
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v42, 15, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v73, v63, v62
	v_fma_f32 v82, -v50, v73, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v82, v62
	v_fma_f32 v50, -v50, v73, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v50, v50, v62, v73
	v_div_scale_f32 v62, null, v46, v46, v12
	v_div_fixup_f32 v48, v50, v46, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v63, v62
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v47
	v_rndne_f32_e32 v45, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v45, v45, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v62, v63, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v63, v73, v63
	v_div_scale_f32 v73, vcc_lo, v12, v46, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v43, 15, v43
	v_and_b32_e32 v44, 15, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v82, v73, v63 :: v_dual_and_b32 v45, 15, v45
	v_fma_f32 v87, -v62, v82, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v87, v63
	v_fma_f32 v62, -v62, v82, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v62, v62, v63, v82
	v_div_scale_f32 v63, null, v46, v46, v11
	v_div_fixup_f32 v12, v62, v46, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v63
	v_fma_f32 v82, -v63, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v82, v73
	v_div_scale_f32 v82, vcc_lo, v11, v46, v11
	v_mul_f32_e32 v87, v82, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v63, v87, v82
	v_fmac_f32_e32 v87, v88, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v63, v87, v82
	v_div_fmas_f32 v63, v63, v73, v87
	v_div_scale_f32 v73, null, v46, v46, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v11, v63, v46, v11
	v_rcp_f32_e32 v82, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v73, v82, 1.0
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v87, vcc_lo, v9, v46, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v82
	v_fma_f32 v89, -v73, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v82
	v_fma_f32 v73, -v73, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v73, v73, v82, v88
	v_div_scale_f32 v82, null, v46, v46, v8
	v_div_fixup_f32 v9, v73, v46, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v87, v82
	v_fma_f32 v88, -v82, v87, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v8, v46, v8
	v_mul_f32_e32 v89, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v82, v89, v88
	v_fmac_f32_e32 v89, v90, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v82, v89, v88
	v_div_fmas_f32 v100, v82, v87, v89
	v_div_scale_f32 v82, null, v46, v46, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v8, v100, v46, v8
	v_rcp_f32_e32 v87, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v8, v8, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v82, v87, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v38, v46, v38
	v_dual_mul_f32 v89, v88, v87 :: v_dual_and_b32 v8, 15, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v82, v89, v88
	v_fmac_f32_e32 v89, v90, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v82, v89, v88
	v_div_fmas_f32 v82, v82, v87, v89
	v_div_scale_f32 v87, null, v46, v46, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v38, v82, v46, v38
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v87, v88, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v41, v46, v41
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v38, 15, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v101, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v101, v88
	v_fma_f32 v87, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v87, v88, v90
	v_div_scale_f32 v88, null, v46, v46, v40
	v_div_fixup_f32 v41, v87, v46, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v40, v46, v40
	v_mul_f32_e32 v101, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v88, v101, v90
	v_fmac_f32_e32 v101, v102, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v101, v90
	v_div_fmas_f32 v88, v88, v89, v101
	v_div_scale_f32 v89, null, v46, v46, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v40, v88, v46, v40
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v40, v40, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v101, -v89, v90, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v101, v90
	v_div_scale_f32 v101, vcc_lo, v39, v46, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v40, 15, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v102, v101, v90
	v_fma_f32 v103, -v89, v102, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v102, v103, v90
	v_fma_f32 v89, -v89, v102, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v89, v89, v90, v102
	v_div_fixup_f32 v47, v89, v46, v39
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v41, v47
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v39, v39, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[47:50], v64
	ds_load_b128 v[87:90], v64 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v41, v41
	v_and_b32_e32 v39, 15, v39
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v41, 15, v41
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[42:45]
	ds_store_b128 v76, v[38:41] offset:512
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v86, v53, v34
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v85, v53, v35
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v36
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v39, 15, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v26
	v_rndne_f32_e32 v36, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v36, v36
	v_and_b32_e32 v34, 15, v34
	v_and_b32_e32 v35, 15, v35
	v_and_b32_e32 v37, 15, v37
	v_and_b32_e32 v40, 15, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v36, 15, v36
	v_and_b32_e32 v38, 15, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[42:45], v64
	ds_load_b128 v[82:85], v64 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v75, v69, v33
	v_div_fixup_f32 v33, v55, v69, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v25, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v29, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v41, 15, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[34:37]
	ds_store_b128 v76, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v64
	ds_load_b128 v[38:41], v64 offset:1024
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v33, v51, v54, v13
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v20
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	v_and_b32_e32 v24, 15, v24
	v_and_b32_e32 v29, 15, v29
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v33, v84, 4, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v13, 15, v13
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v26, v39, 4, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v56, v69, v21
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v25, v38, 4, v34
	v_lshl_or_b32 v27, v40, 4, v36
	v_lshl_or_b32 v34, v41, 4, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v40, v57, v69, v22
	v_div_fixup_f32 v41, v58, v69, v23
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v30
	v_rndne_f32_e32 v30, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v52, v54, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v31
	v_rndne_f32_e32 v31, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v40, v61, v54, v15
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v18
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v18, v17
	v_and_b32_e32 v17, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v39
	v_rndne_f32_e32 v21, v32
	v_rndne_f32_e32 v14, v19
	v_rndne_f32_e32 v32, v41
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_and_b32_e32 v19, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_and_b32_e32 v21, 15, v21
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v22, 15, v22
	v_and_b32_e32 v23, 15, v23
	v_and_b32_e32 v14, 15, v14
	v_and_b32_e32 v15, 15, v15
	v_and_b32_e32 v30, 15, v30
	v_and_b32_e32 v31, 15, v31
	v_and_b32_e32 v32, 15, v32
	v_and_b32_e32 v18, 15, v18
	v_and_b32_e32 v20, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[21:24]
	ds_store_b128 v76, v[29:32] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v64
	ds_load_b128 v[29:32], v64 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v76, v[13:16]
	ds_store_b128 v76, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v64
	ds_load_b128 v[17:20], v64 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v85, 4, v45
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v45, 3, v170
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v35, v95, 4, v91
	v_lshl_or_b32 v36, v96, 4, v92
	v_lshl_or_b32 v37, v97, 4, v93
	v_lshl_or_b32 v38, v98, 4, v94
	v_lshl_or_b32 v23, v31, 4, v23
	v_lshl_or_b32 v24, v32, 4, v24
	v_lshl_or_b32 v21, v29, 4, v21
	v_lshl_or_b32 v22, v30, 4, v22
	v_lshl_or_b32 v29, v87, 4, v47
	v_lshl_or_b32 v30, v88, 4, v48
	v_lshl_or_b32 v0, v17, 4, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v13, null, v46, v46, v10
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v18, 4, v14
	v_lshl_or_b32 v18, v19, 4, v15
	v_lshl_or_b32 v19, v82, 4, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v14, v13
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v20, 4, v16
	v_lshl_or_b32 v20, v83, 4, v43
	v_lshl_or_b32 v31, v89, 4, v49
	v_lshl_or_b32 v32, v90, 4, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v15, -v13, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v10, v46, v10
	v_mul_f32_e32 v40, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v13, v40, v15
	v_fmac_f32_e32 v40, v41, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v13, v40, v15
	v_div_fmas_f32 v13, v13, v14, v40
	v_div_scale_f32 v14, null, v46, v46, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v10, v13, v46, v10
	v_rcp_f32_e32 v15, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v14, v15, 1.0
	v_fmac_f32_e32 v15, v40, v15
	v_div_scale_f32 v40, vcc_lo, v5, v46, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v15
	v_fma_f32 v42, -v14, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v15
	v_fma_f32 v14, -v14, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v14, v14, v15, v41
	v_div_scale_f32 v15, null, v46, v46, v6
	v_div_fixup_f32 v13, v14, v46, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v40, v15
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v5, v12
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v5, v5, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v41, -v15, v40, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v6, v46, v6
	v_dual_mul_f32 v42, v41, v40 :: v_dual_and_b32 v5, 15, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v15, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v42, v41
	v_div_fmas_f32 v15, v15, v40, v42
	v_div_scale_f32 v40, null, v46, v46, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v14, v15, v46, v6
	v_rcp_f32_e32 v41, v40
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v11, v14
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v6, v6, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v11, v11, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v42, -v40, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v6, v6
	v_cvt_i32_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v7, v46, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v6, 15, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v11, 15, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v43, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v40, v43, v42
	v_fmac_f32_e32 v43, v44, v41
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v44, 4, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v40, -v40, v43, v42
	v_div_fmas_f32 v40, v40, v41, v43
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v15, v40, v46, v7
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v9
	v_rndne_f32_e32 v9, v10
	v_rndne_f32_e32 v10, v13
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, v44, v3
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 32, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v12, v12
	v_and_b32_e32 v7, 15, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 15, v9
	v_and_b32_e32 v10, 15, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v12, 15, v12
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[5:8]
	ds_store_b128 v76, v[9:12] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v64
	ds_load_b128 v[9:12], v64 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v10, 4, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v6, s0, s44, v44
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v11, 4, v7
	v_lshl_or_b32 v43, v12, 4, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v7, null, s45, 0, s0
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v8, s33, 7, v45
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v40, v9, 4, v5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_and_b16 v5.l, 0xff, v65.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[42:43], v[6:7]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v13, s5, v[8:9]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v6.h, v2.l, v1.l
	v_or_b16 v6.l, v5.l, v4.l
	v_lshlrev_b16 v1.l, 8, v34.l
	v_and_b16 v2.l, 0xff, v27.l
	v_lshlrev_b16 v4.l, 8, v26.l
	v_and_b16 v5.l, 0xff, v25.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 16, v44
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v7.h, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v38.l
	v_or_b16 v7.l, v5.l, v4.l
	v_cndmask_b32_e32 v5, 0x80000000, v9, vcc_lo
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 48, v44
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_and_b16 v2.l, 0xff, v37.l
	v_lshlrev_b16 v4.l, 8, v36.l
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v25, 63, v169
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[6:7], v5, s[8:11], 0 offen
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v7, 32, v44
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v5, s0, s44, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v6, null, s45, 0, s0
	v_add_co_u32 v9, s0, s44, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s45, 0, s0
	v_add_co_u32 v11, s0, s44, v11
	v_add_co_ci_u32_e64 v12, null, s45, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[42:43], v[5:6]
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_and_b16 v5.l, 0xff, v35.l
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[40:41], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[42:43], v[9:10]
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_lshlrev_b16 v5.h, 8, v24.l
	v_and_b16 v6.l, 0xff, v23.l
	v_or_b16 v9.h, v2.l, v1.l
	v_or_b16 v9.l, v5.l, v4.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, 16, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[40:41], v[11:12]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[42:43], v[11:12]
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_or_b16 v10.h, v6.l, v5.h
	v_lshlrev_b16 v1.l, 8, v22.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[5:6], null, v7, s5, v[8:9]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_and_b16 v2.l, 0xff, v21.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, 48, v13
	v_mad_u64_u32 v[13:14], null, v14, s5, v[8:9]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.l, v2.l, v1.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v6, s5, v[8:9]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v8, 0x80000000, v5, s3
	v_lshlrev_b16 v1.l, 8, v32.l
	v_and_b16 v2.l, 0xff, v31.l
	v_lshlrev_b16 v4.l, 8, v30.l
	v_and_b16 v5.l, 0xff, v29.l
	v_lshlrev_b16 v5.h, 8, v16.l
	v_and_b16 v6.l, 0xff, v18.l
	v_lshlrev_b16 v6.h, 8, v17.l
	v_and_b16 v7.l, 0xff, v0.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s2
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[9:10], v8, s[8:11], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v5.l, v4.l
	v_or_b16 v9.h, v6.l, v5.h
	v_or_b16 v9.l, v7.l, v6.h
	v_cndmask_b32_e64 v0, 0x80000000, v13, s1
	v_lshlrev_b16 v1.l, 8, v39.l
	v_and_b16 v2.l, 0xff, v33.l
	v_lshlrev_b16 v4.l, 8, v20.l
	v_and_b16 v5.l, 0xff, v19.l
	v_lshlrev_b16 v5.h, 8, v43.l
	v_and_b16 v6.l, 0xff, v42.l
	v_lshlrev_b16 v6.h, 8, v41.l
	v_and_b16 v7.l, 0xff, v40.l
	buffer_store_b64 v[8:9], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v0, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v2.l, v1.l
	v_or_b16 v15.l, v5.l, v4.l
	v_or_b16 v16.h, v6.l, v5.h
	v_or_b16 v16.l, v7.l, v6.h
	v_dual_cndmask_b32 v5, 0x80000000, v14 :: v_dual_and_b32 v6, 2, v44
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s1, s34, 31
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v4.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[15:16], v5, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v45
	v_mov_b16_e32 v1.l, v28.h
	v_add3_u32 v0, v0, v6, v45
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s1, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, v25, v3
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v11, s6, s44, v25
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s34, s0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, s45, 0, s6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v5, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v169
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[11:12]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[42:43], v[11:12]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_cmp_eq_u32_e64 s1, 0, v2
	v_add_lshl_u32 v1, v1, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp58:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 100
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 61
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 61
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 100
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32516
; TotalNumSgprs: 63
; NumVgprs: 256
; ScratchSize: 100
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 63
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp57-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 100
    .sgpr_count:     63
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 24
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
