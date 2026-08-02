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
	s_load_b64 s[28:29], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v171, 15, v0
	v_lshlrev_b32_e32 v176, 1, v0
	v_and_b32_e32 v175, 0x80, v0
	v_lshrrev_b32_e32 v174, 4, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s28, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_xor_b32 s13, s13, s15
	s_sub_i32 s15, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s15, s3
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
	s_load_b64 s[30:31], s[2:3], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[34:35], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s8, s12
	s_addc_u32 s3, s9, s13
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s10, s12
	s_addc_u32 s5, s11, s13
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s29, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v30, s34 :: v_dual_lshlrev_b32 v1, 1, v0
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v43, 0x80, v0
.Ltmp4:
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v31, 4, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; ragged.py:0:9
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr31
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x40
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[36:37], s[2:3], 0x0
	s_load_b64 s[38:39], s[4:5], 0x0
	v_dual_mov_b32 v67, 0 :: v_dual_and_b32 v172, 0xf0, v0
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v173, 4, v171
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v155, 0
	s_lshl_b32 s33, s15, 8
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s31, s28, 1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v18, 5, v0
	s_load_b128 s[24:27], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_mov_b32_e32 v1, 0
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_lshrrev_b32_e32 v177, 3, v172
	.loc	1 1090 29                       ; ragged.py:1090:29
	s_mov_b32 s44, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s34, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s35, 0, s0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_lshl_b32 s46, s28, 6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v4, vcc_lo, v2, 8
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 24
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	v_add_co_u32 v10, vcc_lo, v2, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, 0, v3, vcc_lo
	v_add_co_u32 v12, vcc_lo, v2, 40
	v_add_co_ci_u32_e64 v13, null, 0, v3, vcc_lo
	v_add_co_u32 v14, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, 0, v3, vcc_lo
	v_add_co_u32 v16, vcc_lo, v2, 56
	v_add_co_ci_u32_e64 v17, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[2:3]
	v_bfe_i32 v2, v0, 7, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[4:5]
	v_cmp_le_i64_e64 s1, s[36:37], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[38:39], v[4:5]
	v_cmp_gt_i64_e64 s9, s[38:39], v[6:7]
	v_and_b32_e32 v4, 0x7f, v0
	v_and_b32_e32 v2, 0x88, v2
	v_lshrrev_b32_e32 v5, 2, v0
	v_lshlrev_b32_e32 v6, 5, v171
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_and_b32_e32 v19, 0xe0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[8:9]
	v_xor_b32_e32 v2, v2, v4
	v_xor_b32_e32 v4, v176, v5
	v_and_or_b32 v5, v176, 24, v6
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[38:39], v[8:9]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[36:37], v[10:11]
	v_xor_b32_e32 v7, 0x110, v2
	v_and_b32_e32 v4, 24, v4
	v_xor_b32_e32 v9, 8, v5
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v190, 0, v2
	v_mov_b32_e32 v2, v1
	v_lshlrev_b32_e32 v8, 4, v19
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[38:39], v[10:11]
	v_xor_b32_e32 v10, 16, v5
	v_xor_b32_e32 v11, 24, v5
	v_add_nc_u32_e32 v180, 0, v7
	v_add_nc_u32_e32 v181, 0, v9
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v191, 0, v5
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v9, v1
	v_or3_b32 v4, v4, v8, v6
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_mul_lo_u32 v8, s28, v174
	v_add_nc_u32_e32 v127, s34, v18
	v_dual_mov_b32 v28, v1 :: v_dual_lshlrev_b32 v3, 3, v0
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_and_b32_e32 v161, 31, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[36:37], v[14:15]
	v_cmp_le_i64_e64 s6, s[36:37], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[38:39], v[14:15]
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_lshlrev_b32_e32 v178, 2, v8
	v_mov_b32_e32 v8, v1
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v131, 56, v127
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[38:39], v[16:17]
	v_xor_b32_e32 v15, 8, v4
	v_xor_b32_e32 v16, 16, v4
	v_xor_b32_e32 v17, 24, v4
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v193, 0, v4
	v_dual_mov_b32 v4, v1 :: v_dual_and_b32 v3, 24, v3
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_mad_u64_u32 v[162:163], null, v131, s29, v[161:162]
	v_dual_mov_b32 v30, v1 :: v_dual_add_nc_u32 v133, 48, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v3, v3, v177
	v_dual_mov_b32 v33, v1 :: v_dual_add_nc_u32 v134, 40, v127
	v_dual_mov_b32 v31, v1 :: v_dual_add_nc_u32 v132, 32, v127
	v_dual_mov_b32 v29, v1 :: v_dual_add_nc_u32 v130, 24, v127
	v_lshl_or_b32 v3, v171, 9, v3
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v129, 16, v127
	v_dual_mov_b32 v27, v1 :: v_dual_add_nc_u32 v128, 8, v127
	v_mad_u64_u32 v[163:164], null, v133, s29, v[161:162]
	v_mul_lo_u32 v14, s28, v177
	v_mad_u64_u32 v[164:165], null, v134, s29, v[161:162]
	v_mad_u64_u32 v[165:166], null, v132, s29, v[161:162]
	v_mad_u64_u32 v[166:167], null, v130, s29, v[161:162]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[38:39], v[12:13]
	v_xor_b32_e32 v12, 0x88, v3
	v_xor_b32_e32 v6, 0x110, v3
	v_xor_b32_e32 v13, 0x198, v3
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_mad_u64_u32 v[167:168], null, v129, s29, v[161:162]
	v_mad_u64_u32 v[168:169], null, v128, s29, v[161:162]
	v_mad_u64_u32 v[169:170], null, v127, s29, v[161:162]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s41, s0, s8
	.loc	1 1068 35                       ; ragged.py:1068:35
	s_mul_i32 s0, s31, s29
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add_lshl_u32 v179, v14, s28, 1
	v_add_nc_u32_e32 v182, 0, v10
	v_add_nc_u32_e32 v183, 0, v11
	v_add_nc_u32_e32 v184, 0, v12
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v185, 0, v6
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v186, 0, v13
	v_add_nc_u32_e32 v187, 0, v15
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v188, 0, v16
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v189, 0, v17
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v192, 0, v3
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	v_mov_b32_e32 v65, v1
	v_mov_b32_e32 v66, v1
	v_mov_b32_e32 v67, v1
	v_mov_b32_e32 v68, v1
	v_mov_b32_e32 v69, v1
	v_mov_b32_e32 v70, v1
	v_mov_b32_e32 v71, v1
	v_mov_b32_e32 v72, v1
	v_mov_b32_e32 v73, v1
	v_mov_b32_e32 v74, v1
	v_mov_b32_e32 v75, v1
	v_mov_b32_e32 v76, v1
	v_mov_b32_e32 v77, v1
	v_mov_b32_e32 v78, v1
	v_mov_b32_e32 v79, v1
	v_mov_b32_e32 v80, v1
	v_mov_b32_e32 v81, v1
	v_mov_b32_e32 v82, v1
	v_mov_b32_e32 v83, v1
	v_mov_b32_e32 v84, v1
	v_mov_b32_e32 v85, v1
	v_mov_b32_e32 v86, v1
	v_mov_b32_e32 v87, v1
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
	v_mov_b32_e32 v127, v1
	v_mov_b32_e32 v128, v1
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v170, s33, v173
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s40, vcc_lo, s7
	s_and_b32 s14, s6, s14
	.loc	1 1068 35                       ; ragged.py:1068:35
	s_mul_i32 s43, s0, s30
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s42, s1, s9
	s_and_b32 s2, s2, s10
	s_and_b32 s3, s3, s11
	s_and_b32 s12, s4, s12
	s_and_b32 s13, s5, s13
	s_and_b32 s9, s27, 0xffff
	s_add_u32 s45, s43, s28
	s_mov_b32 s4, s24
	s_mov_b32 s5, s25
	s_mov_b32 s8, s26
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_add_nc_u32_e32 v130, s44, v161
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v131, s44, v169
	v_add_nc_u32_e32 v132, s44, v168
	v_add_nc_u32_e32 v133, s44, v167
	v_add_nc_u32_e32 v134, s44, v166
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s0, s29, v130
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v129, s44, v177
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v135, s44, v165
	v_add_nc_u32_e32 v136, s44, v164
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_add_nc_u32_e32 v138, s44, v162
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s1, s40, s0
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	v_add_nc_u32_e32 v203, v179, v170
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v131, 0x80000000, v131, s1
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s1, s41, s0
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_add_nc_u32_e32 v130, 1, v129
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v132, 0x80000000, v132, s1
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s1, s42, s0
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s29, v129
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v133, 0x80000000, v133, s1
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s1, s2, s0
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	v_add_nc_u32_e32 v202, v178, v170
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v134, 0x80000000, v134, s1
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s1, s3, s0
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v137, s44, v163
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v135, 0x80000000, v135, s1
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s1, s12, s0
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	v_add_nc_u32_e32 v139, s43, v202
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v136, 0x80000000, v136, s1
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s1, s13, s0
	s_and_b32 s0, s14, s0
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	v_add_nc_u32_e32 v129, s43, v203
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v138, 0x80000000, v138, s0
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s0, s29, v130
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v137, 0x80000000, v137, s1
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v139, 0x80000000, v139, vcc_lo
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add_nc_u32_e32 v178, s46, v178
	v_add_nc_u32_e32 v179, s46, v179
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x7
	buffer_load_u8 v130, v131, s[4:7], 0 offen
	buffer_load_u8 v131, v133, s[4:7], 0 offen
	buffer_load_u8 v133, v135, s[4:7], 0 offen
	buffer_load_u8 v135, v137, s[4:7], 0 offen
	buffer_load_u8 v132, v132, s[4:7], 0 offen
	buffer_load_u8 v134, v134, s[4:7], 0 offen
	buffer_load_u8 v136, v136, s[4:7], 0 offen
	buffer_load_u8 v137, v138, s[4:7], 0 offen
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x1
	buffer_load_b128 v[157:160], v139, s[8:11], 0 offen
	buffer_load_b128 v[194:197], v129, s[8:11], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s44, s44, 32
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(9)
	ds_store_b8 v190, v130
	s_waitcnt vmcnt(8)
	ds_store_b8 v190, v131 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v190, v133 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v190, v135 offset:1536
	s_waitcnt vmcnt(5)
	ds_store_b8 v180, v132
	s_waitcnt vmcnt(4)
	ds_store_b8 v180, v134 offset:512
	s_waitcnt vmcnt(3)
	ds_store_b8 v180, v136 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b8 v180, v137 offset:1536
	s_waitcnt vmcnt(0) lgkmcnt(0)
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_perm_b32 v198, v194, v157, 0x5010400
	v_perm_b32 v200, v196, v159, 0x5010400
	v_perm_b32 v201, v196, v159, 0x7030602
	v_perm_b32 v194, v194, v157, 0x7030602
	v_perm_b32 v204, v197, v160, 0x5010400
	v_lshrrev_b32_e32 v196, 8, v198
	v_perm_b32 v205, v197, v160, 0x7030602
	v_and_b16 v157.l, 0xff, v198.l
	v_lshrrev_b32_e32 v197, 24, v198
	v_perm_b32 v199, v195, v158, 0x5010400
	v_lshlrev_b16 v160.h, 8, v196.l
	v_perm_b32 v195, v195, v158, 0x7030602
	v_and_b16 v157.h, 0xff, v198.h
	v_and_b16 v158.l, 0xff, v194.l
	v_lshrrev_b32_e32 v198, 8, v194
	v_lshrrev_b32_e32 v206, 24, v194
	v_or_b16 v194.l, v157.l, v160.h
	v_lshlrev_b16 v157.l, 8, v197.l
	v_and_b16 v158.h, 0xff, v194.h
	v_and_b16 v159.l, 0xff, v199.l
	v_lshrrev_b32_e32 v207, 8, v199
	v_lshrrev_b32_e32 v208, 24, v199
	v_or_b16 v194.h, v157.h, v157.l
	v_lshlrev_b16 v157.h, 8, v198.l
	v_and_b16 v159.h, 0xff, v199.h
	v_and_b16 v160.l, 0xff, v195.l
	v_lshrrev_b32_e32 v199, 8, v195
	v_lshrrev_b32_e32 v209, 24, v195
	v_or_b16 v195.l, v158.l, v157.h
	v_lshlrev_b16 v158.l, 8, v206.l
	v_and_b16 v157.l, 0xff, v195.h
	v_lshrrev_b32_e32 v198, 8, v200
	v_and_b16 v157.h, 0xff, v200.l
	v_lshrrev_b32_e32 v206, 24, v200
	v_or_b16 v195.h, v158.h, v158.l
	v_lshlrev_b16 v158.l, 8, v207.l
	v_lshlrev_b16 v158.h, 8, v208.l
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_barrier
	ds_load_2addr_stride64_b64 v[153:156], v191 offset1:1
	ds_load_2addr_stride64_b64 v[149:152], v191 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[145:148], v181 offset1:1
	ds_load_2addr_stride64_b64 v[141:144], v181 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[137:140], v182 offset1:1
	ds_load_2addr_stride64_b64 v[133:136], v182 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[129:132], v183 offset1:1
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s44, s29
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_or_b16 v196.l, v159.l, v158.l
	v_lshlrev_b16 v159.l, 8, v199.l
	v_and_b16 v158.l, 0xff, v200.h
	v_or_b16 v196.h, v159.h, v158.h
	v_and_b16 v158.h, 0xff, v201.l
	v_lshrrev_b32_e32 v200, 24, v201
	v_or_b16 v197.l, v160.l, v159.l
	v_lshlrev_b16 v159.l, 8, v209.l
	v_lshrrev_b32_e32 v160, 8, v201
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v197.h, v157.l, v159.l
	v_lshlrev_b16 v159.l, 8, v198.l
	v_and_b16 v157.l, 0xff, v201.h
	v_lshrrev_b32_e32 v201, 8, v205
	v_or_b16 v198.l, v157.h, v159.l
	v_lshlrev_b16 v159.l, 8, v206.l
	v_and_b16 v157.h, 0xff, v204.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v198.h, v158.l, v159.l
	v_lshlrev_b16 v158.l, 8, v160.l
	v_lshrrev_b32_e32 v159, 8, v204
	v_lshrrev_b32_e32 v160, 24, v204
	v_or_b16 v199.l, v158.h, v158.l
	v_lshlrev_b16 v158.h, 8, v200.l
	v_and_b16 v158.l, 0xff, v204.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v199.h, v157.l, v158.h
	v_lshlrev_b16 v157.l, 8, v159.l
	v_lshrrev_b32_e32 v159, 24, v205
	v_or_b16 v200.l, v157.h, v157.l
	v_lshlrev_b16 v157.l, 8, v160.l
	v_and_b16 v157.h, 0xff, v205.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v158.h, 8, v159.l
	v_or_b16 v200.h, v158.l, v157.l
	v_and_b16 v157.l, 0xff, v205.l
	v_lshlrev_b16 v158.l, 8, v201.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v201.h, v157.h, v158.h
	v_or_b16 v201.l, v157.l, v158.l
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_2addr_stride64_b64 v[157:160], v183 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v192, v194
	ds_store_b16_d16_hi v192, v194 offset:32
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v194, s45, v202
	v_add_nc_u32_e32 v202, s45, v203
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_store_b16 v192, v195 offset:64
	ds_store_b16_d16_hi v192, v195 offset:96
	ds_store_b16 v184, v196
	ds_store_b16_d16_hi v184, v196 offset:32
	ds_store_b16 v184, v197 offset:64
	ds_store_b16_d16_hi v184, v197 offset:96
	ds_store_b16 v185, v198
	ds_store_b16_d16_hi v185, v198 offset:32
	ds_store_b16 v185, v199 offset:64
	ds_store_b16_d16_hi v185, v199 offset:96
	ds_store_b16 v186, v200
	ds_store_b16_d16_hi v186, v200 offset:32
	ds_store_b16 v186, v201 offset:64
	ds_store_b16_d16_hi v186, v201 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v194, 0x80000000, v194, vcc_lo
	v_cndmask_b32_e64 v202, 0x80000000, v202, s0
	s_clause 0x1
	buffer_load_b128 v[194:197], v194, s[8:11], 0 offen
	buffer_load_b128 v[198:201], v202, s[8:11], 0 offen
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[202:205], v193 offset1:8
	ds_load_2addr_stride64_b64 v[206:209], v187 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[202:203], v[153:154], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[204:205], v[153:154], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[202:203], v[155:156], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[204:205], v[155:156], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[202:203], v[149:150], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[204:205], v[149:150], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[202:203], v[151:152], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[204:205], v[151:152], v[121:128] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[202:205], v188 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[206:207], v[145:146], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[208:209], v[145:146], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[206:207], v[147:148], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[208:209], v[147:148], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[206:207], v[141:142], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[208:209], v[141:142], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[206:207], v[143:144], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[208:209], v[143:144], v[121:128] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[206:209], v189 offset1:8
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[65:72], v[202:203], v[137:138], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[202:203], v[139:140], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[202:203], v[133:134], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[202:203], v[135:136], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[204:205], v[137:138], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[204:205], v[139:140], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[204:205], v[133:134], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[204:205], v[135:136], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[206:207], v[129:130], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[206:207], v[131:132], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[206:207], v[157:158], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[206:207], v[159:160], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[208:209], v[129:130], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[208:209], v[131:132], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[208:209], v[157:158], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[208:209], v[159:160], v[121:128] neg_lo:[1,1,0]
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt vmcnt(0)
	v_perm_b32 v202, v198, v194, 0x5010400
	v_perm_b32 v198, v198, v194, 0x7030602
	v_perm_b32 v203, v199, v195, 0x5010400
	v_perm_b32 v205, v201, v197, 0x5010400
	v_perm_b32 v206, v201, v197, 0x7030602
	v_and_b16 v194.l, 0xff, v202.l
	v_lshrrev_b32_e32 v197, 8, v202
	v_lshrrev_b32_e32 v201, 24, v202
	v_and_b16 v194.h, 0xff, v202.h
	v_lshrrev_b32_e32 v202, 8, v198
	v_perm_b32 v199, v199, v195, 0x7030602
	v_perm_b32 v204, v200, v196, 0x5010400
	v_perm_b32 v200, v200, v196, 0x7030602
	v_and_b16 v195.l, 0xff, v198.l
	v_lshrrev_b32_e32 v207, 24, v198
	v_and_b16 v195.h, 0xff, v198.h
	v_lshrrev_b32_e32 v198, 8, v203
	v_lshlrev_b16 v196.h, 8, v197.l
	v_lshrrev_b32_e32 v208, 24, v203
	v_lshlrev_b16 v197.h, 8, v202.l
	v_and_b16 v196.l, 0xff, v203.l
	v_lshlrev_b16 v197.l, 8, v201.l
	v_or_b16 v194.l, v194.l, v196.h
	v_and_b16 v196.h, 0xff, v203.h
	v_or_b16 v195.l, v195.l, v197.h
	v_lshrrev_b32_e32 v201, 8, v199
	v_lshlrev_b16 v197.h, 8, v207.l
	v_lshrrev_b32_e32 v202, 24, v199
	v_lshlrev_b16 v198.l, 8, v198.l
	v_lshlrev_b16 v198.h, 8, v208.l
	v_lshrrev_b32_e32 v203, 8, v204
	v_or_b16 v194.h, v194.h, v197.l
	v_and_b16 v197.l, 0xff, v199.l
	v_or_b16 v195.h, v195.h, v197.h
	v_and_b16 v197.h, 0xff, v199.h
	v_or_b16 v196.l, v196.l, v198.l
	v_and_b16 v198.l, 0xff, v204.l
	v_or_b16 v196.h, v196.h, v198.h
	v_lshlrev_b16 v198.h, 8, v201.l
	v_lshrrev_b32_e32 v201, 24, v204
	v_lshlrev_b16 v199.l, 8, v202.l
	v_lshlrev_b16 v199.h, 8, v203.l
	v_lshrrev_b32_e32 v202, 8, v200
	v_or_b16 v197.l, v197.l, v198.h
	v_and_b16 v198.h, 0xff, v204.h
	v_or_b16 v197.h, v197.h, v199.l
	v_and_b16 v199.l, 0xff, v200.l
	v_or_b16 v198.l, v198.l, v199.h
	v_lshlrev_b16 v199.h, 8, v201.l
	v_lshrrev_b32_e32 v201, 24, v200
	v_lshlrev_b16 v200.l, 8, v202.l
	v_lshrrev_b32_e32 v202, 8, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v198.h, v198.h, v199.h
	v_and_b16 v199.h, 0xff, v200.h
	v_or_b16 v199.l, v199.l, v200.l
	v_lshlrev_b16 v200.l, 8, v201.l
	v_lshlrev_b16 v200.h, 8, v202.l
	v_lshrrev_b32_e32 v201, 24, v205
	v_lshrrev_b32_e32 v202, 24, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v199.h, v199.h, v200.l
	v_and_b16 v200.l, 0xff, v205.l
	v_lshlrev_b16 v201.l, 8, v201.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v202.l, 8, v202.l
	v_or_b16 v200.l, v200.l, v200.h
	v_and_b16 v200.h, 0xff, v205.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v200.h, v200.h, v201.l
	v_lshrrev_b32_e32 v201, 8, v206
	v_and_b16 v201.h, 0xff, v206.l
	v_lshlrev_b16 v201.l, 8, v201.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v201.l, v201.h, v201.l
	v_and_b16 v201.h, 0xff, v206.h
	v_or_b16 v201.h, v201.h, v202.l
	ds_store_b16 v192, v194
	ds_store_b16_d16_hi v192, v194 offset:32
	ds_store_b16 v192, v195 offset:64
	ds_store_b16_d16_hi v192, v195 offset:96
	ds_store_b16 v184, v196
	ds_store_b16_d16_hi v184, v196 offset:32
	ds_store_b16 v184, v197 offset:64
	ds_store_b16_d16_hi v184, v197 offset:96
	ds_store_b16 v185, v198
	ds_store_b16_d16_hi v185, v198 offset:32
	ds_store_b16 v185, v199 offset:64
	ds_store_b16_d16_hi v185, v199 offset:96
	ds_store_b16 v186, v200
	ds_store_b16_d16_hi v186, v200 offset:32
	ds_store_b16 v186, v201 offset:64
	ds_store_b16_d16_hi v186, v201 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[194:197], v193 offset1:8
	ds_load_2addr_stride64_b64 v[198:201], v187 offset1:8
	ds_load_2addr_stride64_b64 v[202:205], v188 offset1:8
	ds_load_2addr_stride64_b64 v[206:209], v189 offset1:8
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[194:195], v[153:154], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[153:154], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[194:195], v[155:156], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[196:197], v[155:156], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[194:195], v[149:150], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[196:197], v[149:150], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[194:195], v[151:152], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[196:197], v[151:152], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[198:199], v[145:146], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[200:201], v[145:146], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[198:199], v[147:148], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[200:201], v[147:148], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[198:199], v[141:142], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[200:201], v[141:142], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[198:199], v[143:144], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[200:201], v[143:144], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[202:203], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[204:205], v[137:138], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[202:203], v[139:140], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[204:205], v[139:140], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[202:203], v[133:134], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[204:205], v[133:134], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[202:203], v[135:136], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[204:205], v[135:136], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[206:207], v[129:130], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[208:209], v[129:130], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[206:207], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[208:209], v[131:132], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[206:207], v[157:158], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[208:209], v[157:158], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[206:207], v[159:160], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[208:209], v[159:160], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v150, v65
	v_cvt_f32_i32_e32 v151, v66
	v_cvt_f32_i32_e32 v153, v67
	v_cvt_f32_i32_e32 v152, v68
	v_cvt_f32_i32_e32 v146, v69
	v_cvt_f32_i32_e32 v147, v70
	v_cvt_f32_i32_e32 v148, v71
	v_cvt_f32_i32_e32 v149, v72
	v_cvt_f32_i32_e32 v155, v73
	v_cvt_f32_i32_e32 v142, v74
	v_cvt_f32_i32_e32 v143, v75
	v_cvt_f32_i32_e32 v144, v76
	v_cvt_f32_i32_e32 v145, v77
	v_cvt_f32_i32_e32 v158, v78
	v_cvt_f32_i32_e32 v157, v79
	v_cvt_f32_i32_e32 v156, v80
	v_cvt_f32_i32_e32 v138, v81
	v_cvt_f32_i32_e32 v139, v82
	v_cvt_f32_i32_e32 v141, v83
	v_cvt_f32_i32_e32 v140, v84
	v_cvt_f32_i32_e32 v134, v85
	v_cvt_f32_i32_e32 v135, v86
	v_cvt_f32_i32_e32 v136, v87
	v_cvt_f32_i32_e32 v137, v88
	v_cvt_f32_i32_e32 v159, v89
	v_cvt_f32_i32_e32 v130, v90
	v_cvt_f32_i32_e32 v131, v91
	v_cvt_f32_i32_e32 v132, v92
	v_cvt_f32_i32_e32 v133, v93
	v_cvt_f32_i32_e32 v162, v94
	v_cvt_f32_i32_e32 v161, v95
	v_cvt_f32_i32_e32 v160, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v129, v99
	v_cvt_f32_i32_e32 v99, v100
	v_cvt_f32_i32_e32 v89, v101
	v_cvt_f32_i32_e32 v90, v102
	v_cvt_f32_i32_e32 v91, v103
	v_cvt_f32_i32_e32 v92, v104
	v_cvt_f32_i32_e32 v163, v105
	v_cvt_f32_i32_e32 v81, v106
	v_cvt_f32_i32_e32 v82, v107
	v_cvt_f32_i32_e32 v83, v108
	v_cvt_f32_i32_e32 v84, v109
	v_cvt_f32_i32_e32 v166, v110
	v_cvt_f32_i32_e32 v165, v111
	v_cvt_f32_i32_e32 v164, v112
	v_cvt_f32_i32_e32 v73, v113
	v_cvt_f32_i32_e32 v74, v114
	v_cvt_f32_i32_e32 v76, v115
	v_cvt_f32_i32_e32 v75, v116
	v_cvt_f32_i32_e32 v69, v117
	v_cvt_f32_i32_e32 v70, v118
	v_cvt_f32_i32_e32 v71, v119
	v_cvt_f32_i32_e32 v72, v120
	v_cvt_f32_i32_e32 v167, v121
	v_cvt_f32_i32_e32 v65, v122
	v_cvt_f32_i32_e32 v67, v123
	v_cvt_f32_i32_e32 v68, v124
	v_cvt_f32_i32_e32 v66, v125
	v_cvt_f32_i32_e32 v170, v126
	v_cvt_f32_i32_e32 v169, v127
	v_cvt_f32_i32_e32 v168, v128
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v126, v1
	v_cvt_f32_i32_e32 v127, v2
	v_cvt_f32_i32_e32 v154, v3
	v_cvt_f32_i32_e32 v128, v4
	v_cvt_f32_i32_e32 v121, v5
	v_cvt_f32_i32_e32 v122, v6
	v_cvt_f32_i32_e32 v123, v7
	v_cvt_f32_i32_e32 v124, v8
	v_cvt_f32_i32_e32 v2, v9
	v_cvt_f32_i32_e32 v104, v10
	v_cvt_f32_i32_e32 v105, v11
	v_cvt_f32_i32_e32 v106, v12
	v_cvt_f32_i32_e32 v107, v13
	v_cvt_f32_i32_e32 v5, v14
	v_cvt_f32_i32_e32 v4, v15
	v_cvt_f32_i32_e32 v3, v16
	v_cvt_f32_i32_e32 v108, v17
	v_cvt_f32_i32_e32 v109, v18
	v_cvt_f32_i32_e32 v115, v19
	v_cvt_f32_i32_e32 v111, v20
	v_cvt_f32_i32_e32 v116, v21
	v_cvt_f32_i32_e32 v117, v22
	v_cvt_f32_i32_e32 v118, v23
	v_cvt_f32_i32_e32 v119, v24
	v_cvt_f32_i32_e32 v6, v25
	v_cvt_f32_i32_e32 v110, v26
	v_cvt_f32_i32_e32 v112, v27
	v_cvt_f32_i32_e32 v113, v28
	v_cvt_f32_i32_e32 v114, v29
	v_cvt_f32_i32_e32 v9, v30
	v_cvt_f32_i32_e32 v8, v31
	v_cvt_f32_i32_e32 v7, v32
	v_cvt_f32_i32_e32 v100, v33
	v_cvt_f32_i32_e32 v101, v34
	v_cvt_f32_i32_e32 v103, v35
	v_cvt_f32_i32_e32 v102, v36
	v_cvt_f32_i32_e32 v93, v37
	v_cvt_f32_i32_e32 v94, v38
	v_cvt_f32_i32_e32 v95, v39
	v_cvt_f32_i32_e32 v96, v40
	v_cvt_f32_i32_e32 v10, v41
	v_cvt_f32_i32_e32 v85, v42
	v_cvt_f32_i32_e32 v86, v43
	v_cvt_f32_i32_e32 v87, v44
	v_cvt_f32_i32_e32 v88, v45
	v_cvt_f32_i32_e32 v13, v46
	v_cvt_f32_i32_e32 v12, v47
	v_cvt_f32_i32_e32 v11, v48
	v_cvt_f32_i32_e32 v77, v49
	v_cvt_f32_i32_e32 v78, v50
	v_cvt_f32_i32_e32 v80, v51
	v_cvt_f32_i32_e32 v79, v52
	v_cvt_f32_i32_e32 v51, v53
	v_cvt_f32_i32_e32 v52, v54
	v_cvt_f32_i32_e32 v53, v55
	v_cvt_f32_i32_e32 v54, v56
	v_cvt_f32_i32_e32 v14, v57
	v_cvt_f32_i32_e32 v47, v58
	v_cvt_f32_i32_e32 v48, v59
	v_cvt_f32_i32_e32 v49, v60
	v_cvt_f32_i32_e32 v50, v61
	v_cvt_f32_i32_e32 v17, v62
	v_cvt_f32_i32_e32 v16, v63
	v_cvt_f32_i32_e32 v15, v64
	v_dual_mov_b32 v30, s34 :: v_dual_mov_b32 v1, v176
	v_mov_b32_e32 v43, v175
	v_mov_b32_e32 v31, v174
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v32, 63, v0
	v_lshrrev_b32_e32 v33, 4, v172
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v18, s0, s34, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s35, 0, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_mov_b32 s8, s20
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v1, 28, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[18:19]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[38:39], v[18:19]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v18, 48, v33
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s12, vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v18, s0, s34, v18
	v_add_co_ci_u32_e64 v19, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[18:19]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[38:39], v[18:19]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v18, 32, v33
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v18, s1, s34, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s35, 0, s1
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[18:19]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[38:39], v[18:19]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v18, 16, v33
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v18, s2, s34, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s35, 0, s2
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s1, vcc_lo, s1
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[18:19]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[38:39], v[18:19]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v18, s3, s34, v33
	v_add_co_ci_u32_e64 v19, null, s35, 0, s3
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[18:19]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[18:19]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v18, 48, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v18, s4, s34, v18
	v_add_co_ci_u32_e64 v19, null, s35, 0, s4
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s3, vcc_lo, s3
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[18:19]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[38:39], v[18:19]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v19, 32, v171
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v18, 1, v18
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v19, s4, s34, v19
	v_add_co_ci_u32_e64 v20, null, s35, 0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[19:20]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[19:20]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v20, 16, v171
	.loc	1 1114 36                       ; ragged.py:1114:36
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s4, s4, s5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v20, s5, s34, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s35, 0, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[36:37], v[20:21]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[38:39], v[20:21]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v20, 1, v20
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, s5, s6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v21, s6, s34, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v22, null, s35, 0, s6
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[36:37], v[21:22]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[21:22]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v21, 1, v21
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s7
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e64 v21, 0x80000000, v21, s6
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v125, 16, v21
	v_lshlrev_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	s_mov_b32 s4, 0x76543210
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	v_lshlrev_b32_e32 v55, 16, v18
	v_lshlrev_b32_e32 v120, 16, v20
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v39, v170, v55 :: v_dual_mul_f32 v26, v159, v120
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v42, v2, v125 :: v_dual_mul_f32 v57, v9, v120
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_or_b32_e32 v2, s33, v0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v29, v160, v120 :: v_dual_mul_f32 v20, v157, v125
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v58, v8, v120
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v18, v155, v125
	v_mul_f32_e32 v21, v156, v125
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v44, v5, v125 :: v_dual_mul_f32 v59, v7, v120
	v_dual_mul_f32 v56, v6, v120 :: v_dual_mul_f32 v157, v16, v55
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v27, v162, v120
	v_dual_mul_f32 v28, v161, v120 :: v_dual_mul_f32 v41, v168, v55
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v121, v121, v125
	v_mul_f32_e32 v123, v123, v125
	v_mul_f32_e32 v109, v109, v120
	v_mul_f32_e32 v117, v117, v120
	v_mul_f32_e32 v119, v119, v120
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v75, v75, v55
	v_mul_f32_e32 v73, v73, v55
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v79, v79, v55
	v_mul_f32_e32 v45, v4, v125
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v4, v172, 2, 0
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v155, v14, v55
	v_mul_f32_e32 v156, v17, v55
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v38, v167, v55
	v_mul_f32_e32 v40, v169, v55
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v108, v108, v120
	v_mul_f32_e32 v118, v118, v120
	v_mul_f32_e32 v114, v114, v120
	v_mul_f32_e32 v112, v112, v120
	v_mul_f32_e32 v110, v110, v120
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v74, v74, v55
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v78, v78, v55
	v_mul_f32_e32 v52, v52, v55
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v64, 16, v19
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v19, v158, v125
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v46, v3, v125
	v_mul_f32_e32 v158, v15, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v60, v10, v64
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_mad_u64_u32 v[9:10], null, s31, s30, v[2:3]
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshlrev_b32_e32 v3, 5, v0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v34, v163, v64
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v63, v11, v64
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v11, v172, 1, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v36, v165, v64 :: v_dual_and_b32 v3, 32, v3
	v_dual_mul_f32 v35, v166, v64 :: v_dual_lshlrev_b32 v2, 1, v9
	v_mul_f32_e32 v37, v164, v64
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v61, v13, v64
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v10, v4, v3, v1
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v97, v97, v64
	v_mul_f32_e32 v98, v98, v64
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v101, v101, v64
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v90, v90, v64
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v94, v94, v64
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v89, v89, v64
	v_mul_f32_e32 v91, v91, v64
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v93, v93, v64
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v82, v82, v64
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v86, v86, v64
	v_mul_f32_e32 v87, v87, v64
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v83, v83, v64
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v81, v81, v64 :: v_dual_lshlrev_b32 v2, 16, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v10, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[22:25], v11
	ds_load_b128 v[14:17], v11 offset:16
	ds_load_b128 v[1:4], v11 offset:512
	ds_load_b128 v[5:8], v11 offset:528
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v62, v12, v64
	v_mul_f32_e32 v116, v116, v120
	v_mul_f32_e32 v100, v100, v64
	v_dual_mul_f32 v102, v102, v64 :: v_dual_mul_f32 v53, v53, v55
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v73, v73, v22 :: v_dual_mul_f32 v74, v74, v23
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v34, v34, v1 :: v_dual_mul_f32 v169, v39, v6
	v_dual_mul_f32 v160, v19, v6 :: v_dual_mul_f32 v165, v28, v7
	v_dual_mul_f32 v162, v21, v8 :: v_dual_mul_f32 v35, v35, v6
	v_dual_mul_f32 v164, v27, v6 :: v_dual_mul_f32 v167, v36, v7
	.loc	1 1124 41                       ; ragged.py:1124:41
	v_add_lshl_u32 v6, v9, s28, 1
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v159, v18, v1
	v_mul_f32_e32 v161, v20, v7
	v_dual_mul_f32 v163, v26, v1 :: v_dual_mul_f32 v166, v29, v8
	v_mul_f32_e32 v1, v38, v1
	.loc	1 1124 41                       ; ragged.py:1124:41
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v168, v37, v8
	v_mul_f32_e32 v170, v40, v7
	v_mul_f32_e32 v174, v41, v8
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v82, v82, v3
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s8, s16
	.loc	1 1124 41                       ; ragged.py:1124:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_store_b32 v10, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v11
	ds_load_b128 v[18:21], v11 offset:16
	ds_load_b128 v[6:9], v11 offset:512
	ds_load_b128 v[10:13], v11 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v99, v99, v64
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v51, v51, v55
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp6:
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v108, v108, v26 :: v_dual_mul_f32 v109, v109, v27
	v_dual_mul_f32 v36, v42, v6 :: v_dual_mul_f32 v37, v44, v11
	v_dual_mul_f32 v41, v57, v11 :: v_dual_mul_f32 v42, v58, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v57, v63, v13 :: v_dual_mul_f32 v58, 0xbfb8aa3b, v36
	v_mul_f32_e32 v39, v46, v13
	v_mul_f32_e32 v44, v59, v13
	v_dual_mul_f32 v38, v45, v12 :: v_dual_mul_f32 v45, v60, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v40, v56, v6 :: v_dual_mul_f32 v13, v158, v13
	v_mul_f32_e32 v6, v155, v6
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v115, v115, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v116, v116, v18
	v_dual_mul_f32 v118, v118, v20 :: v_dual_mul_f32 v117, v117, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v36 :: v_dual_mul_f32 v119, v119, v21
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v110, v110, v7 :: v_dual_mul_f32 v113, v113, v120
	v_mul_f32_e32 v114, v114, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v112, v112, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v58, v59
	v_mul_f32_e32 v59, 0xbfb8aa3b, v37
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v46, v61, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v11, v156, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v37
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v59, v59, v60
	v_dual_mul_f32 v60, 0xbfb8aa3b, v38 :: v_dual_add_f32 v59, 1.0, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v60, v60
	v_ldexp_f32 v60, v60, v61
	v_mul_f32_e32 v61, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v56, v62, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v61, v61
	v_ldexp_f32 v61, v61, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v62, 0xbfb8aa3b, v40 :: v_dual_add_f32 v61, 1.0, v61
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v40
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v62, v62, v63
	v_mul_f32_e32 v63, 0xbfb8aa3b, v41
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v12, v157, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v155, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v41
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v63, v63, v155
	v_mul_f32_e32 v155, 0xbfb8aa3b, v42
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v155
	v_cndmask_b32_e64 v155, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v156, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v155, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v155, v155
	v_ldexp_f32 v155, v155, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v156, 0xbfb8aa3b, v44 :: v_dual_add_f32 v155, 1.0, v155
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v156
	v_cndmask_b32_e64 v156, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v157, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v156, 0xbfb8aa3b, v44
	v_exp_f32_e32 v156, v156
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v156, v156, v157
	v_mul_f32_e32 v157, 0xbfb8aa3b, v45
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v157
	v_cndmask_b32_e64 v157, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v158, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v157, 0xbfb8aa3b, v45
	v_exp_f32_e32 v157, v157
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v157, v157, v158
	v_dual_mul_f32 v158, 0xbfb8aa3b, v46 :: v_dual_add_f32 v157, 1.0, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v158
	v_cndmask_b32_e64 v158, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v175, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v158, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v158, v158
	v_ldexp_f32 v158, v158, v175
	v_mul_f32_e32 v175, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	v_cndmask_b32_e64 v175, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v176, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v175, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v175, v175
	v_ldexp_f32 v175, v175, v176
	v_mul_f32_e32 v176, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v58, 1.0, v58 :: v_dual_add_f32 v175, 1.0, v175
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v176
	v_cndmask_b32_e64 v176, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v177, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v176, 0xbfb8aa3b, v57
	v_exp_f32_e32 v176, v176
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v176, v176, v177
	v_mul_f32_e32 v177, 0xbfb8aa3b, v6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v177
	v_cndmask_b32_e64 v177, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v178, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v177, 0xbfb8aa3b, v6
	v_exp_f32_e32 v177, v177
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v177, v177, v178
	v_dual_mul_f32 v178, 0xbfb8aa3b, v11 :: v_dual_add_f32 v177, 1.0, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	v_cndmask_b32_e64 v178, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v179, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v178, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v178, v178
	v_ldexp_f32 v178, v178, v179
	v_mul_f32_e32 v179, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	v_cndmask_b32_e64 v179, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v180, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v179, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v179, v179
	v_ldexp_f32 v179, v179, v180
	v_mul_f32_e32 v180, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v60, 1.0, v60 :: v_dual_add_f32 v179, 1.0, v179
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	v_cndmask_b32_e64 v180, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v181, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v180, 0xbfb8aa3b, v13
	v_exp_f32_e32 v180, v180
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v180, v180, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v181, null, v58, v58, v36
	v_rcp_f32_e32 v182, v181
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v183, -v181, v182, 1.0
	v_fmac_f32_e32 v182, v183, v182
	v_div_scale_f32 v183, vcc_lo, v36, v58, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v184, v183, v182
	v_fma_f32 v185, -v181, v184, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v184, v185, v182
	v_fma_f32 v181, -v181, v184, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v181, v181, v182, v184
	v_div_fixup_f32 v36, v181, v58, v36
	v_div_scale_f32 v58, null, v59, v59, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v181, v58
	v_fma_f32 v182, -v58, v181, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v62, 1.0, v62 :: v_dual_fmac_f32 v181, v182, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v182, vcc_lo, v37, v59, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v156, 1.0, v156 :: v_dual_mul_f32 v183, v182, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v184, -v58, v183, v182
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v158, 1.0, v158 :: v_dual_fmac_f32 v183, v184, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v58, v183, v182
	v_div_fmas_f32 v58, v58, v181, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v37, v58, v59, v37
	v_div_scale_f32 v58, null, v60, v60, v38
	v_rcp_f32_e32 v59, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v181, -v58, v59, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v176, 1.0, v176 :: v_dual_fmac_f32 v59, v181, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v181, vcc_lo, v38, v60, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v182, v181, v59
	v_fma_f32 v183, -v58, v182, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v182, v183, v59
	v_fma_f32 v58, -v58, v182, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v58, v58, v59, v182
	v_div_fixup_f32 v38, v58, v60, v38
	v_div_scale_f32 v58, null, v61, v61, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v59, v58
	v_fma_f32 v60, -v58, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v178, 1.0, v178 :: v_dual_fmac_f32 v59, v60, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, vcc_lo, v39, v61, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v180, 1.0, v180 :: v_dual_mul_f32 v181, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v182, -v58, v181, v60
	v_fmac_f32_e32 v181, v182, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v58, v181, v60
	v_div_fmas_f32 v58, v58, v59, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v39, v58, v61, v39
	v_div_scale_f32 v58, null, v62, v62, v40
	v_rcp_f32_e32 v59, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v58, v59, 1.0
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v60, vcc_lo, v40, v62, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v61, v60, v59
	v_fma_f32 v181, -v58, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v181, v59
	v_fma_f32 v58, -v58, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v58, v58, v59, v61
	v_div_fixup_f32 v40, v58, v62, v40
	v_div_scale_f32 v58, null, v63, v63, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v59, v58
	v_fma_f32 v60, -v58, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v60, vcc_lo, v41, v63, v41
	v_mul_f32_e32 v61, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v58, v61, v60
	v_fmac_f32_e32 v61, v62, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v58, v61, v60
	v_div_fmas_f32 v58, v58, v59, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v58, v58, v63, v41
	v_div_scale_f32 v41, null, v155, v155, v42
	v_rcp_f32_e32 v59, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v41, v59, 1.0
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v60, vcc_lo, v42, v155, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v61, v60, v59
	v_fma_f32 v62, -v41, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v62, v59
	v_fma_f32 v41, -v41, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v59, v61
	v_div_fixup_f32 v59, v41, v155, v42
	v_div_scale_f32 v41, null, v156, v156, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v60, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v60, v42
	v_div_scale_f32 v60, vcc_lo, v44, v156, v44
	v_mul_f32_e32 v61, v60, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v41, v61, v60
	v_fmac_f32_e32 v61, v62, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v61, v60
	v_div_fmas_f32 v41, v41, v42, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v60, v41, v156, v44
	v_div_scale_f32 v41, null, v157, v157, v45
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, vcc_lo, v45, v157, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v61, v44, v42
	v_fma_f32 v62, -v41, v61, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v62, v42
	v_fma_f32 v41, -v41, v61, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v61
	v_div_fixup_f32 v61, v41, v157, v45
	v_div_scale_f32 v41, null, v158, v158, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v44, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, vcc_lo, v46, v158, v46
	v_mul_f32_e32 v45, v44, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v41, v45, v44
	v_fmac_f32_e32 v45, v62, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v45, v44
	v_div_fmas_f32 v41, v41, v42, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v62, v41, v158, v46
	v_div_scale_f32 v41, null, v175, v175, v56
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, vcc_lo, v56, v175, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v42
	v_fma_f32 v46, -v41, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v42
	v_fma_f32 v41, -v41, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v45
	v_div_fixup_f32 v56, v41, v175, v56
	v_div_scale_f32 v41, null, v176, v176, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v44, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, vcc_lo, v57, v176, v57
	v_mul_f32_e32 v45, v44, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v41, v45, v44
	v_fmac_f32_e32 v45, v46, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v45, v44
	v_div_fmas_f32 v41, v41, v42, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v57, v41, v176, v57
	v_div_scale_f32 v41, null, v177, v177, v6
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, vcc_lo, v6, v177, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v42
	v_fma_f32 v46, -v41, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v42
	v_fma_f32 v41, -v41, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v45
	v_div_fixup_f32 v6, v41, v177, v6
	v_div_scale_f32 v41, null, v178, v178, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v44, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, vcc_lo, v11, v178, v11
	v_mul_f32_e32 v45, v44, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v41, v45, v44
	v_fmac_f32_e32 v45, v46, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v45, v44
	v_div_fmas_f32 v41, v41, v42, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v11, v41, v178, v11
	v_div_scale_f32 v41, null, v179, v179, v12
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, vcc_lo, v12, v179, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v42
	v_fma_f32 v46, -v41, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v45, v46, v42 :: v_dual_mul_f32 v46, v159, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v35, v62
	.loc	1 1117 21 is_stmt 1             ; ragged.py:1117:21
	v_dual_mul_f32 v62, v126, v125 :: v_dual_mul_f32 v35, v167, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v41, v45, v44
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v56, v152, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v41, v42, v45
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v56, v56, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v41, v179, v12
	v_div_scale_f32 v12, null, v180, v180, v13
	v_rcp_f32_e32 v41, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v12, v41, 1.0
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v13, v180, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v42, v41
	v_fma_f32 v45, -v12, v44, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v45, v41
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v45, v160, v37
	v_mul_f32_e32 v37, v34, v61
	v_mul_f32_e32 v34, v168, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v12, v44, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v162, v39
	v_mul_f32_e32 v39, v165, v59
	.loc	1 1117 21 is_stmt 1             ; ragged.py:1117:21
	v_mul_f32_e32 v59, v154, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v12, v12, v41, v44
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v44, v161, v38
	v_mul_f32_e32 v38, v166, v60
	.loc	1 1117 21 is_stmt 1             ; ragged.py:1117:21
	v_dual_mul_f32 v60, v128, v125 :: v_dual_mul_f32 v59, v59, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v155, v12, v180, v13
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v12, v169, v11
	v_dual_mul_f32 v11, v170, v63 :: v_dual_mul_f32 v60, v60, v29
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_mul_f32_e32 v57, v151, v125
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v61, v127, v125
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v41, v163, v40 :: v_dual_mul_f32 v40, v164, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v58, v150, v125 :: v_dual_mul_f32 v63, v57, v23
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v57, v62, v26
	v_dual_mul_f32 v61, v61, v27 :: v_dual_mul_f32 v126, 0xbfb8aa3b, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v62, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v58, v58, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v128, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v127, 0xbfb8aa3b, v61
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v128
	v_cndmask_b32_e64 v128, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v127
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v13, v1, v6
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_mul_f32_e32 v1, v153, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v128, 0xbfb8aa3b, v57
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v6, v174, v155
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v127, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v128, v128
	v_fmac_f32_e32 v127, 0xbfb8aa3b, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v127, v127
	v_ldexp_f32 v128, v128, v150
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v126
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v128, 1.0, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v127, v127, v150
	v_cndmask_b32_e64 v126, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v127, 1.0, v127 :: v_dual_fmac_f32 v126, 0xbfb8aa3b, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v126, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v59
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v126, v126, v150
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v126, 1.0, v126
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v62, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v150, null, v128, v128, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v151, v150
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v152, -v150, v151, 1.0
	v_fmac_f32_e32 v151, v152, v151
	v_div_scale_f32 v152, vcc_lo, v57, v128, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v153, v152, v151
	v_fma_f32 v154, -v150, v153, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v153, v154, v151
	v_fma_f32 v150, -v150, v153, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v150, v150, v151, v153
	v_div_fixup_f32 v128, v150, v128, v57
	v_div_scale_f32 v57, null, v127, v127, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v150, v57
	v_fma_f32 v151, -v57, v150, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	v_dual_mul_f32 v1, v1, v24 :: v_dual_fmac_f32 v150, v151, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v151, vcc_lo, v61, v127, v61
	v_mul_f32_e32 v152, v151, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v153, -v57, v152, v151
	v_fmac_f32_e32 v152, v153, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v57, v152, v151
	v_div_fmas_f32 v57, v57, v150, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v61, v57, v127, v61
	v_div_scale_f32 v57, null, v126, v126, v60
	v_rcp_f32_e32 v127, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v150, -v57, v127, 1.0
	v_fmac_f32_e32 v127, v150, v127
	v_div_scale_f32 v150, vcc_lo, v60, v126, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v151, v150, v127
	v_fma_f32 v152, -v57, v151, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v151, v152, v127
	v_fma_f32 v57, -v57, v151, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v57, v57, v127, v151
	v_div_fixup_f32 v60, v57, v126, v60
	v_div_scale_f32 v57, null, v62, v62, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v56, v56, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v126, v57
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_mul_f32_e32 v60, v147, v125
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v127, -v57, v126, 1.0
	v_fmac_f32_e32 v126, v127, v126
	v_div_scale_f32 v127, vcc_lo, v59, v62, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v150, v127, v126
	v_fma_f32 v151, -v57, v150, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v150, v151, v126
	v_fma_f32 v57, -v57, v150, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v57, v57, v126, v150
	v_div_fixup_f32 v57, v57, v62, v59
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v59, v63, v61
	v_dual_mul_f32 v61, v58, v128 :: v_dual_mul_f32 v58, v148, v125
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_mul_f32_e32 v62, v146, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v1, v57
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v1, v149, v125
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v63, v124, v125 :: v_dual_mul_f32 v124, v62, v14
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v62, v60, v15
	v_mul_f32_e32 v60, v58, v16
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v58, v121, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v128, 0xbfb8aa3b, v58 :: v_dual_mul_f32 v63, v63, v21
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v122, v122, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v128
	v_cndmask_b32_e64 v128, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, 0xbfb8aa3b, v58
	v_exp_f32_e32 v128, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v128, v128, v146
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v121, v122, v19 :: v_dual_mul_f32 v122, v123, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v123, 0xbfb8aa3b, v63 :: v_dual_add_f32 v128, 1.0, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v127, 0xbfb8aa3b, v121 :: v_dual_mul_f32 v126, 0xbfb8aa3b, v122
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v127
	v_cndmask_b32_e64 v127, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v126
	v_fmac_f32_e32 v127, 0xbfb8aa3b, v121
	v_cndmask_b32_e64 v126, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v127, v127
	v_fmac_f32_e32 v126, 0xbfb8aa3b, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v126, v126
	v_ldexp_f32 v127, v127, v146
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v123
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v127, 1.0, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v123, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v126, v126, v146
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, vcc_lo
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	v_mul_f32_e32 v1, v1, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v123, 0xbfb8aa3b, v63 :: v_dual_add_f32 v126, 1.0, v126
	v_exp_f32_e32 v123, v123
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v123, v123, v146
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v146, null, v128, v128, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v123, 1.0, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v147, v146
	v_fma_f32 v148, -v146, v147, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v147, v148, v147
	v_div_scale_f32 v148, vcc_lo, v58, v128, v58
	v_mul_f32_e32 v149, v148, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v150, -v146, v149, v148
	v_fmac_f32_e32 v149, v150, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v146, -v146, v149, v148
	v_div_fmas_f32 v146, v146, v147, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v128, v146, v128, v58
	v_div_scale_f32 v58, null, v127, v127, v121
	v_rcp_f32_e32 v146, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v147, -v58, v146, 1.0
	v_fmac_f32_e32 v146, v147, v146
	v_div_scale_f32 v147, vcc_lo, v121, v127, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v148, v147, v146
	v_fma_f32 v149, -v58, v148, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v148, v149, v146
	v_fma_f32 v58, -v58, v148, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v58, v58, v146, v148
	v_div_fixup_f32 v121, v58, v127, v121
	v_div_scale_f32 v58, null, v126, v126, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v62, v121
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v127, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v146, -v58, v127, 1.0
	v_fmac_f32_e32 v127, v146, v127
	v_div_scale_f32 v146, vcc_lo, v122, v126, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v147, v146, v127
	v_fma_f32 v148, -v58, v147, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v147, v148, v127
	v_fma_f32 v58, -v58, v147, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v58, v58, v127, v147
	v_div_fixup_f32 v122, v58, v126, v122
	v_div_scale_f32 v58, null, v123, v123, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v60, v122
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v126, v58
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_mul_f32_e32 v122, v144, v125
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v127, -v58, v126, 1.0
	v_fmac_f32_e32 v126, v127, v126
	v_div_scale_f32 v127, vcc_lo, v63, v123, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v146, v127, v126
	v_fma_f32 v147, -v58, v146, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v146, v147, v126
	v_fma_f32 v58, -v58, v146, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v58, v58, v126, v146
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v126, v105, v125
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v121, v145, v125
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v105, v122, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v58, v58, v123, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v122, v126, v8 :: v_dual_mul_f32 v107, v107, v125
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v58, v1, v58 :: v_dual_mul_f32 v1, v142, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v126, 0xbfb8aa3b, v122
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_mul_f32_e32 v107, v107, v10
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v123, v143, v125
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v63, v124, v128 :: v_dual_mul_f32 v124, v106, v125
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v125, v104, v125
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v104, v121, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v121, v124, v9 :: v_dual_mul_f32 v124, 0xbfb8aa3b, v107
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v106, v123, v3
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v123, v125, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v125, 0xbfb8aa3b, v121
	v_mul_f32_e32 v127, 0xbfb8aa3b, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v127
	v_cndmask_b32_e64 v127, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v126
	v_fmac_f32_e32 v127, 0xbfb8aa3b, v123
	v_cndmask_b32_e64 v126, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v127, v127
	v_fmac_f32_e32 v126, 0xbfb8aa3b, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v126, v126
	v_ldexp_f32 v127, v127, v128
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v125
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v127, 1.0, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v126, v126, v128
	v_cndmask_b32_e64 v125, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v126, 1.0, v126 :: v_dual_fmac_f32 v125, 0xbfb8aa3b, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v124, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v125, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v124, 0xbfb8aa3b, v107
	v_exp_f32_e32 v124, v124
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v125, v125, v128
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v125, 1.0, v125
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v124, v124, v128
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v128, null, v127, v127, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	v_dual_mul_f32 v1, v1, v2 :: v_dual_add_f32 v124, 1.0, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v142, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v128, v142, 1.0
	v_fmac_f32_e32 v142, v143, v142
	v_div_scale_f32 v143, vcc_lo, v123, v127, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v144, v143, v142
	v_fma_f32 v145, -v128, v144, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v144, v145, v142
	v_fma_f32 v128, -v128, v144, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v128, v128, v142, v144
	v_div_fixup_f32 v123, v128, v127, v123
	v_div_scale_f32 v127, null, v126, v126, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v128, v127
	v_fma_f32 v142, -v127, v128, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, v142, v128
	v_div_scale_f32 v142, vcc_lo, v122, v126, v122
	v_mul_f32_e32 v143, v142, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v127, v143, v142
	v_fmac_f32_e32 v143, v144, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v127, -v127, v143, v142
	v_div_fmas_f32 v127, v127, v128, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v122, v127, v126, v122
	v_div_scale_f32 v126, null, v125, v125, v121
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v106, v106, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v127, v126
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_mul_f32_e32 v122, v139, v120
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v122, v122, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v128, -v126, v127, 1.0
	v_fmac_f32_e32 v127, v128, v127
	v_div_scale_f32 v128, vcc_lo, v121, v125, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v128, v127
	v_fma_f32 v143, -v126, v142, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v127
	v_fma_f32 v126, -v126, v142, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v126, v126, v127, v142
	v_div_fixup_f32 v121, v126, v125, v121
	v_div_scale_f32 v125, null, v124, v124, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v105, v105, v121
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v126, v125
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v127, -v125, v126, 1.0
	v_fmac_f32_e32 v126, v127, v126
	v_div_scale_f32 v127, vcc_lo, v107, v124, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v128, v127, v126
	v_fma_f32 v142, -v125, v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, v142, v126
	v_fma_f32 v125, -v125, v128, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v127, 0xbfb8aa3b, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v125, v125, v126, v128
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v126, 0xbfb8aa3b, v109
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v127
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_mul_f32_e32 v115, v115, v28
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v121, v140, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v107, v125, v124, v107
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cndmask_b32_e64 v127, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v126
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v104, v104, v107
	v_mul_f32_e32 v107, v1, v123
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_mul_f32_e32 v123, v138, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v127, 0xbfb8aa3b, v108
	v_cndmask_b32_e64 v126, 0, 0x42800000, vcc_lo
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v111, v111, v120 :: v_dual_mul_f32 v124, 0xbfb8aa3b, v115
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v1, v141, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v127, v127
	v_fmac_f32_e32 v126, 0xbfb8aa3b, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v111, v111, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v126, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v125, 0xbfb8aa3b, v111
	v_ldexp_f32 v127, v127, v128
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v125
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v127, 1.0, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v126, v126, v128
	v_cndmask_b32_e64 v125, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	v_dual_mul_f32 v121, v121, v25 :: v_dual_add_f32 v126, 1.0, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v125, 0xbfb8aa3b, v111
	v_cndmask_b32_e64 v124, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v125, v125
	v_fmac_f32_e32 v124, 0xbfb8aa3b, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v124, v124
	v_ldexp_f32 v125, v125, v128
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v125, 1.0, v125
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v124, v124, v128
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v128, null, v127, v127, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	v_dual_mul_f32 v123, v123, v22 :: v_dual_add_f32 v124, 1.0, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v138, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v128, v138, 1.0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v1, v1, v24 :: v_dual_fmac_f32 v138, v139, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v139, vcc_lo, v108, v127, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v139, v138
	v_fma_f32 v141, -v128, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v138
	v_fma_f32 v128, -v128, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v128, v128, v138, v140
	v_div_fixup_f32 v127, v128, v127, v108
	v_div_scale_f32 v108, null, v126, v126, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v128, v108
	v_fma_f32 v138, -v108, v128, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, v138, v128
	v_div_scale_f32 v138, vcc_lo, v109, v126, v109
	v_mul_f32_e32 v139, v138, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v140, -v108, v139, v138
	v_fmac_f32_e32 v139, v140, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v108, -v108, v139, v138
	v_div_fmas_f32 v108, v108, v128, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v126, v108, v126, v109
	v_div_scale_f32 v108, null, v125, v125, v111
	v_rcp_f32_e32 v109, v108
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v128, -v108, v109, 1.0
	v_fmac_f32_e32 v109, v128, v109
	v_div_scale_f32 v128, vcc_lo, v111, v125, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v128, v109
	v_fma_f32 v139, -v108, v138, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v109
	v_fma_f32 v108, -v108, v138, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v108, v108, v109, v138
	v_div_scale_f32 v109, null, v124, v124, v115
	v_div_fixup_f32 v108, v108, v125, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v111, v109
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v108, v121, v108
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v125, -v109, v111, 1.0
	v_fmac_f32_e32 v111, v125, v111
	v_div_scale_f32 v125, vcc_lo, v115, v124, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v128, v125, v111
	v_fma_f32 v138, -v109, v128, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, v138, v111
	v_fma_f32 v109, -v109, v128, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v125, 0xbfb8aa3b, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v109, v109, v111, v128
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v111, v122, v126 :: v_dual_mul_f32 v126, 0xbfb8aa3b, v117
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_mul_f32_e32 v122, v135, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v109, v109, v124, v115
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v115, v123, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v127, 0xbfb8aa3b, v116 :: v_dual_mul_f32 v124, 0xbfb8aa3b, v119
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_mul_f32_e32 v123, v134, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v109, v1, v109 :: v_dual_mul_f32 v122, v122, v15
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v127
	v_cndmask_b32_e64 v127, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v127, 0xbfb8aa3b, v116
	v_cndmask_b32_e64 v126, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v126, 0xbfb8aa3b, v117
	v_exp_f32_e32 v126, v126
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v127, v127, v128
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v125
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v127, 1.0, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v126, v126, v128
	v_cndmask_b32_e64 v125, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_dual_mul_f32 v121, v136, v120 :: v_dual_add_f32 v126, 1.0, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v125, 0xbfb8aa3b, v118
	v_cndmask_b32_e64 v124, 0, 0x42800000, vcc_lo
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v1, v137, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v125, v125
	v_fmac_f32_e32 v124, 0xbfb8aa3b, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v124, v124
	v_ldexp_f32 v125, v125, v128
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v124, v124, v128
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v128, null, v127, v127, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	v_dual_mul_f32 v1, v1, v17 :: v_dual_add_f32 v124, 1.0, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v134, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v135, -v128, v134, 1.0
	v_fmac_f32_e32 v134, v135, v134
	v_div_scale_f32 v135, vcc_lo, v116, v127, v116
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v123, v123, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v136, v135, v134
	v_fma_f32 v137, -v128, v136, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v136, v137, v134
	v_fma_f32 v128, -v128, v136, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v128, v128, v134, v136
	v_div_fixup_f32 v127, v128, v127, v116
	v_div_scale_f32 v116, null, v126, v126, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v128, v116
	v_fma_f32 v134, -v116, v128, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, v134, v128
	v_div_scale_f32 v134, vcc_lo, v117, v126, v117
	v_mul_f32_e32 v135, v134, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v136, -v116, v135, v134
	v_fmac_f32_e32 v135, v136, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v116, -v116, v135, v134
	v_div_fmas_f32 v116, v116, v128, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v126, v116, v126, v117
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v125, 1.0, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v116, null, v125, v125, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v117, v116
	v_fma_f32 v128, -v116, v117, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v128, v117
	v_div_scale_f32 v128, vcc_lo, v118, v125, v118
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	v_dual_mul_f32 v121, v121, v16 :: v_dual_mul_f32 v134, v128, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v135, -v116, v134, v128
	v_fmac_f32_e32 v134, v135, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v116, -v116, v134, v128
	v_div_fmas_f32 v116, v116, v117, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v117, v116, v125, v118
	v_div_scale_f32 v116, null, v124, v124, v119
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v117, v121, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v118, v116
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_mul_f32_e32 v121, v132, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v125, -v116, v118, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v118, v125, v118
	v_div_scale_f32 v125, vcc_lo, v119, v124, v119
	v_mul_f32_e32 v128, v125, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v116, v128, v125
	v_fmac_f32_e32 v128, v134, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v116, -v116, v128, v125
	v_div_fmas_f32 v116, v116, v118, v128
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v118, v122, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v126, 0xbfb8aa3b, v110 :: v_dual_mul_f32 v113, v113, v9
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_mul_f32_e32 v122, v131, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v116, v116, v124, v119
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v119, v123, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v126
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_dual_mul_f32 v123, v130, v120 :: v_dual_mul_f32 v124, 0xbfb8aa3b, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v116, v1, v116
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v1, v133, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v126, 0, 0x42800000, vcc_lo
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v121, v121, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, vcc_lo
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v120, v123, v2 :: v_dual_mul_f32 v1, v1, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v126, 0xbfb8aa3b, v110
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v122, v122, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v126, v126
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v126, v126, v127
	v_dual_mul_f32 v125, 0xbfb8aa3b, v112 :: v_dual_add_f32 v126, 1.0, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v125
	v_cndmask_b32_e64 v125, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v124
	v_fmac_f32_e32 v125, 0xbfb8aa3b, v112
	v_cndmask_b32_e64 v124, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v123, 0xbfb8aa3b, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v125, v125
	v_fmac_f32_e32 v124, 0xbfb8aa3b, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v124, v124
	v_ldexp_f32 v125, v125, v127
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v123
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v125, 1.0, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v123, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v124, v124, v127
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v123, 0xbfb8aa3b, v114 :: v_dual_add_f32 v124, 1.0, v124
	v_exp_f32_e32 v123, v123
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v123, v123, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v127, null, v126, v126, v110
	v_rcp_f32_e32 v128, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v130, -v127, v128, 1.0
	v_fmac_f32_e32 v128, v130, v128
	v_div_scale_f32 v130, vcc_lo, v110, v126, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v131, v130, v128
	v_fma_f32 v132, -v127, v131, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v131, v132, v128
	v_fma_f32 v127, -v127, v131, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v127, v127, v128, v131
	v_div_fixup_f32 v126, v127, v126, v110
	v_div_scale_f32 v110, null, v125, v125, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v127, v110
	v_fma_f32 v128, -v110, v127, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v127, v128, v127
	v_div_scale_f32 v128, vcc_lo, v112, v125, v112
	v_mul_f32_e32 v130, v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v110, v130, v128
	v_fmac_f32_e32 v130, v131, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v110, -v110, v130, v128
	v_div_fmas_f32 v110, v110, v127, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v125, v110, v125, v112
	v_div_scale_f32 v110, null, v124, v124, v113
	v_rcp_f32_e32 v112, v110
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v127, -v110, v112, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v123, 1.0, v123 :: v_dual_fmac_f32 v112, v127, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v127, vcc_lo, v113, v124, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v128, v127, v112
	v_fma_f32 v130, -v110, v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, v130, v112
	v_fma_f32 v110, -v110, v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v110, v110, v112, v128
	v_div_fixup_f32 v112, v110, v124, v113
	v_div_scale_f32 v110, null, v123, v123, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v112, v121, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v113, v110
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	v_dual_mul_f32 v121, v98, v23 :: v_dual_mul_f32 v98, v100, v26
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v100, v102, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v124, -v110, v113, 1.0
	v_fmac_f32_e32 v113, v124, v113
	v_div_scale_f32 v124, vcc_lo, v114, v123, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v127, v124, v113
	v_fma_f32 v128, -v110, v127, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v127, v128, v113
	v_fma_f32 v110, -v110, v127, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v110, v110, v113, v127
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v113, v122, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v110, v110, v123, v114
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v114, v120, v126
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	v_dual_mul_f32 v120, v97, v22 :: v_dual_mul_f32 v97, v99, v25
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v99, v101, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v110, v1, v110
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v1, v129, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v123, 0xbfb8aa3b, v98
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v103, v103, v64 :: v_dual_mul_f32 v122, 0xbfb8aa3b, v99
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v22, v75, v25
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v25, v79, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v123
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v77, v77, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v123, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v122
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v23, v77, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v123, 0xbfb8aa3b, v98
	v_cndmask_b32_e64 v122, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v75, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v123, v123
	v_fmac_f32_e32 v122, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v122, v122
	v_ldexp_f32 v123, v123, v124
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v123, 1.0, v123
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v122, v122, v124
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_mul_f32_e32 v101, v103, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v103, 0xbfb8aa3b, v100 :: v_dual_add_f32 v122, 1.0, v122
	v_mul_f32_e32 v102, 0xbfb8aa3b, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v103
	v_cndmask_b32_e64 v103, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v102
	v_cndmask_b32_e64 v102, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v1, v1, v24 :: v_dual_fmac_f32 v102, 0xbfb8aa3b, v101
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v103, 0xbfb8aa3b, v100
	v_exp_f32_e32 v102, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v103, v103
	v_ldexp_f32 v103, v103, v124
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_1)
	v_ldexp_f32 v102, v102, v124
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v124, null, v123, v123, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v102, 1.0, v102
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v125, v124
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v126, -v124, v125, 1.0
	v_fmac_f32_e32 v125, v126, v125
	v_div_scale_f32 v126, vcc_lo, v98, v123, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v127, v126, v125
	v_fma_f32 v128, -v124, v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v127, v128, v125
	v_fma_f32 v124, -v124, v127, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v124, v124, v125, v127
	v_div_fixup_f32 v123, v124, v123, v98
	v_div_scale_f32 v98, null, v122, v122, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v124, v98
	v_fma_f32 v125, -v98, v124, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v124, v125, v124
	v_div_scale_f32 v125, vcc_lo, v99, v122, v99
	v_mul_f32_e32 v126, v125, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v127, -v98, v126, v125
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v103, 1.0, v103 :: v_dual_fmac_f32 v126, v127, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v98, -v98, v126, v125
	v_div_fmas_f32 v98, v98, v124, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v99, v98, v122, v99
	v_div_scale_f32 v98, null, v103, v103, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v99, v121, v99
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v122, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v124, -v98, v122, 1.0
	v_fmac_f32_e32 v122, v124, v122
	v_div_scale_f32 v124, vcc_lo, v100, v103, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v125, v124, v122
	v_fma_f32 v126, -v98, v125, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v125, v126, v122
	v_fma_f32 v98, -v98, v125, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v98, v98, v122, v125
	v_div_fixup_f32 v100, v98, v103, v100
	v_div_scale_f32 v98, null, v102, v102, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v103, v98
	v_fma_f32 v122, -v98, v103, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v103, v122, v103
	v_div_scale_f32 v122, vcc_lo, v101, v102, v101
	v_mul_f32_e32 v124, v122, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v125, -v98, v124, v122
	v_fmac_f32_e32 v124, v125, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v98, -v98, v124, v122
	v_div_fmas_f32 v98, v98, v103, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v98, v98, v102, v101
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	v_dual_mul_f32 v101, v90, v15 :: v_dual_mul_f32 v90, v91, v16
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v91, v94, v19 :: v_dual_mul_f32 v98, v1, v98
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v1, v92, v64
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v92, v96, v64
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v96, v89, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v89, v93, v18 :: v_dual_mul_f32 v102, 0xbfb8aa3b, v91
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v97, v97, v100 :: v_dual_mul_f32 v92, v92, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v100, v120, v123 :: v_dual_mul_f32 v103, 0xbfb8aa3b, v89
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v94, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v103
	v_cndmask_b32_e64 v103, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v102
	v_fmac_f32_e32 v103, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v102, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v103, v103
	v_fmac_f32_e32 v102, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v102, v102
	v_ldexp_f32 v103, v103, v120
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v103, 1.0, v103
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v102, v102, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1117 21 is_stmt 1             ; ragged.py:1117:21
	v_dual_mul_f32 v95, v95, v64 :: v_dual_add_f32 v102, 1.0, v102
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v93, v95, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v95, 0xbfb8aa3b, v93
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v95
	v_cndmask_b32_e64 v95, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v95, 0xbfb8aa3b, v93
	v_cndmask_b32_e64 v94, 0, 0x42800000, vcc_lo
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v1, v1, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v95, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, 0xbfb8aa3b, v92
	v_exp_f32_e32 v94, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v95, v95, v120
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v95, 1.0, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v94, v94, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v120, null, v103, v103, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v121, v120
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v122, -v120, v121, 1.0
	v_fmac_f32_e32 v121, v122, v121
	v_div_scale_f32 v122, vcc_lo, v89, v103, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v123, v122, v121
	v_fma_f32 v124, -v120, v123, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v123, v124, v121
	v_fma_f32 v120, -v120, v123, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v120, v120, v121, v123
	v_div_fixup_f32 v103, v120, v103, v89
	v_div_scale_f32 v89, null, v102, v102, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v120, v89
	v_fma_f32 v121, -v89, v120, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v120, v121, v120
	v_div_scale_f32 v121, vcc_lo, v91, v102, v91
	v_mul_f32_e32 v122, v121, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v123, -v89, v122, v121
	v_fmac_f32_e32 v122, v123, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v89, v122, v121
	v_div_fmas_f32 v89, v89, v120, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v91, v89, v102, v91
	v_div_scale_f32 v89, null, v95, v95, v93
	v_rcp_f32_e32 v102, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v120, -v89, v102, 1.0
	v_fmac_f32_e32 v102, v120, v102
	v_div_scale_f32 v120, vcc_lo, v93, v95, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v121, v120, v102
	v_fma_f32 v122, -v89, v121, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v121, v122, v102
	v_fma_f32 v89, -v89, v121, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v89, v89, v102, v121
	v_div_fixup_f32 v93, v89, v95, v93
	v_div_scale_f32 v89, null, v94, v94, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v90, v90, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v95, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v89, v95, 1.0
	v_fmac_f32_e32 v95, v102, v95
	v_div_scale_f32 v102, vcc_lo, v92, v94, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v120, v102, v95
	v_fma_f32 v121, -v89, v120, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v120, v121, v95
	v_fma_f32 v89, -v89, v120, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v89, v89, v95, v120
	v_div_fixup_f32 v89, v89, v94, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v92, v96, v103 :: v_dual_mul_f32 v89, v1, v89
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_mul_f32_e32 v1, v84, v64
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v84, v88, v64
	v_mul_f32_e32 v64, v85, v64
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v84, v84, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v64, v64, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v91, v101, v91 :: v_dual_mul_f32 v94, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v94
	v_cndmask_b32_e64 v94, 0, 0x42800000, vcc_lo
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	v_mul_f32_e32 v85, v81, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v95, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v94, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v94, v94
	v_ldexp_f32 v94, v94, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v94, 1.0, v94 :: v_dual_mul_f32 v81, v83, v4
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_dual_mul_f32 v83, v86, v8 :: v_dual_mul_f32 v86, v87, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v87, 0xbfb8aa3b, v84
	v_dual_mul_f32 v93, 0xbfb8aa3b, v83 :: v_dual_mul_f32 v88, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v93
	v_cndmask_b32_e64 v93, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v95, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v83
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v93, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v86
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v93, v93, v95
	v_cndmask_b32_e64 v95, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v88, v88, v95
	v_cndmask_b32_e64 v95, 0, 0xffffffc0, vcc_lo
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v1, v1, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v84
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v88, 1.0, v88 :: v_dual_add_f32 v93, 1.0, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v87, v87, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v95, null, v94, v94, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v96, v95
	v_fma_f32 v101, -v95, v96, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v101, v96
	v_div_scale_f32 v101, vcc_lo, v64, v94, v64
	v_mul_f32_e32 v102, v101, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v103, -v95, v102, v101
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v87, 1.0, v87 :: v_dual_fmac_f32 v102, v103, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v95, -v95, v102, v101
	v_div_fmas_f32 v95, v95, v96, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v94, v95, v94, v64
	v_div_scale_f32 v64, null, v93, v93, v83
	v_rcp_f32_e32 v95, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v96, -v64, v95, 1.0
	v_fmac_f32_e32 v95, v96, v95
	v_div_scale_f32 v96, vcc_lo, v83, v93, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v101, v96, v95
	v_fma_f32 v102, -v64, v101, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v101, v102, v95
	v_fma_f32 v64, -v64, v101, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v64, v64, v95, v101
	v_div_fixup_f32 v83, v64, v93, v83
	v_div_scale_f32 v64, null, v88, v88, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v82, v82, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v93, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v64, v93, 1.0
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, vcc_lo, v86, v88, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v96, v95, v93
	v_fma_f32 v101, -v64, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v101, v93
	v_fma_f32 v64, -v64, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v64, v64, v93, v96
	v_div_fixup_f32 v86, v64, v88, v86
	v_div_scale_f32 v64, null, v87, v87, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v64
	v_fma_f32 v93, -v64, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v93, v88
	v_div_scale_f32 v93, vcc_lo, v84, v87, v84
	v_mul_f32_e32 v95, v93, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v96, -v64, v95, v93
	v_fmac_f32_e32 v95, v96, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v64, v95, v93
	v_div_fmas_f32 v64, v64, v88, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v64, v87, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v64, v1, v64 :: v_dual_mul_f32 v1, v76, v55
	.loc	1 1117 21 is_stmt 1             ; ragged.py:1117:21
	v_mul_f32_e32 v76, v80, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v23
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v1, v1, v24 :: v_dual_mul_f32 v24, v78, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v26, v76, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v28, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v24
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_ldexp_f32 v75, v75, v76
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v24
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v81, v81, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v29
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v29, v29, v76
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v28, v28, v76
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v83, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v27, 0xbfb8aa3b, v26 :: v_dual_add_f32 v28, 1.0, v28
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v27, v27, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v75, v75, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v76
	v_fma_f32 v78, -v76, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v23, v75, v23
	v_mul_f32_e32 v79, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v76, v79, v78
	v_fmac_f32_e32 v79, v80, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v76, v79, v78
	v_div_fmas_f32 v76, v76, v77, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v75, v76, v75, v23
	v_div_scale_f32 v23, null, v29, v29, v24
	v_rcp_f32_e32 v76, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v23, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v24, v29, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v23, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v23, -v23, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v23, v23, v76, v78
	v_div_fixup_f32 v24, v23, v29, v24
	v_div_scale_f32 v23, null, v28, v28, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v24, v74, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v23, v29, 1.0
	v_fmac_f32_e32 v29, v76, v29
	v_div_scale_f32 v76, vcc_lo, v25, v28, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v76, v29
	v_fma_f32 v78, -v23, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v29
	v_fma_f32 v23, -v23, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v23, v23, v29, v77
	v_div_fixup_f32 v25, v23, v28, v25
	v_div_scale_f32 v23, null, v27, v27, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v22, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v23, v28, 1.0
	v_fmac_f32_e32 v28, v29, v28
	v_div_scale_f32 v29, vcc_lo, v26, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v29, v28
	v_fma_f32 v77, -v23, v76, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v28
	v_fma_f32 v23, -v23, v76, v29
	.loc	1 1117 21 is_stmt 1             ; ragged.py:1117:21
	v_mul_f32_e32 v29, v54, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v23, v28, v76
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v28, v69, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v23, v27, v26
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v26, v71, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v27, v70, v55 :: v_dual_mul_f32 v28, v28, v14
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v14, v51, v18
	v_mul_f32_e32 v18, v29, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v1, v23
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v27, v27, v15
	v_dual_mul_f32 v15, v26, v16 :: v_dual_mul_f32 v16, v52, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v26, 0xbfb8aa3b, v14 :: v_dual_mul_f32 v1, v72, v55
	v_mul_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v21, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v1, v1, v17
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v17, v53, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_mul_f32_e32 v20, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v16
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v26, v26, v29
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v21, v29
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v17
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v20, v20
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v20, v20, v29
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v19, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v26, v26, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v51, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v29, v51, 1.0
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v14, v26, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v53, v52, v51
	v_fma_f32 v54, -v29, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v54, v51
	v_fma_f32 v29, -v29, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v29, v29, v51, v53
	v_div_fixup_f32 v26, v29, v26, v14
	v_div_scale_f32 v14, null, v21, v21, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v29, v14
	v_fma_f32 v51, -v14, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v51, v29
	v_div_scale_f32 v51, vcc_lo, v16, v21, v16
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v25, v73, v75 :: v_dual_mul_f32 v52, v51, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v14, v52, v51
	v_fmac_f32_e32 v52, v53, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v14, v52, v51
	v_div_fmas_f32 v14, v14, v29, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v16, v14, v21, v16
	v_div_scale_f32 v14, null, v20, v20, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v27, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v21, v14
	.loc	1 1117 21 is_stmt 1             ; ragged.py:1117:21
	v_mul_f32_e32 v27, v48, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v14, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v29, v21
	v_div_scale_f32 v29, vcc_lo, v17, v20, v17
	v_mul_f32_e32 v51, v29, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v14, v51, v29
	v_fmac_f32_e32 v51, v52, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v14, v51, v29
	v_div_fmas_f32 v14, v14, v21, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v17, v14, v20, v17
	v_div_scale_f32 v14, null, v19, v19, v18
	v_rcp_f32_e32 v20, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v14, v20, 1.0
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v18, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v21, v20
	v_fma_f32 v51, -v14, v29, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v51, v20
	v_fma_f32 v14, -v14, v29, v21
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v21, v50, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v14, v14, v20, v29
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v20, v65, v55 :: v_dual_mul_f32 v15, v15, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v17, v28, v26 :: v_dual_mul_f32 v28, v47, v55
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_fixup_f32 v14, v14, v19, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_dual_mul_f32 v19, v67, v55 :: v_dual_mul_f32 v2, v20, v2
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v26, v49, v55
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v18, v68, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v14, v1, v14 :: v_dual_mul_f32 v1, v66, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v3, v19, v3 :: v_dual_mul_f32 v4, v18, v4
	v_mul_f32_e32 v1, v1, v5
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v5, v28, v7
	v_dual_mul_f32 v7, v27, v8 :: v_dual_mul_f32 v8, v26, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v9, v21, v10 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v19, 0xbfb8aa3b, v7 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v10, 0xbfb8aa3b, v9
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v5
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v7
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v20, v20, v21
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v19, v21
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v9
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v18, v18, v21
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v10, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v20, v20, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v21, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v5, v20, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v27, v26
	v_fma_f32 v29, -v21, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v29, v26
	v_fma_f32 v21, -v21, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v21, v21, v26, v28
	v_div_fixup_f32 v5, v21, v20, v5
	v_div_scale_f32 v20, null, v19, v19, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v26, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v26, v21
	v_div_scale_f32 v26, vcc_lo, v7, v19, v7
	v_mul_f32_e32 v27, v26, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v20, v27, v26
	v_fmac_f32_e32 v27, v28, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v27, v26
	v_div_fmas_f32 v20, v20, v21, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v7, v20, v19, v7
	v_div_scale_f32 v19, null, v18, v18, v8
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v8, v18, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v21, v20
	v_fma_f32 v27, -v19, v26, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v20
	v_fma_f32 v19, -v19, v26, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v19, v19, v20, v26
	v_div_fixup_f32 v8, v19, v18, v8
	v_div_scale_f32 v18, null, v10, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v18
	v_fma_f32 v20, -v18, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v9, v10, v9
	v_mul_f32_e32 v21, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v18, v21, v20
	v_fmac_f32_e32 v21, v26, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v21, v20
	v_div_fmas_f32 v18, v18, v19, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v2, v5
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, |v56|, |v63|, |v62|
	v_max3_f32 v5, |v104|, |v45|, |v44|
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v9, v18, v10, v9
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v10, v4, v8
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, |v107|, |v106|, |v105|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v3, v7
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, |v60|, |v58|, |v46|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v1, v9
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v1, |v61|, |v59|
	v_max3_f32 v7, |v110|, |v40|, |v39|
	v_max3_f32 v8, |v64|, |v36|, |v35|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v20, |v9|, |v12|, |v11|
	v_max3_f32 v1, v1, |v57|, v2
	v_max3_f32 v2, v4, v5, |v42|
	v_max3_f32 v5, |v114|, |v113|, |v112|
	v_max3_f32 v4, |v117|, |v116|, |v41|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v1, v1, v3, v2
	v_max_f32_e64 v2, |v115|, |v111|
	v_max3_f32 v3, |v108|, |v119|, |v118|
	v_max3_f32 v2, v2, |v109|, v3
	v_max3_f32 v3, v5, v7, |v38|
	v_max3_f32 v7, |v83|, |v82|, |v81|
	v_max3_f32 v5, |v90|, |v89|, |v37|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v2, v2, v4, v3
	v_max_f32_e64 v3, |v100|, |v99|
	v_max3_f32 v4, |v97|, |v92|, |v91|
	v_max3_f32 v3, v3, |v98|, v4
	v_max3_f32 v4, v7, v8, |v34|
	v_max3_f32 v8, |v19|, |v18|, |v10|
	v_max3_f32 v7, |v15|, |v14|, |v13|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v3, v3, v5, v4
	v_max_f32_e64 v4, |v25|, |v24|
	v_max3_f32 v5, |v22|, |v17|, |v16|
	v_max3_f32 v4, v4, |v23|, v5
	v_max3_f32 v5, v8, v20, |v6|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v4, v4, v7, v5
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v5, v1, s4, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 8, v0
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v26, v1, v5
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v1, v2, s4, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v5, 1, v43
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v27, v2, v1
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v1, v3, s4, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_and_b32 v2, 4, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v21, v2, 6, 0
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v3, v1
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v1, v4, s4, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s4, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v29, v4, v1
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 3, v0
	v_and_b32_e32 v4, 0x60, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_add_u32 v20, v1, 9, 0
	v_lshlrev_b32_e32 v3, 5, v1
	v_lshl_add_u32 v20, v2, 2, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v8, v3, v4
	v_lshlrev_b32_e32 v2, 5, v2
	v_lshl_add_u32 v20, v7, 4, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v8, v20, v5, v8
	v_lshrrev_b32_e32 v20, 3, v43
	ds_store_b128 v8, v[26:29]
	v_lshlrev_b32_e32 v8, 4, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v8, 0x680, v8, v3
	v_xor_b32_e32 v8, v8, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v8, v21, v20, v8
	ds_load_b128 v[26:29], v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v8, v26
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v8, v20, v8
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v20, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v8, v8, v20
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v20, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v26, v8, v20
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v8, v27
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v27, v27
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v8, v8
	v_max_f32_e32 v8, v20, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v20, v8
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v8, v8, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v20, v8
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v27, v8, v20
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v8, v28
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v28, v28
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v1, v1, 4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v8, v20, v8
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v20, v8 :: v_dual_lshlrev_b32 v7, 3, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_add3_u32 v1, v1, v2, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v8, v8, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v20, v8
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v28, v8, v20
	v_max_f32_e32 v8, v29, v29
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v29, v29 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v29, v29
	v_max_f32_e32 v8, v8, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v20, v8
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v8, v8, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v20, v8
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v29, v8, v20
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v8, 1, v4
	v_add_nc_u32_e32 v20, 0, v43
.Ltmp55:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v4, v173, v4
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v8, v20, v8, v7
	ds_store_b128 v8, v[26:29]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v1
.Ltmp57:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v1, v26, v26 :: v_dual_max_f32 v2, v27, v27
	v_dual_max_f32 v7, v28, v28 :: v_dual_max_f32 v8, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, 0x2b8cbccc, v1 :: v_dual_max_f32 v2, 0x2b8cbccc, v2
	v_max_f32_e32 v7, 0x2b8cbccc, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v1
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v20, v21, 1.0
	v_fmac_f32_e32 v21, v26, v21
	v_div_scale_f32 v26, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v21
	v_fma_f32 v28, -v20, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v8, 0x2b8cbccc, v8 :: v_dual_fmac_f32 v27, v28, v21
	v_fma_f32 v20, -v20, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v20, v20, v21, v27
	v_div_fixup_f32 v1, v20, 0x40e00000, v1
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v26, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v26, v21
	v_div_scale_f32 v26, vcc_lo, v7, 0x40e00000, v7
	v_mul_f32_e32 v27, v26, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v20, v27, v26
	v_fmac_f32_e32 v27, v28, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v27, v26
	v_div_fmas_f32 v20, v20, v21, v27
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v21.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v20, v20, 0x40e00000, v7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v7.l, v1.h
	v_mov_b16_e32 v7.h, v21.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v21.l, v20.h
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v26, 1, v21
	v_add3_u32 v7, v1, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v20, v26, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v2
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v53, 0xffff0000, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v26, v20
	v_fma_f32 v27, -v20, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v28, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v20, v28, v27
	v_fmac_f32_e32 v28, v29, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v28, v27
	v_div_fmas_f32 v20, v20, v26, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v20, 0x40e00000, v2
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v8
	v_rcp_f32_e32 v26, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v20, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v8, 0x40e00000, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v27, v26
	v_fma_f32 v29, -v20, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v29, v26
	v_fma_f32 v20, -v20, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v20, v20, v26, v28
	v_div_fixup_f32 v20, v20, 0x40e00000, v8
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v8.l, v2.h
	v_mov_b16_e32 v8.h, v21.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v21.l, v20.h
	v_and_b32_e32 v8, 1, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v8, v2, v8, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v20, v21, 0x7fff
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v21, null, v53, v53, v61
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v67, 0xffff0000, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v26, v21
	v_fma_f32 v27, -v21, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v61, v53, v61
	v_mul_f32_e32 v28, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v21, v28, v27
	v_fmac_f32_e32 v28, v29, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v21, v28, v27
	v_div_fmas_f32 v21, v21, v26, v28
	v_div_scale_f32 v26, null, v53, v53, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v21, v21, v53, v61
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v59, v53, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v27
	v_fma_f32 v43, -v26, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v43, v27
	v_fma_f32 v26, -v26, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v26, v27, v29
	v_div_scale_f32 v27, null, v53, v53, v57
	v_div_fixup_f32 v26, v26, v53, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v27
	v_fma_f32 v29, -v27, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v29, v28
	v_div_scale_f32 v29, vcc_lo, v57, v53, v57
	v_dual_mul_f32 v43, v29, v28 :: v_dual_and_b32 v54, 0xffff0000, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v27, v43, v29
	v_dual_fmac_f32 v43, v47, v28 :: v_dual_and_b32 v20, 0xffff0000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v43, v29
	v_div_fmas_f32 v27, v27, v28, v43
	v_div_scale_f32 v28, null, v53, v53, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v27, v27, v53, v57
	v_rcp_f32_e32 v29, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v28, v29, 1.0
	v_fmac_f32_e32 v29, v43, v29
	v_div_scale_f32 v43, vcc_lo, v56, v53, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v43, v29
	v_fma_f32 v48, -v28, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v29
	v_fma_f32 v28, -v28, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v28, v28, v29, v47
	v_div_scale_f32 v29, null, v53, v53, v63
	v_div_fixup_f32 v28, v28, v53, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v29
	v_fma_f32 v47, -v29, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v47, v43
	v_div_scale_f32 v47, vcc_lo, v63, v53, v63
	v_mul_f32_e32 v48, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v29, v48, v47
	v_fmac_f32_e32 v48, v49, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v29, v48, v47
	v_div_fmas_f32 v29, v29, v43, v48
	v_div_scale_f32 v43, null, v53, v53, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v29, v29, v53, v63
	v_rcp_f32_e32 v47, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v43, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v62, v53, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v43, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v43, -v43, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v43, v43, v47, v49
	v_div_scale_f32 v47, null, v53, v53, v60
	v_div_fixup_f32 v43, v43, v53, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v49, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, vcc_lo, v60, v53, v60
	v_mul_f32_e32 v50, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v47, v50, v49
	v_fmac_f32_e32 v50, v51, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v50, v49
	v_div_fmas_f32 v47, v47, v48, v50
	v_div_scale_f32 v48, null, v53, v53, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v47, v47, v53, v60
	v_rcp_f32_e32 v49, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v48, v49, 1.0
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, vcc_lo, v58, v53, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v51, v50, v49
	v_fma_f32 v52, -v48, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v52, v49
	v_fma_f32 v48, -v48, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v48, v48, v49, v51
	v_div_scale_f32 v49, null, v53, v53, v46
	v_div_fixup_f32 v48, v48, v53, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v50, v49
	v_fma_f32 v51, -v49, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v46, v53, v46
	v_mul_f32_e32 v52, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v49, v52, v51
	v_fmac_f32_e32 v52, v55, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v49, v52, v51
	v_div_fmas_f32 v49, v49, v50, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v46, v49, v53, v46
	v_div_scale_f32 v49, null, v53, v53, v107
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v50, v49
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v46, v46, s4, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v51, -v49, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v107, v53, v107
	v_mul_f32_e32 v52, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v49, v52, v51
	v_fmac_f32_e32 v52, v55, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v49, v52, v51
	v_div_fmas_f32 v49, v49, v50, v52
	v_div_scale_f32 v50, null, v53, v53, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v49, v49, v53, v107
	v_rcp_f32_e32 v51, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v50, v51, 1.0
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v106, v53, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v52, v51
	v_fma_f32 v56, -v50, v55, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v56, v51
	v_fma_f32 v50, -v50, v55, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v50, v50, v51, v55
	v_div_scale_f32 v51, null, v53, v53, v105
	v_div_fixup_f32 v50, v50, v53, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v52, v51
	v_fma_f32 v55, -v51, v52, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v55, v52
	v_div_scale_f32 v55, vcc_lo, v105, v53, v105
	v_mul_f32_e32 v56, v55, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v51, v56, v55
	v_fmac_f32_e32 v56, v57, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v51, v56, v55
	v_div_fmas_f32 v51, v51, v52, v56
	v_div_scale_f32 v52, null, v53, v53, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v51, v51, v53, v105
	v_rcp_f32_e32 v55, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v52, v55, 1.0
	v_fmac_f32_e32 v55, v56, v55
	v_div_scale_f32 v56, vcc_lo, v104, v53, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v56, v55
	v_fma_f32 v58, -v52, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v58, v55
	v_fma_f32 v52, -v52, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v52, v52, v55, v57
	v_div_scale_f32 v55, null, v53, v53, v45
	v_div_fixup_f32 v52, v52, v53, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v56, v55
	v_fma_f32 v57, -v55, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, vcc_lo, v45, v53, v45
	v_mul_f32_e32 v58, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v55, v58, v57
	v_fmac_f32_e32 v58, v59, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v55, v58, v57
	v_div_fmas_f32 v55, v55, v56, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v45, v55, v53, v45
	v_div_scale_f32 v55, null, v53, v53, v44
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v56, v55
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v45, v45, s4, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v57, -v55, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, vcc_lo, v44, v53, v44
	v_mul_f32_e32 v58, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v55, v58, v57
	v_fmac_f32_e32 v58, v59, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v55, v58, v57
	v_div_fmas_f32 v55, v55, v56, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v44, v55, v53, v44
	v_div_scale_f32 v55, null, v53, v53, v42
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v56, v55
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v44, v44, s4, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v57, -v55, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, vcc_lo, v42, v53, v42
	v_mul_f32_e32 v58, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v55, v58, v57
	v_fmac_f32_e32 v58, v59, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v55, v58, v57
	v_div_fmas_f32 v55, v55, v56, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v42, v55, v53, v42
	v_div_scale_f32 v53, null, v67, v67, v115
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v55, v53
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s4, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v56, -v53, v55, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v56, v55
	v_div_scale_f32 v56, vcc_lo, v115, v67, v115
	v_mul_f32_e32 v57, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v53, v57, v56
	v_fmac_f32_e32 v57, v58, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v53, v57, v56
	v_div_fmas_f32 v53, v53, v55, v57
	v_div_scale_f32 v55, null, v67, v67, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v53, v53, v67, v115
	v_rcp_f32_e32 v56, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v55, v56, 1.0
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, vcc_lo, v111, v67, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v57, v56
	v_fma_f32 v59, -v55, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v56
	v_fma_f32 v55, -v55, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v55, v55, v56, v58
	v_div_scale_f32 v56, null, v67, v67, v109
	v_div_fixup_f32 v55, v55, v67, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v57, v56
	v_fma_f32 v58, -v56, v57, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v58, v57
	v_div_scale_f32 v58, vcc_lo, v109, v67, v109
	v_mul_f32_e32 v59, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v56, v59, v58
	v_fmac_f32_e32 v59, v60, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v56, v59, v58
	v_div_fmas_f32 v56, v56, v57, v59
	v_div_scale_f32 v57, null, v67, v67, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v56, v56, v67, v109
	v_rcp_f32_e32 v58, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v57, v58, 1.0
	v_fmac_f32_e32 v58, v59, v58
	v_div_scale_f32 v59, vcc_lo, v108, v67, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v60, v59, v58
	v_fma_f32 v61, -v57, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v61, v58
	v_fma_f32 v57, -v57, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v57, v57, v58, v60
	v_div_scale_f32 v58, null, v67, v67, v119
	v_div_fixup_f32 v57, v57, v67, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v59, v58
	v_fma_f32 v60, -v58, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v60, vcc_lo, v119, v67, v119
	v_mul_f32_e32 v61, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v58, v61, v60
	v_fmac_f32_e32 v61, v62, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v58, v61, v60
	v_div_fmas_f32 v58, v58, v59, v61
	v_div_scale_f32 v59, null, v67, v67, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v58, v58, v67, v119
	v_rcp_f32_e32 v60, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v59, v60, 1.0
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v118, v67, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v62, v61, v60
	v_fma_f32 v63, -v59, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v63, v60
	v_fma_f32 v59, -v59, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v59, v59, v60, v62
	v_div_scale_f32 v60, null, v67, v67, v117
	v_div_fixup_f32 v59, v59, v67, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v61, v60
	v_fma_f32 v62, -v60, v61, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v62, v61
	v_div_scale_f32 v62, vcc_lo, v117, v67, v117
	v_mul_f32_e32 v63, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v60, v63, v62
	v_fmac_f32_e32 v63, v65, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v60, v63, v62
	v_div_fmas_f32 v60, v60, v61, v63
	v_div_scale_f32 v61, null, v67, v67, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v60, v60, v67, v117
	v_rcp_f32_e32 v62, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v61, v62, 1.0
	v_fmac_f32_e32 v62, v63, v62
	v_div_scale_f32 v63, vcc_lo, v116, v67, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v63, v62
	v_fma_f32 v66, -v61, v65, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v62
	v_fma_f32 v61, -v61, v65, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v61, v61, v62, v65
	v_div_scale_f32 v62, null, v67, v67, v41
	v_div_fixup_f32 v61, v61, v67, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v62
	v_fma_f32 v65, -v62, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v65, v63
	v_div_scale_f32 v65, vcc_lo, v41, v67, v41
	v_mul_f32_e32 v66, v65, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v62, v66, v65
	v_fmac_f32_e32 v66, v68, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v62, v66, v65
	v_div_fmas_f32 v62, v62, v63, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v41, v62, v67, v41
	v_div_scale_f32 v62, null, v67, v67, v114
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v63, v62
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v41, v41, s4, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v65, -v62, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v65, v63
	v_div_scale_f32 v65, vcc_lo, v114, v67, v114
	v_mul_f32_e32 v66, v65, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v62, v66, v65
	v_fmac_f32_e32 v66, v68, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v62, v66, v65
	v_div_fmas_f32 v62, v62, v63, v66
	v_div_scale_f32 v63, null, v67, v67, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v62, v62, v67, v114
	v_rcp_f32_e32 v65, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v63, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v113, v67, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v66, v65
	v_fma_f32 v69, -v63, v68, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v65
	v_fma_f32 v63, -v63, v68, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v63, v63, v65, v68
	v_div_scale_f32 v65, null, v67, v67, v112
	v_div_fixup_f32 v63, v63, v67, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v68, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v68, v66
	v_div_scale_f32 v68, vcc_lo, v112, v67, v112
	v_mul_f32_e32 v69, v68, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v65, v69, v68
	v_fmac_f32_e32 v69, v70, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v69, v68
	v_div_fmas_f32 v65, v65, v66, v69
	v_div_scale_f32 v66, null, v67, v67, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v65, v65, v67, v112
	v_rcp_f32_e32 v68, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v66, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v110, v67, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v68
	v_fma_f32 v71, -v66, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v68
	v_fma_f32 v66, -v66, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v68, v70
	v_div_scale_f32 v68, null, v67, v67, v40
	v_div_fixup_f32 v66, v66, v67, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v68
	v_fma_f32 v70, -v68, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v40, v67, v40
	v_mul_f32_e32 v71, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v71, v70
	v_div_fmas_f32 v68, v68, v69, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v40, v68, v67, v40
	v_div_scale_f32 v68, null, v67, v67, v39
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v69, v68
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v40, v40, s4, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v39, v67, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v68, -v68, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v68, v68, v69, v71
	v_div_fixup_f32 v39, v68, v67, v39
	v_div_scale_f32 v68, null, v67, v67, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v39, v39, s4, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v70, -v68, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v38, v67, v38
	v_mul_f32_e32 v71, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v71, v70
	v_div_fmas_f32 v68, v68, v69, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v38, v68, v67, v38
	v_div_scale_f32 v67, null, v54, v54, v100
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v68, v67
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s4, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v69, -v67, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v100, v54, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v68
	v_fma_f32 v71, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v68
	v_fma_f32 v67, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v67, v67, v68, v70
	v_div_scale_f32 v68, null, v54, v54, v99
	v_div_fixup_f32 v67, v67, v54, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v68
	v_fma_f32 v70, -v68, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v99, v54, v99
	v_mul_f32_e32 v71, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v71, v70
	v_div_fmas_f32 v68, v68, v69, v71
	v_div_scale_f32 v69, null, v54, v54, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v68, v68, v54, v99
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v69, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v98, v54, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v71, v70
	v_fma_f32 v73, -v69, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v70
	v_fma_f32 v69, -v69, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v69, v70, v72
	v_div_scale_f32 v70, null, v54, v54, v97
	v_div_fixup_f32 v69, v69, v54, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v72, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v97, v54, v97
	v_mul_f32_e32 v73, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v70, v73, v72
	v_fmac_f32_e32 v73, v74, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v73, v72
	v_div_fmas_f32 v70, v70, v71, v73
	v_div_scale_f32 v71, null, v54, v54, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v70, v70, v54, v97
	v_rcp_f32_e32 v72, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v71, v72, 1.0
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v92, v54, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v73, v72
	v_fma_f32 v75, -v71, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v72
	v_fma_f32 v71, -v71, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v71, v72, v74
	v_div_scale_f32 v72, null, v54, v54, v91
	v_div_fixup_f32 v71, v71, v54, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v72
	v_fma_f32 v74, -v72, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v91, v54, v91
	v_mul_f32_e32 v75, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v72, v75, v74
	v_fmac_f32_e32 v75, v76, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v72, v75, v74
	v_div_fmas_f32 v72, v72, v73, v75
	v_div_scale_f32 v73, null, v54, v54, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v72, v72, v54, v91
	v_rcp_f32_e32 v74, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v73, v74, 1.0
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v90, v54, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v75, v74
	v_fma_f32 v77, -v73, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v74
	v_fma_f32 v73, -v73, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v73, v73, v74, v76
	v_div_scale_f32 v74, null, v54, v54, v89
	v_div_fixup_f32 v73, v73, v54, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v75, v74
	v_fma_f32 v76, -v74, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v89, v54, v89
	v_mul_f32_e32 v77, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v74, v77, v76
	v_fmac_f32_e32 v77, v78, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v74, v77, v76
	v_div_fmas_f32 v74, v74, v75, v77
	v_div_scale_f32 v75, null, v54, v54, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v74, v74, v54, v89
	v_rcp_f32_e32 v76, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v75, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v37, v54, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v75, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v75, -v75, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v75, v75, v76, v78
	v_div_fixup_f32 v37, v75, v54, v37
	v_div_scale_f32 v75, null, v54, v54, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v37, v37, s4, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v75, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v83, v54, v83
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v75, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v78, v77
	v_div_fmas_f32 v75, v75, v76, v78
	v_div_scale_f32 v76, null, v54, v54, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v75, v75, v54, v83
	v_rcp_f32_e32 v77, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v76, v77, 1.0
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v82, v54, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v79, v78, v77
	v_fma_f32 v80, -v76, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v77
	v_fma_f32 v76, -v76, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v76, v76, v77, v79
	v_div_scale_f32 v77, null, v54, v54, v81
	v_div_fixup_f32 v76, v76, v54, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v78, v77
	v_fma_f32 v79, -v77, v78, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v81, v54, v81
	v_mul_f32_e32 v80, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v77, v80, v79
	v_fmac_f32_e32 v80, v82, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v77, v80, v79
	v_div_fmas_f32 v77, v77, v78, v80
	v_div_scale_f32 v78, null, v54, v54, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v77, v77, v54, v81
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v78, v79, 1.0
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, vcc_lo, v64, v54, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v80, v79
	v_fma_f32 v82, -v78, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v79
	v_fma_f32 v78, -v78, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v78, v78, v79, v81
	v_div_fixup_f32 v64, v78, v54, v64
	v_div_scale_f32 v78, null, v54, v54, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v64, v64, s4, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v78, v79, 1.0
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, vcc_lo, v36, v54, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v80, v79
	v_fma_f32 v82, -v78, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v79
	v_fma_f32 v78, -v78, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v78, v78, v79, v81
	v_div_fixup_f32 v36, v78, v54, v36
	v_div_scale_f32 v78, null, v54, v54, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v36, v36, s4, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v78, v79, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, vcc_lo, v35, v54, v35
	v_mul_f32_e32 v81, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v78, v81, v80
	v_fmac_f32_e32 v81, v82, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v78, v81, v80
	v_div_fmas_f32 v78, v78, v79, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v35, v78, v54, v35
	v_div_scale_f32 v78, null, v54, v54, v34
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v79, v78
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v35, v35, s4, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v78, v79, 1.0
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, vcc_lo, v34, v54, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v80, v79
	v_fma_f32 v82, -v78, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v79
	v_fma_f32 v78, -v78, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v78, v78, v79, v81
	v_div_fixup_f32 v34, v78, v54, v34
	v_div_scale_f32 v54, null, v20, v20, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v34, v34, s4, 0x40e00000
	v_cvt_i32_f32_e32 v82, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v25, v20, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v54, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v78, v80
	v_div_fixup_f32 v25, v54, v20, v25
	v_div_scale_f32 v54, null, v20, v20, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s4, 0x40e00000
	v_cvt_i32_f32_e32 v83, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v24, v20, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v54, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v78, v80
	v_div_fixup_f32 v24, v54, v20, v24
	v_div_scale_f32 v54, null, v20, v20, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s4, 0x40e00000
	v_cvt_i32_f32_e32 v84, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v24, 15, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v23, v20, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v54, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v78, v80
	v_div_fixup_f32 v23, v54, v20, v23
	v_div_scale_f32 v54, null, v20, v20, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v23, v23, s4, 0x40e00000
	v_cvt_i32_f32_e32 v85, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	v_dual_fmac_f32 v78, v79, v78 :: v_dual_and_b32 v23, 15, v44
	v_div_scale_f32 v79, vcc_lo, v22, v20, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v54, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v78, v80
	v_div_fixup_f32 v22, v54, v20, v22
	v_div_scale_f32 v54, null, v20, v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v22, v22, s4, 0x40e00000
	v_cvt_i32_f32_e32 v86, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v22, 15, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v17, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v54, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v78, v80
	v_div_fixup_f32 v17, v54, v20, v17
	v_div_scale_f32 v54, null, v20, v20, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v17, v17, s4, 0x40e00000
	v_cvt_i32_f32_e32 v87, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v17, 15, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v16, v20, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v54, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v78, v80
	v_div_fixup_f32 v16, v54, v20, v16
	v_div_scale_f32 v54, null, v20, v20, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v16, v16, s4, 0x40e00000
	v_cvt_i32_f32_e32 v88, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v15, v20, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v54, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v78, v80
	v_div_fixup_f32 v15, v54, v20, v15
	v_div_scale_f32 v54, null, v20, v20, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v15, v15, s4, 0x40e00000
	v_cvt_i32_f32_e32 v89, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v14, v20, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v54, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v78, v80
	v_div_fixup_f32 v14, v54, v20, v14
	v_div_scale_f32 v54, null, v20, v20, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v14, v14, s4, 0x40e00000
	v_cvt_i32_f32_e32 v90, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v13, v20, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v54, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v78, v80
	v_div_fixup_f32 v13, v54, v20, v13
	v_div_scale_f32 v54, null, v20, v20, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v13, v13, s4, 0x40e00000
	v_cvt_i32_f32_e32 v91, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v19, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v54, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v78, v80
	v_div_fixup_f32 v19, v54, v20, v19
	v_div_scale_f32 v54, null, v20, v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v19, v19, s4, 0x40e00000
	v_cvt_i32_f32_e32 v92, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v18, v20, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v54, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v78, v80
	v_div_fixup_f32 v18, v54, v20, v18
	v_div_scale_f32 v54, null, v20, v20, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v18, v18, s4, 0x40e00000
	v_cvt_i32_f32_e32 v93, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v10, v20, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v54, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v78, v80
	v_div_fixup_f32 v10, v54, v20, v10
	v_div_scale_f32 v54, null, v20, v20, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v10, v10, s4, 0x40e00000
	v_cvt_i32_f32_e32 v94, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v9, v20, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v54, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v78, v80
	v_div_fixup_f32 v9, v54, v20, v9
	v_div_scale_f32 v54, null, v20, v20, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v9, v9, s4, 0x40e00000
	v_cvt_i32_f32_e32 v95, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v12, v20, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v54, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v78, v80
	v_div_fixup_f32 v12, v54, v20, v12
	v_div_scale_f32 v54, null, v20, v20, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v12, v12, s4, 0x40e00000
	v_cvt_i32_f32_e32 v96, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v11, v20, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v54, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v78, v80
	v_div_fixup_f32 v11, v54, v20, v11
	v_div_scale_f32 v54, null, v20, v20, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v11, v11, s4, 0x40e00000
	v_cvt_i32_f32_e32 v97, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v54, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v6, v20, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v54, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v80, v81, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v81, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v54, -v54, v80, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v54, v54, v78, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v38
	v_and_b32_e32 v38, 15, v41
	v_cvt_i32_f32_e32 v80, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v54, v20, v6
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v21
	v_rndne_f32_e32 v21, v26
	v_rndne_f32_e32 v26, v27
	v_rndne_f32_e32 v27, v28
	v_rndne_f32_e32 v28, v29
	v_rndne_f32_e32 v29, v43
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v54, v56
	v_rndne_f32_e32 v56, v58
	v_rndne_f32_e32 v58, v60
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v29, v29, s4, 0x40e00000
	v_med3_f32 v6, v6, s4, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v62
	v_rndne_f32_e32 v62, v65
	v_rndne_f32_e32 v65, v67
	v_rndne_f32_e32 v67, v69
	v_rndne_f32_e32 v69, v71
	v_rndne_f32_e32 v71, v73
	v_rndne_f32_e32 v73, v75
	v_rndne_f32_e32 v75, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v77, v39
	v_cvt_i32_f32_e32 v6, v6
	v_and_b32_e32 v45, 15, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v47
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v14, 15, v29
	v_and_b32_e32 v44, 15, v77
	v_and_b32_e32 v77, 15, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v6, 10, v0
	v_and_b32_e32 v29, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v48
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v49, v50
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v6, 0x1800, v6
	v_lshlrev_b32_e32 v78, 6, v29
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v55
	v_rndne_f32_e32 v55, v57
	v_rndne_f32_e32 v57, v59
	v_rndne_f32_e32 v59, v61
	v_rndne_f32_e32 v61, v63
	v_rndne_f32_e32 v63, v66
	v_rndne_f32_e32 v66, v68
	v_rndne_f32_e32 v68, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v6, 0, v6, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v72
	v_rndne_f32_e32 v72, v74
	v_rndne_f32_e32 v74, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s4, 0x40e00000
	v_med3_f32 v21, v21, s4, 0x40e00000
	v_med3_f32 v26, v26, s4, 0x40e00000
	v_med3_f32 v27, v27, s4, 0x40e00000
	v_med3_f32 v28, v28, s4, 0x40e00000
	v_med3_f32 v47, v47, s4, 0x40e00000
	v_med3_f32 v48, v48, s4, 0x40e00000
	v_med3_f32 v49, v49, s4, 0x40e00000
	v_med3_f32 v52, v52, s4, 0x40e00000
	v_med3_f32 v53, v53, s4, 0x40e00000
	v_med3_f32 v54, v54, s4, 0x40e00000
	v_med3_f32 v55, v55, s4, 0x40e00000
	v_med3_f32 v65, v65, s4, 0x40e00000
	v_med3_f32 v66, v66, s4, 0x40e00000
	v_med3_f32 v67, v67, s4, 0x40e00000
	v_med3_f32 v68, v68, s4, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v78, v6, v4, v5
	v_lshlrev_b32_e32 v4, 6, v0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s4, 0x40e00000
	v_med3_f32 v56, v56, s4, 0x40e00000
	v_med3_f32 v57, v57, s4, 0x40e00000
	v_med3_f32 v60, v60, s4, 0x40e00000
	v_med3_f32 v61, v61, s4, 0x40e00000
	v_med3_f32 v62, v62, s4, 0x40e00000
	v_med3_f32 v73, v73, s4, 0x40e00000
	v_med3_f32 v74, v74, s4, 0x40e00000
	v_med3_f32 v75, v75, s4, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v3, 0x1b00, v4, v3
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_and_b32_e32 v9, 15, v20
	v_and_b32_e32 v10, 15, v21
	v_and_b32_e32 v12, 15, v27
	v_and_b32_e32 v13, 15, v28
	v_and_b32_e32 v16, 15, v47
	v_and_b32_e32 v18, 15, v48
	v_and_b32_e32 v19, 15, v49
	v_and_b32_e32 v25, 15, v52
	v_and_b32_e32 v27, 15, v54
	v_and_b32_e32 v28, 15, v55
	v_and_b32_e32 v46, 15, v65
	v_and_b32_e32 v47, 15, v66
	v_and_b32_e32 v48, 15, v67
	v_and_b32_e32 v49, 15, v68
	v_and_b32_e32 v54, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v79, v3, v172, 0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, vcc_lo, s12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v11, 15, v26
	v_and_b32_e32 v26, 15, v53
	v_cvt_i32_f32_e32 v76, v40
	v_and_b32_e32 v20, 15, v50
	v_and_b32_e32 v34, 15, v56
	v_and_b32_e32 v35, 15, v57
	v_and_b32_e32 v39, 15, v60
	v_and_b32_e32 v40, 15, v61
	v_and_b32_e32 v41, 15, v62
	v_and_b32_e32 v55, 15, v73
	v_and_b32_e32 v56, 15, v74
	v_and_b32_e32 v57, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v78, v[9:12]
	ds_store_b128 v78, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v79
	ds_load_b128 v[9:12], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[25:28]
	ds_store_b128 v78, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v79
	ds_load_b128 v[25:28], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[46:49]
	ds_store_b128 v78, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v79
	ds_load_b128 v[46:49], v79 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s4, 0x40e00000
	v_med3_f32 v58, v58, s4, 0x40e00000
	v_med3_f32 v63, v63, s4, 0x40e00000
	v_med3_f32 v51, v51, s4, 0x40e00000
	v_med3_f32 v70, v70, s4, 0x40e00000
	v_med3_f32 v71, v71, s4, 0x40e00000
	v_med3_f32 v72, v72, s4, 0x40e00000
	v_med3_f32 v59, v59, s4, 0x40e00000
	v_med3_f32 v69, v69, s4, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v69, v69
	v_and_b32_e32 v15, 15, v43
	v_and_b32_e32 v36, 15, v58
	v_and_b32_e32 v42, 15, v63
	v_and_b32_e32 v58, 15, v64
	v_and_b32_e32 v62, 15, v83
	v_and_b32_e32 v63, 15, v84
	v_and_b32_e32 v64, 15, v85
	v_and_b32_e32 v65, 15, v86
	v_and_b32_e32 v21, 15, v51
	v_and_b32_e32 v51, 15, v70
	v_and_b32_e32 v52, 15, v71
	v_and_b32_e32 v53, 15, v72
	v_and_b32_e32 v70, 15, v91
	v_and_b32_e32 v71, 15, v92
	v_and_b32_e32 v72, 15, v93
	v_and_b32_e32 v73, 15, v94
	v_and_b32_e32 v37, 15, v59
	v_and_b32_e32 v50, 15, v69
	v_and_b32_e32 v66, 15, v87
	v_and_b32_e32 v67, 15, v88
	v_and_b32_e32 v68, 15, v89
	v_and_b32_e32 v69, 15, v90
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[62:65]
	ds_store_b128 v78, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v79
	ds_load_b128 v[62:65], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[13:16]
	ds_store_b128 v78, v[21:24] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v79
	ds_load_b128 v[21:24], v79 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v25, 4, v17
	v_lshl_or_b32 v25, v46, 4, v38
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v46, 3, v171
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v43, 15, v76
	v_and_b32_e32 v59, 15, v80
	v_and_b32_e32 v60, 15, v81
	v_and_b32_e32 v61, 15, v82
	v_and_b32_e32 v74, 15, v95
	v_and_b32_e32 v75, 15, v96
	v_and_b32_e32 v76, 15, v97
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s4, s28, 31
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[34:37]
	ds_store_b128 v78, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v79
	ds_load_b128 v[42:45], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[50:53]
	ds_store_b128 v78, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v79
	ds_load_b128 v[58:61], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[66:69]
	ds_store_b128 v78, v[74:77] offset:512
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v74, v9, 4, v3
	v_lshl_or_b32 v75, v10, 4, v4
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, v33, v30
	v_lshl_or_b32 v3, s15, 7, v46
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s4, s28, s4
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v76, v11, 4, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s4, s4, 1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v12, v12, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, 16, v4
	v_add_nc_u32_e32 v9, 32, v4
	v_add_nc_u32_e32 v11, 48, v4
	v_mad_u64_u32 v[4:5], null, v4, s4, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v12.l
	v_and_b16 v2.l, 0xff, v76.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v15, v23, 4, v15
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v13, v21, 4, v13
	v_lshl_or_b32 v14, v22, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v9, s4, v[3:4]
	v_mad_u64_u32 v[10:11], null, v11, s4, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v75.l
	v_and_b16 v2.l, 0xff, v74.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v27, 4, v19
	v_lshl_or_b32 v20, v28, 4, v20
	v_lshl_or_b32 v18, v26, 4, v18
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[5:6], null, v6, s4, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.l, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v16.l
	v_and_b16 v2.l, 0xff, v15.l
	v_cndmask_b32_e64 v3, 0x80000000, v4, s3
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v44, 4, v36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v14.l
	v_and_b16 v2.l, 0xff, v13.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v24, v45, 4, v37
	v_lshl_or_b32 v21, v42, 4, v34
	v_lshl_or_b32 v22, v43, 4, v35
	v_lshl_or_b32 v27, v48, 4, v40
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.l, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v20.l
	v_and_b16 v2.l, 0xff, v19.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v49, 4, v41
	v_lshl_or_b32 v26, v47, 4, v39
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[11:12], v3, s[8:11], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_or_b16 v3.h, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v17.l
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[66:69], v79
	ds_load_b128 v[70:73], v79 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v60, 4, v52
	v_lshl_or_b32 v37, v61, 4, v53
	v_lshl_or_b32 v34, v58, 4, v50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v3.l, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v24.l
	v_and_b16 v2.l, 0xff, v23.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v35, v59, 4, v51
	v_lshl_or_b32 v40, v64, 4, v56
	v_lshl_or_b32 v41, v65, 4, v57
	v_lshl_or_b32 v38, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v4.h, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v22.l
	v_and_b16 v2.l, 0xff, v21.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v63, 4, v55
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v4.l, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v28.l
	v_and_b16 v2.l, 0xff, v27.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v44, v72, 4, v68
	v_lshl_or_b32 v45, v73, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[3:4], v5, s[8:11], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v9, s1
	v_or_b16 v3.h, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v26.l
	v_and_b16 v2.l, 0xff, v25.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v70, 4, v66
	v_lshl_or_b32 v43, v71, 4, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v3.l, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v37.l
	v_and_b16 v2.l, 0xff, v36.l
	v_or_b16 v4.h, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v35.l
	v_and_b16 v2.l, 0xff, v34.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v4.l, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v41.l
	v_and_b16 v2.l, 0xff, v40.l
	buffer_store_b64 v[3:4], v5, s[8:11], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v10, s0
	v_or_b16 v3.h, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v39.l
	v_and_b16 v2.l, 0xff, v38.l
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s28, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v3.l, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v45.l
	v_and_b16 v2.l, 0xff, v44.l
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s28, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_ashr_i32 s0, s0, 8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v4.h, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v43.l
	v_and_b16 v2.l, 0xff, v42.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v4.l, v2.l, v1.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v8.h
	v_mov_b16_e32 v1.l, v7.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[3:4], v5, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v46
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, v32, v30
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 s9, s19, 0xffff
	ds_store_b64 v4, v[1:2]
	v_lshrrev_b32_e32 v1, 2, v29
	v_and_b32_e32 v2, 2, v31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v1, 0, v1
	s_mov_b32 s8, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v1, v2, v46
	v_add_lshl_u32 v0, v3, s15, 1
	ds_load_u16 v1, v1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp58:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 210
		.amdhsa_next_free_sgpr 47
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
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 210
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28716
; TotalNumSgprs: 49
; NumVgprs: 210
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 210
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
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     210
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
