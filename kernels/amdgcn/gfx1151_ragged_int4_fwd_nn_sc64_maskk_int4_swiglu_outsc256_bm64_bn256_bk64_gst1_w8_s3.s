	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[44:45], s[0:1], 0x5c
	v_mov_b32_e32 v237, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v134, 15, v237
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 24
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
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
	v_rcp_iflag_f32_e32 v0, s4
	v_readfirstlane_b32 s4, v0
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
	s_load_b64 s[34:35], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s6, s2
	s_addc_u32 s5, s7, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v237
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow593
	s_load_b128 s[36:39], s[0:1], 0x40
	s_load_b64 s[40:41], s[4:5], 0x0
	s_load_b64 s[42:43], s[6:7], 0x0
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v135, 0xf0, v237
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v136, 4, v134
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v94, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v115, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b64 s[4:5], s[0:1], 0x20
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 5, v237
	s_clause 0x1
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b32 s46, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_mov_b32_e32 v47, 0
	v_dual_mov_b32 v190, 0 :: v_dual_and_b32 v25, 0xe0, v237
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s34, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v121, 0
	v_add_co_u32 v2, vcc_lo, v0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 24
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s0, s4, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	v_add_co_u32 v8, vcc_lo, v0, 32
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s1, s5, s3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	v_add_co_u32 v10, vcc_lo, v0, 40
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[56:57], s[0:1], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s0, s34, v134
	v_add_co_ci_u32_e64 v11, null, 0, v1, vcc_lo
	v_add_co_u32 v12, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v15, null, s35, 0, s0
	v_add_co_ci_u32_e64 v13, null, 0, v1, vcc_lo
	v_add_co_u32 v16, vcc_lo, v0, 56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, 0, v1, vcc_lo
	v_add_co_u32 v18, vcc_lo, v14, 16
	v_add_co_ci_u32_e64 v19, null, 0, v15, vcc_lo
	v_add_co_u32 v20, vcc_lo, v14, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, 0, v15, vcc_lo
	v_add_co_u32 v22, vcc_lo, v14, 48
	v_add_co_ci_u32_e64 v23, null, 0, v15, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[42:43], v[0:1]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v0, s34, v134
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[40:41], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[42:43], v[2:3]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s58, s45, 8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[40:41], v[6:7]
	v_dual_mov_b32 v188, 0 :: v_dual_add_nc_u32 v1, 16, v0
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s44
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[40:41], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[42:43], v[6:7]
	v_cmp_gt_i64_e64 s18, s[42:43], v[16:17]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v6, 3, v135
	v_or_b32_e32 v16, s58, v237
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v17, s34, v24
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v0, off offset:248
	scratch_store_b32 off, v6, off offset:244
	scratch_store_b32 off, v237, off offset:240
	scratch_store_b32 off, v136, off offset:360
	v_mul_lo_u32 v0, v1, s44
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[40:41], v[20:21]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[42:43], v[20:21]
	v_mul_lo_u32 v20, v17, s46
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[40:41], v[18:19]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[42:43], v[18:19]
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v18, 8, v17
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s44
	v_dual_mov_b32 v238, 0 :: v_dual_add_nc_u32 v19, 16, v17
	v_mul_lo_u32 v18, v18, s46
	v_dual_mov_b32 v187, 0 :: v_dual_and_b32 v2, 0x7f, v237
	v_mov_b32_e32 v185, 0
	v_mov_b32_e32 v227, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:256
	scratch_store_b32 off, v134, off offset:352
	v_mul_lo_u32 v0, v3, s44
	scratch_store_b32 off, v18, off offset:272 ; 4-byte Folded Spill
	v_mul_lo_u32 v18, v19, s46
	v_mov_b32_e32 v111, 0
	v_dual_mov_b32 v236, 0 :: v_dual_add_nc_u32 v19, 32, v17
	v_mov_b32_e32 v235, 0
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v21, 48, v17
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_bfe_i32 v0, v237, 7, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[40:41], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[42:43], v[4:5]
	v_dual_mov_b32 v184, 0 :: v_dual_lshlrev_b32 v3, 1, v237
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v0, 0x88, v0
	v_dual_mov_b32 v114, 0 :: v_dual_lshlrev_b32 v5, 5, v134
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v106, 0
	v_xor_b32_e32 v0, v0, v2
	v_dual_mov_b32 v186, 0 :: v_dual_lshlrev_b32 v1, 3, v237
	v_lshrrev_b32_e32 v4, 2, v237
	v_and_or_b32 v2, v3, 24, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v7, 0x110, v0
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v18, off offset:276
	scratch_store_b32 off, v135, off offset:356
	v_add_nc_u32_e32 v18, 24, v17
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[40:41], v[8:9]
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[42:43], v[8:9]
	v_mul_lo_u32 v18, v18, s46
	scratch_store_b32 off, v16, off offset:264 ; 4-byte Folded Spill
	v_dual_mov_b32 v182, 0 :: v_dual_and_b32 v1, 24, v1
	v_xor_b32_e32 v4, v3, v4
	v_xor_b32_e32 v8, 8, v2
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v0, 0, v2
	scratch_store_b32 off, v18, off offset:280 ; 4-byte Folded Spill
	v_mul_lo_u32 v18, v19, s46
	scratch_store_b32 off, v20, off offset:268 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v20, 40, v17
	v_add_nc_u32_e32 v17, 56, v17
	v_xor_b32_e32 v1, v1, v6
	v_dual_mov_b32 v49, 0 :: v_dual_lshlrev_b32 v6, 4, v25
	v_dual_mov_b32 v183, 0 :: v_dual_and_b32 v4, 24, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v17, v17, s46
	scratch_store_b32 off, v18, off offset:284 ; 4-byte Folded Spill
	v_mul_lo_u32 v18, v20, s46
	v_xor_b32_e32 v9, 16, v2
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v0, 0, v8
	v_or3_b32 v4, v4, v6, v5
	v_xor_b32_e32 v5, 24, v2
	v_mov_b32_e32 v83, 0
	scratch_store_b32 off, v18, off offset:288 ; 4-byte Folded Spill
	v_mul_lo_u32 v18, v21, s46
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v9
	scratch_store_b32 off, v17, off offset:296 ; 4-byte Folded Spill
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[40:41], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[42:43], v[12:13]
	v_xor_b32_e32 v12, 8, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:316
	scratch_store_b32 off, v18, off offset:292
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v0, 0, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[40:41], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[42:43], v[14:15]
	v_xor_b32_e32 v13, 16, v4
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v0, 0, v4
	v_dual_mov_b32 v88, 0 :: v_dual_lshlrev_b32 v15, 5, v237
	v_xor_b32_e32 v14, 24, v4
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v0, 0, v12
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v16, 2, v135
	v_dual_mov_b32 v116, 0 :: v_dual_and_b32 v15, 32, v15
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_dual_mov_b32 v231, 0 :: v_dual_add_nc_u32 v0, 0, v13
	v_lshl_or_b32 v1, v134, 9, v1
	v_dual_mov_b32 v112, 0 :: v_dual_and_b32 v3, 28, v3
	v_add3_u32 v15, 0, v16, v15
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v0, 0, v14
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[40:41], v[10:11]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[42:43], v[10:11]
	v_xor_b32_e32 v6, 0x88, v1
	v_xor_b32_e32 v10, 0x110, v1
	v_xor_b32_e32 v11, 0x198, v1
	v_dual_mov_b32 v115, 0 :: v_dual_lshlrev_b32 v16, 1, v135
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v0, v15, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[40:41], v[22:23]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[42:43], v[22:23]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s47, vcc_lo, s11
	s_and_b32 vcc_lo, s7, s19
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s7, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s51, s3, s15
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s3, s7, s46
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v153, 0, v1
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v154, 0, v6
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v155, 0, v10
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v156, 0, v11
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v162, 0, v16
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v150, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v52, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v0, s58, v136
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s48, s0, s12
	s_and_b32 s54, s6, s18
	s_and_b32 s0, s8, s20
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s55, s3, s56
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s8, 0
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s27, s27, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s49, s1, s13
	s_and_b32 s50, s2, s14
	s_and_b32 s52, s4, s16
	s_and_b32 s53, s5, s17
	s_and_b32 s1, s9, s21
	s_and_b32 s2, s10, s22
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s56, s44, s56
	s_add_u32 s57, s55, s33
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s17, s31, 0xffff
	s_mov_b32 s16, s30
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_mov_b32 s20, s24
	s_mov_b32 s21, s25
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s24, s26
	s_mov_b32 s25, s27
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	s_mov_b32 s30, s18
	s_mov_b32 s31, s19
	s_mov_b32 s58, s8
	scratch_store_b64 off, v[0:1], off offset:344 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	s_clause 0x3                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:244
	scratch_load_b64 v[1:2], off, off offset:344
	scratch_load_b32 v15, off, off offset:288
	scratch_load_b32 v17, off, off offset:296
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s5, s58, 5
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v190, off offset:236
	scratch_store_b32 off, v189, off offset:232
	scratch_store_b32 off, v188, off offset:228
	scratch_store_b32 off, v51, off offset:224
	scratch_store_b32 off, v187, off offset:220
	scratch_store_b32 off, v186, off offset:216
	scratch_store_b32 off, v185, off offset:212
	scratch_store_b32 off, v184, off offset:208
	scratch_store_b32 off, v149, off offset:204
	scratch_store_b32 off, v183, off offset:200
	scratch_store_b32 off, v95, off offset:196
	scratch_store_b32 off, v182, off offset:192
	scratch_store_b32 off, v74, off offset:188
	scratch_store_b32 off, v57, off offset:184
	scratch_store_b32 off, v76, off offset:180
	scratch_store_b32 off, v73, off offset:176
	scratch_store_b32 off, v114, off offset:172
	scratch_store_b32 off, v101, off offset:168
	scratch_store_b32 off, v139, off offset:164
	scratch_store_b32 off, v88, off offset:160
	scratch_store_b32 off, v83, off offset:156
	scratch_store_b32 off, v102, off offset:152
	scratch_store_b32 off, v86, off offset:148
	scratch_store_b32 off, v87, off offset:144
	scratch_store_b32 off, v84, off offset:140
	scratch_store_b32 off, v93, off offset:136
	scratch_store_b32 off, v227, off offset:132
	scratch_store_b32 off, v80, off offset:128
	scratch_store_b32 off, v75, off offset:124
	scratch_store_b32 off, v69, off offset:120
	scratch_store_b32 off, v217, off offset:116
	scratch_store_b32 off, v160, off offset:112
	s_clause 0x1b                           ; 112-byte Folded Spill
	scratch_store_b32 off, v58, off offset:108
	scratch_store_b32 off, v132, off offset:104
	scratch_store_b32 off, v59, off offset:100
	scratch_store_b32 off, v60, off offset:96
	scratch_store_b32 off, v150, off offset:92
	scratch_store_b32 off, v70, off offset:88
	scratch_store_b32 off, v71, off offset:84
	scratch_store_b32 off, v72, off offset:80
	scratch_store_b32 off, v151, off offset:76
	scratch_store_b32 off, v152, off offset:72
	scratch_store_b32 off, v53, off offset:68
	scratch_store_b32 off, v54, off offset:64
	scratch_store_b32 off, v118, off offset:60
	scratch_store_b32 off, v55, off offset:56
	scratch_store_b32 off, v56, off offset:52
	scratch_store_b32 off, v157, off offset:48
	scratch_store_b32 off, v158, off offset:44
	scratch_store_b32 off, v159, off offset:40
	scratch_store_b32 off, v104, off offset:36
	scratch_store_b32 off, v105, off offset:32
	scratch_store_b32 off, v133, off offset:28
	scratch_store_b32 off, v124, off offset:24
	scratch_store_b32 off, v122, off offset:20
	scratch_store_b32 off, v181, off offset:16
	scratch_store_b32 off, v161, off offset:12
	scratch_store_b32 off, v210, off offset:8
	scratch_store_b32 off, v208, off offset:4
	scratch_store_b32 off, v196, off
	v_mov_b32_e32 v84, v108
	v_dual_mov_b32 v108, v123 :: v_dual_mov_b32 v73, v100
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_mov_b32_e32 v170, s15
	v_dual_mov_b32 v124, v63 :: v_dual_mov_b32 v75, v81
	v_dual_mov_b32 v122, v64 :: v_dual_mov_b32 v81, v131
	v_dual_mov_b32 v168, s13 :: v_dual_mov_b32 v93, v235
	v_dual_mov_b32 v166, s11 :: v_dual_mov_b32 v87, v236
	v_dual_mov_b32 v164, s9 :: v_dual_mov_b32 v83, v126
	v_dual_mov_b32 v163, s8 :: v_dual_mov_b32 v100, v231
	v_dual_mov_b32 v221, v249 :: v_dual_mov_b32 v74, v106
	v_dual_mov_b32 v106, v232 :: v_dual_mov_b32 v131, v130
	v_dual_mov_b32 v130, v234 :: v_dual_mov_b32 v99, v252
	v_dual_mov_b32 v102, v94 :: v_dual_mov_b32 v101, v253
	v_dual_mov_b32 v94, v238 :: v_dual_mov_b32 v95, v47
	v_mov_b32_e32 v80, v65
	v_mov_b32_e32 v132, v66
	v_mov_b32_e32 v86, v68
	v_mov_b32_e32 v126, v250
	v_dual_mov_b32 v114, v113 :: v_dual_mov_b32 v113, v251
	v_mov_b32_e32 v220, v248
	v_mov_b32_e32 v88, v254
	v_dual_mov_b32 v105, v78 :: v_dual_mov_b32 v104, v77
	v_mov_b32_e32 v77, v48
	scratch_load_b32 v16, off, off offset:292 ; 4-byte Folded Reload
	v_dual_mov_b32 v123, v120 :: v_dual_mov_b32 v120, v62
	v_dual_mov_b32 v97, v233 :: v_dual_mov_b32 v118, v50
	v_mov_b32_e32 v161, v85
	v_mov_b32_e32 v78, v49
	v_dual_mov_b32 v76, v116 :: v_dual_mov_b32 v169, s14
	v_dual_mov_b32 v116, v61 :: v_dual_mov_b32 v167, s12
	v_mov_b32_e32 v165, s10
	v_mov_b32_e32 v85, v67
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v0, s5, v0
	s_waitcnt vmcnt(3)
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s3, s46, v0
	v_mad_u64_u32 v[8:9], null, v0, s7, v[2:3]
	v_or_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s4, s46, v0
	v_add_nc_u32_e32 v1, s55, v8
	v_mad_u64_u32 v[9:10], null, v0, s7, v[2:3]
	v_add_nc_u32_e32 v18, s57, v8
	scratch_load_b32 v8, off, off offset:284 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v0, 0x80000000, v1, s3
	v_add_nc_u32_e32 v2, s55, v9
	v_add_nc_u32_e32 v9, s57, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v4, 0x80000000, v2, s4
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[0:3], v0, s[24:27], 0 offen
	buffer_load_b128 v[4:7], v4, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v11, v5, v1, 0x5010400
	v_perm_b32 v5, v5, v1, 0x7030602
	scratch_load_b32 v1, off, off offset:268 ; 4-byte Folded Reload
	v_perm_b32 v12, v6, v2, 0x5010400
	v_perm_b32 v6, v6, v2, 0x7030602
	scratch_load_b32 v2, off, off offset:272 ; 4-byte Folded Reload
	v_perm_b32 v13, v7, v3, 0x5010400
	v_perm_b32 v14, v7, v3, 0x7030602
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:276
	scratch_load_b32 v7, off, off offset:280
	v_perm_b32 v10, v4, v0, 0x5010400
	v_perm_b32 v4, v4, v0, 0x7030602
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_and_b32_e32 v0, 31, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s5, v0
	v_cmp_gt_i32_e64 s5, s46, v0
	v_add_nc_u32_e32 v8, v8, v0
	v_add_nc_u32_e32 v15, v15, v0
	v_add_nc_u32_e32 v16, v16, v0
	s_and_b32 s6, s47, s5
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v1, v1, v0
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, v2, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s6
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, v3, v0
	s_and_b32 s6, s48, s5
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, v7, v0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	s_and_b32 s6, s49, s5
	v_add_nc_u32_e32 v0, v17, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	s_and_b32 s6, s50, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	s_and_b32 s6, s51, s5
	v_cndmask_b32_e64 v8, 0x80000000, v8, s6
	s_and_b32 s6, s52, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v15, 0x80000000, v15, s6
	s_and_b32 s6, s53, s5
	s_and_b32 s5, s54, s5
	v_cndmask_b32_e64 v16, 0x80000000, v16, s6
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v1, v1, s[20:23], 0 offen
	buffer_load_u8 v3, v3, s[20:23], 0 offen
	buffer_load_u8 v8, v8, s[20:23], 0 offen
	buffer_load_u8 v16, v16, s[20:23], 0 offen
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	buffer_load_u8 v15, v15, s[20:23], 0 offen
	buffer_load_u8 v7, v7, s[20:23], 0 offen
	buffer_load_u8 v2, v2, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v17, v1
	ds_store_b8 v17, v3 offset:512
	ds_store_b8 v17, v8 offset:1024
	ds_store_b8 v17, v16 offset:1536
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v3, 24, v11
	v_lshrrev_b32_e32 v8, 24, v14
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v2
	ds_store_b8 v1, v7 offset:512
	ds_store_b8 v1, v15 offset:1024
	ds_store_b8 v1, v0 offset:1536
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v0, 8, v10
	v_and_b16 v0.h, 0xff, v10.l
	v_lshrrev_b32_e32 v1, 24, v10
	v_lshrrev_b32_e32 v2, 24, v4
	v_lshlrev_b16 v3.l, 8, v3.l
	v_lshlrev_b16 v0.l, 8, v0.l
	v_lshrrev_b32_e32 v7, 24, v6
	v_lshlrev_b16 v1.l, 8, v1.l
	v_lshlrev_b16 v2.l, 8, v2.l
	v_lshlrev_b16 v8.l, 8, v8.l
	v_or_b16 v0.l, v0.h, v0.l
	v_and_b16 v0.h, 0xff, v10.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_or_b16 v0.h, v0.h, v1.l
	v_lshrrev_b32_e32 v1, 8, v4
	v_and_b16 v1.h, 0xff, v4.l
	v_lshlrev_b16 v1.l, 8, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v1.l, v1.h, v1.l
	v_and_b16 v1.h, 0xff, v4.h
	v_lshrrev_b32_e32 v4, 24, v5
	v_or_b16 v1.h, v1.h, v2.l
	v_lshrrev_b32_e32 v2, 8, v11
	v_and_b16 v2.h, 0xff, v11.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v4.l, 8, v4.l
	v_lshlrev_b16 v2.l, 8, v2.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v2.l, v2.h, v2.l
	v_and_b16 v2.h, 0xff, v11.h
	v_or_b16 v2.h, v2.h, v3.l
	v_lshrrev_b32_e32 v3, 8, v5
	v_and_b16 v3.h, 0xff, v5.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v3.l, 8, v3.l
	v_or_b16 v3.l, v3.h, v3.l
	v_and_b16 v3.h, 0xff, v5.h
	v_lshrrev_b32_e32 v5, 24, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v3.h, v3.h, v4.l
	v_lshrrev_b32_e32 v4, 8, v12
	v_and_b16 v4.h, 0xff, v12.l
	v_lshlrev_b16 v5.l, 8, v5.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v4.l, 8, v4.l
	v_or_b16 v4.l, v4.h, v4.l
	v_and_b16 v4.h, 0xff, v12.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v4.h, v4.h, v5.l
	v_lshrrev_b32_e32 v5, 8, v6
	v_and_b16 v5.h, 0xff, v6.l
	v_lshlrev_b16 v6.l, 8, v7.l
	v_lshrrev_b32_e32 v7, 24, v13
	v_lshlrev_b16 v5.l, 8, v5.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v7.l, 8, v7.l
	v_or_b16 v5.l, v5.h, v5.l
	v_and_b16 v5.h, 0xff, v6.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v5.h, v5.h, v6.l
	v_lshrrev_b32_e32 v6, 8, v13
	v_and_b16 v6.h, 0xff, v13.l
	v_lshlrev_b16 v6.l, 8, v6.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v6.l, v6.h, v6.l
	v_and_b16 v6.h, 0xff, v13.h
	v_or_b16 v6.h, v6.h, v7.l
	v_lshrrev_b32_e32 v7, 8, v14
	v_and_b16 v7.h, 0xff, v14.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v7.l, 8, v7.l
	v_or_b16 v7.l, v7.h, v7.l
	v_and_b16 v7.h, 0xff, v14.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v7.h, v7.h, v8.l
	scratch_load_b32 v8, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[14:17], v8 offset1:1
	ds_load_2addr_stride64_b64 v[203:206], v8 offset0:2 offset1:3
	scratch_load_b32 v8, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[207:210], v8 offset1:1
	ds_load_2addr_stride64_b64 v[157:160], v8 offset0:2 offset1:3
	scratch_load_b32 v8, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[133:136], v8 offset1:1
	ds_load_2addr_stride64_b64 v[149:152], v8 offset0:2 offset1:3
	scratch_load_b32 v8, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[53:56], v8 offset1:1
	ds_load_2addr_stride64_b64 v[48:51], v8 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v153, v0
	ds_store_b16_d16_hi v153, v0 offset:32
	ds_store_b16 v153, v1 offset:64
	ds_store_b16_d16_hi v153, v1 offset:96
	ds_store_b16 v154, v2
	ds_store_b16_d16_hi v154, v2 offset:32
	ds_store_b16 v154, v3 offset:64
	ds_store_b16_d16_hi v154, v3 offset:96
	ds_store_b16 v155, v4
	ds_store_b16_d16_hi v155, v4 offset:32
	ds_store_b16 v155, v5 offset:64
	ds_store_b16_d16_hi v155, v5 offset:96
	ds_store_b16 v156, v6
	ds_store_b16_d16_hi v156, v6 offset:32
	ds_store_b16 v156, v7 offset:64
	ds_store_b16_d16_hi v156, v7 offset:96
	v_cndmask_b32_e64 v0, 0x80000000, v18, s3
	v_cndmask_b32_e64 v4, 0x80000000, v9, s4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_b128 v[0:3], v0, s[24:27], 0 offen
	buffer_load_b128 v[4:7], v4, s[24:27], 0 offen
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s58, s56
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v98, off, off offset:328
	scratch_load_b32 v148, off, off offset:332
	scratch_load_b32 v255, off, off offset:336
	s_mul_i32 s3, s3, s7
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(3)
	v_perm_b32 v8, v4, v0, 0x5010400
	v_perm_b32 v9, v4, v0, 0x7030602
	v_perm_b32 v10, v5, v1, 0x5010400
	v_perm_b32 v1, v5, v1, 0x7030602
	v_perm_b32 v11, v6, v2, 0x5010400
	v_lshrrev_b32_e32 v0, 8, v8
	v_and_b16 v0.h, 0xff, v8.l
	v_lshrrev_b32_e32 v5, 24, v8
	v_perm_b32 v2, v6, v2, 0x7030602
	v_lshrrev_b32_e32 v6, 24, v9
	v_lshlrev_b16 v0.l, 8, v0.l
	v_perm_b32 v12, v7, v3, 0x5010400
	v_perm_b32 v3, v7, v3, 0x7030602
	v_lshrrev_b32_e32 v7, 24, v10
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b64 v[61:64], v98 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v4.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v8.h
	v_lshlrev_b16 v0.h, 8, v5.l
	v_lshrrev_b32_e32 v8, 24, v1
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[57:60], v148 offset1:8
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[69:72], v255 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v4.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v9
	v_and_b16 v0.h, 0xff, v9.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v5.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v9.h
	v_lshlrev_b16 v0.h, 8, v6.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v5.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v10
	v_and_b16 v0.h, 0xff, v10.l
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v6.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v10.h
	v_lshlrev_b16 v0.h, 8, v7.l
	v_or_b16 v6.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v1
	v_and_b16 v0.h, 0xff, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v7.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v1.h
	v_lshlrev_b16 v0.h, 8, v8.l
	v_lshrrev_b32_e32 v1, 24, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v7.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v11
	v_and_b16 v0.h, 0xff, v11.l
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v8.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v11.h
	v_lshlrev_b16 v0.h, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v2
	v_or_b16 v8.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v2
	v_and_b16 v0.h, 0xff, v2.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v9.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v2.h
	v_lshlrev_b16 v0.h, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v9.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v12
	v_and_b16 v0.h, 0xff, v12.l
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_or_b16 v10.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v12.h
	scratch_load_b32 v12, off, off offset:324 ; 4-byte Folded Reload
	v_lshlrev_b16 v0.h, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v3
	v_or_b16 v10.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v3
	v_and_b16 v0.h, 0xff, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v11.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v3.h
	v_lshlrev_b16 v0.h, 8, v1.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v11.h, v0.l, v0.h
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[0:3], v12 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v153, v4
	ds_store_b16_d16_hi v153, v4 offset:32
	ds_store_b16 v153, v5 offset:64
	ds_store_b16_d16_hi v153, v5 offset:96
	ds_store_b16 v154, v6
	ds_store_b16_d16_hi v154, v6 offset:32
	ds_store_b16 v154, v7 offset:64
	ds_store_b16_d16_hi v154, v7 offset:96
	ds_store_b16 v155, v8
	ds_store_b16_d16_hi v155, v8 offset:32
	ds_store_b16 v155, v9 offset:64
	ds_store_b16_d16_hi v155, v9 offset:96
	ds_store_b16 v156, v10
	ds_store_b16_d16_hi v156, v10 offset:32
	ds_store_b16 v156, v11 offset:64
	ds_store_b16_d16_hi v156, v11 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[65:68], v12 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[171:178], v[0:1], v[14:15], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[179:186], v[2:3], v[14:15], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[187:194], v[0:1], v[16:17], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[195:202], v[2:3], v[16:17], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[0:1], v[203:204], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[223:230], v[2:3], v[203:204], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[231:238], v[0:1], v[205:206], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[239:246], v[2:3], v[205:206], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[171:178], v[61:62], v[207:208], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[179:186], v[63:64], v[207:208], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[187:194], v[61:62], v[209:210], v[187:194] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[195:202], v[63:64], v[209:210], v[195:202] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[61:62], v[157:158], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[223:230], v[63:64], v[157:158], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[231:238], v[61:62], v[159:160], v[231:238] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[239:246], v[63:64], v[159:160], v[239:246] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[61:64], v98 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[171:178], v[57:58], v[133:134], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[179:186], v[59:60], v[133:134], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[187:194], v[57:58], v[135:136], v[187:194] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[195:202], v[59:60], v[135:136], v[195:202] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[57:58], v[149:150], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[223:230], v[59:60], v[149:150], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[231:238], v[57:58], v[151:152], v[231:238] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[239:246], v[59:60], v[151:152], v[239:246] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[57:60], v148 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[247:254], v[65:66], v[14:15], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[67:68], v[14:15], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[65:66], v[16:17], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[67:68], v[16:17], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[65:66], v[203:204], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[67:68], v[203:204], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[65:66], v[205:206], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[67:68], v[205:206], v[163:170] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[247:254], v[61:62], v[207:208], v[247:254] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[63:64], v[207:208], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[61:62], v[209:210], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[63:64], v[209:210], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[61:62], v[157:158], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[63:64], v[157:158], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[61:62], v[159:160], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[63:64], v[159:160], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[247:254], v[57:58], v[133:134], v[247:254] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[59:60], v[133:134], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[57:58], v[135:136], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[59:60], v[135:136], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[57:58], v[149:150], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[59:60], v[149:150], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[57:58], v[151:152], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[59:60], v[151:152], v[40:47] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[57:60], v255 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[212:219], v[69:70], v[48:49], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[171:178], v[69:70], v[53:54], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[195:202], v[71:72], v[55:56], v[195:202] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[223:230], v[71:72], v[48:49], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[231:238], v[69:70], v[50:51], v[231:238] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v157, v216
	v_cvt_f32_i32_e32 v158, v217
	v_cvt_f32_i32_e32 v136, v199
	v_cvt_f32_i32_e32 v160, v219
	v_cvt_f32_i32_e32 v159, v218
	v_cvt_f32_i32_e32 v164, v226
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[239:246], v[71:72], v[50:51], v[239:246] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v255, v225
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[187:194], v[69:70], v[55:56], v[187:194] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[179:186], v[71:72], v[53:54], v[179:186] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v70, v200
	v_cvt_f32_i32_e32 v71, v201
	v_cvt_f32_i32_e32 v72, v202
	v_cvt_f32_i32_e32 v68, v194
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[247:254], v[57:58], v[53:54], v[247:254] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[57:58], v[55:56], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[57:58], v[48:49], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[59:60], v[48:49], v[24:31] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v48, v171
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v216, v249
	v_mov_b32_e32 v249, v221
	v_cvt_f32_i32_e32 v221, v0
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v217, v248
	v_cvt_f32_i32_e32 v199, v251
	v_dual_mov_b32 v251, v113 :: v_dual_mov_b32 v248, v220
	v_cvt_f32_i32_e32 v220, v1
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v1, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v219, v2
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v2, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v218, v3
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v3, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v226, v16
	scratch_load_b32 v16, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[8:15], v[59:60], v[55:56], v[8:15] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v203, v4
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[32:39], v[57:58], v[50:51], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[59:60], v[50:51], v[40:47] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v50, v173
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v167, v13
	v_cvt_f32_i32_e32 v168, v14
	v_cvt_f32_i32_e32 v170, v12
	v_cvt_f32_i32_e32 v225, v17
	v_cvt_f32_i32_e32 v202, v5
	v_cvt_f32_i32_e32 v201, v6
	v_cvt_f32_i32_e32 v200, v7
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v49, v172
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v169, v15
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v61, v187
	v_cvt_f32_i32_e32 v134, v197
	v_cvt_f32_i32_e32 v135, v198
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v198, v252
	v_cvt_f32_i32_e32 v197, v253
	v_mov_b32_e32 v253, v101
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v51, v174
	v_cvt_f32_i32_e32 v62, v188
	v_cvt_f32_i32_e32 v63, v189
	v_cvt_f32_i32_e32 v64, v190
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[139:146], v[59:60], v[53:54], v[139:146] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v133, v196
	v_cvt_f32_i32_e32 v149, v212
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v196, v254
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v69, v195
	v_cvt_f32_i32_e32 v152, v215
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v195, v139
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v150, v213
	v_cvt_f32_i32_e32 v151, v214
	v_cvt_f32_i32_e32 v231, v231
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v215, v250
	v_mov_b32_e32 v250, v126
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v57, v179
	v_cvt_f32_i32_e32 v58, v180
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v180, v47
	v_dual_mov_b32 v47, v95 :: v_dual_mov_b32 v98, v129
	v_mov_b32_e32 v113, v114
	v_mov_b32_e32 v129, v79
	v_mov_b32_e32 v79, v52
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v232, v232
	v_cvt_f32_i32_e32 v233, v233
	v_cvt_f32_i32_e32 v234, v234
	v_cvt_f32_i32_e32 v53, v175
	v_cvt_f32_i32_e32 v54, v176
	v_cvt_f32_i32_e32 v55, v177
	v_cvt_f32_i32_e32 v56, v178
	v_cvt_f32_i32_e32 v65, v191
	v_cvt_f32_i32_e32 v66, v192
	v_cvt_f32_i32_e32 v59, v181
	v_cvt_f32_i32_e32 v67, v193
	v_cvt_f32_i32_e32 v52, v224
	v_cvt_f32_i32_e32 v235, v235
	v_cvt_f32_i32_e32 v60, v182
	v_cvt_f32_i32_e32 v236, v236
	v_cvt_f32_i32_e32 v237, v237
	v_cvt_f32_i32_e32 v238, v238
	v_cvt_f32_i32_e32 v148, v223
	v_cvt_f32_i32_e32 v239, v239
	v_cvt_f32_i32_e32 v240, v240
	v_cvt_f32_i32_e32 v241, v241
	v_cvt_f32_i32_e32 v242, v242
	v_cvt_f32_i32_e32 v163, v183
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v247, v247
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v165, v184
	v_cvt_f32_i32_e32 v210, v185
	v_cvt_f32_i32_e32 v208, v186
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v223, v19
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v227, v227
	v_cvt_f32_i32_e32 v228, v228
	v_cvt_f32_i32_e32 v229, v229
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v101, v145
	v_cvt_f32_i32_e32 v224, v18
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v230, v230
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v166, v143
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v243, v243
	v_cvt_f32_i32_e32 v244, v244
	v_cvt_f32_i32_e32 v245, v245
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v174, v28
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v246, v246
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v181, v8
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v185, v9
	v_cvt_f32_i32_e32 v9, v33
	v_cvt_f32_i32_e32 v184, v10
	v_cvt_f32_i32_e32 v10, v34
	v_cvt_f32_i32_e32 v178, v45
	v_cvt_f32_i32_e32 v182, v11
	v_cvt_f32_i32_e32 v172, v30
	v_cvt_f32_i32_e32 v11, v35
	v_cvt_f32_i32_e32 v179, v46
	v_cvt_f32_i32_e32 v207, v20
	v_cvt_f32_i32_e32 v206, v21
	v_cvt_f32_i32_e32 v205, v22
	v_cvt_f32_i32_e32 v204, v23
	v_cvt_f32_i32_e32 v214, v36
	v_cvt_f32_i32_e32 v213, v37
	v_cvt_f32_i32_e32 v212, v38
	v_cvt_f32_i32_e32 v209, v39
	v_cvt_f32_i32_e32 v177, v140
	v_cvt_f32_i32_e32 v176, v141
	v_cvt_f32_i32_e32 v175, v142
	v_cvt_f32_i32_e32 v186, v24
	v_cvt_f32_i32_e32 v189, v25
	v_cvt_f32_i32_e32 v188, v26
	v_cvt_f32_i32_e32 v187, v27
	v_cvt_f32_i32_e32 v190, v40
	v_cvt_f32_i32_e32 v193, v41
	v_cvt_f32_i32_e32 v192, v42
	v_cvt_f32_i32_e32 v191, v43
	v_cvt_f32_i32_e32 v114, v146
	v_cvt_f32_i32_e32 v183, v44
	v_cvt_f32_i32_e32 v171, v29
	v_cvt_f32_i32_e32 v173, v31
	v_mov_b32_e32 v126, v83
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v0, s58, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v1, s58, v1, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v2, s58, v2, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, s58, v3, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v4, v16, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s58, s58, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v4, v4, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	buffer_load_u16 v12, v1, s[28:31], 0 offen
	buffer_load_u16 v13, v2, s[28:31], 0 offen
	buffer_load_u16 v14, v3, s[28:31], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s58, s44
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v1, 16, v4
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v194, 16, v0
	v_mov_b32_e32 v252, v99
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v254, v88 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v15, v194, v48 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v17, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v162
	ds_load_b128 v[4:7], v162 offset:16
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v12, 16, v12
	v_dual_mov_b32 v48, v77 :: v_dual_mov_b32 v77, v104
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v179, v14
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v88, v144
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v19, v180, v14 :: v_dual_fmac_f32 v92, v15, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v194, v49
	v_dual_mov_b32 v49, v78 :: v_dual_mov_b32 v78, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v96, v15, v1 :: v_dual_mul_f32 v15, v194, v50
	v_dual_mov_b32 v50, v118 :: v_dual_fmac_f32 v147, v15, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v194, v51
	scratch_load_b32 v51, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v110, v15, v3 :: v_dual_mul_f32 v15, v12, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v61, v116 :: v_dual_fmac_f32 v252, v15, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v12, v62
	v_dual_mov_b32 v62, v120 :: v_dual_fmac_f32 v253, v15, v1
	v_mul_f32_e32 v15, v12, v63
	v_mov_b32_e32 v116, v76
	v_dual_mov_b32 v120, v123 :: v_dual_mov_b32 v123, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v108, v84 :: v_dual_fmac_f32 v125, v15, v2
	v_dual_mul_f32 v15, v12, v64 :: v_dual_mov_b32 v64, v122
	v_dual_mov_b32 v63, v124 :: v_dual_fmac_f32 v254, v15, v3
	v_mul_f32_e32 v15, v13, v149
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:204
	scratch_load_b32 v139, off, off offset:164
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v248, v15, v0 :: v_dual_mul_f32 v15, v13, v150
	scratch_load_b32 v150, off, off offset:92 ; 4-byte Folded Reload
	v_fmac_f32_e32 v249, v15, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v13, v151
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v251, v15, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v13, v152
	scratch_load_b32 v152, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v250, v15, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v14, v231
	v_dual_mov_b32 v231, v100 :: v_dual_mov_b32 v100, v73
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v149, v15, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v57, v194
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:184
	scratch_load_b32 v151, off, off offset:76
	v_mul_f32_e32 v0, v14, v232
	v_mov_b32_e32 v232, v106
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v106, v74 :: v_dual_fmac_f32 v139, v0, v1
	v_dual_mul_f32 v0, v14, v233 :: v_dual_mov_b32 v233, v97
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v151, v0, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v14, v234
	v_mov_b32_e32 v234, v130
	v_dual_mov_b32 v130, v131 :: v_dual_mov_b32 v131, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v81, v75 :: v_dual_fmac_f32 v150, v0, v3
	v_mul_f32_e32 v0, v194, v53
	scratch_load_b32 v53, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v233, v0, v4 :: v_dual_mul_f32 v0, v194, v54
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:64
	scratch_load_b32 v118, off, off offset:60
	v_fmac_f32_e32 v234, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v194, v55
	scratch_load_b32 v55, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v130, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v194, v56
	scratch_load_b32 v56, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v131, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v65
	v_mov_b32_e32 v65, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v61, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v66
	v_mov_b32_e32 v66, v132
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v62, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v12, v67 :: v_dual_mov_b32 v67, v85
	v_mov_b32_e32 v85, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v63, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v68
	v_mov_b32_e32 v68, v86
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v64, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v13, v157
	scratch_load_b32 v157, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v231, v0, v4 :: v_dual_mul_f32 v0, v13, v158
	scratch_load_b32 v158, off, off offset:44 ; 4-byte Folded Reload
	v_fmac_f32_e32 v232, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v13, v159
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v159, off, off offset:40
	scratch_load_b32 v104, off, off offset:36
	scratch_load_b32 v105, off, off offset:32
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v159, v0, v6 :: v_dual_mul_f32 v0, v13, v160
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v160, off, off offset:112
	scratch_load_b32 v124, off, off offset:24
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v104, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v14, v235 :: v_dual_mov_b32 v235, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v66, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v14, v236
	v_dual_mov_b32 v236, v87 :: v_dual_fmac_f32 v67, v0, v5
	v_mul_f32_e32 v0, v14, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v68, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v14, v238
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v126, v0, v7
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[0:3], v162 offset:512
	ds_load_b128 v[4:7], v162 offset:528
	v_mov_b32_e32 v238, v94
	v_mov_b32_e32 v94, v102
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v95, off, off offset:196
	scratch_load_b32 v73, off, off offset:176
	scratch_load_b32 v83, off, off offset:156
	scratch_load_b32 v87, off, off offset:144
	scratch_load_b32 v93, off, off offset:136
	scratch_load_b32 v102, off, off offset:152
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v94, v15, v0 :: v_dual_mul_f32 v15, v194, v58
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v58, off, off offset:108
	scratch_load_b32 v132, off, off offset:104
	scratch_load_b32 v74, off, off offset:188
	scratch_load_b32 v76, off, off offset:180
	scratch_load_b32 v84, off, off offset:140
	v_fmac_f32_e32 v77, v15, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v194, v59
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v59, off, off offset:100
	scratch_load_b32 v80, off, off offset:128
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v78, v15, v2 :: v_dual_mul_f32 v15, v194, v60
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v60, off, off offset:96
	scratch_load_b32 v86, off, off offset:148
	scratch_load_b32 v75, off, off offset:124
	v_fmac_f32_e32 v127, v15, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v69, v12
	scratch_load_b32 v69, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v238, v15, v0 :: v_dual_mul_f32 v15, v12, v133
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v133, off, off offset:28
	scratch_load_b32 v122, off, off offset:20
	scratch_load_b32 v237, off, off offset:240
	scratch_load_b32 v161, off, off offset:12
	v_fmac_f32_e32 v53, v15, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v12, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v54, v15, v2 :: v_dual_mul_f32 v15, v12, v135
	v_fmac_f32_e32 v55, v15, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v148, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v108, v15, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v15, v13, v52 :: v_dual_mov_b32 v52, v79
	v_mov_b32_e32 v79, v129
	v_mov_b32_e32 v129, v98
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(16)
	v_fmac_f32_e32 v93, v15, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v13, v255
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(12)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v74, v15, v2 :: v_dual_mul_f32 v15, v13, v164
	v_fmac_f32_e32 v137, v15, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v239, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v235, v15, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v14, v240
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v15, v194, v247
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v51, v0, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v14, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v50, v0, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v14, v242
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v57, v0, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v194, v163
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v79, v0, v4 :: v_dual_mul_f32 v0, v165, v194
	v_fmac_f32_e32 v116, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v210, v194
	scratch_load_b32 v210, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v115, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v208, v194
	scratch_load_b32 v208, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v56, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v70, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v111, v0, v5 :: v_dual_mul_f32 v0, v71, v12
	scratch_load_b32 v71, off, off offset:84 ; 4-byte Folded Reload
	v_fmac_f32_e32 v236, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v72, v12
	scratch_load_b32 v72, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v109, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v13, v227
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v227, off, off offset:132
	scratch_load_b32 v70, off, off offset:88
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v138, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v228, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v106, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v229, v13
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v100, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v230, v13
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v227, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v14, v243
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v52, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v244, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v81, v0, v5 :: v_dual_mul_f32 v0, v245, v14
	v_fmac_f32_e32 v82, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v246, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v85, v0, v7 :: v_dual_add_nc_u32 v0, s33, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v173, v13
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v0, v0, s3, 1
	buffer_load_u16 v0, v0, s[16:19], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v17, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v162
	ds_load_b128 v[4:7], v162 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v14, v8
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v17, v178, v14 :: v_dual_fmac_f32 v76, v8, v0
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v222, v15, v0 :: v_dual_mul_f32 v15, v194, v217
	scratch_load_b32 v217, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v195, v194
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v217, v15, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v15, v194, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v102, v15, v2 :: v_dual_mul_f32 v15, v194, v215
	v_dual_fmac_f32 v160, v15, v3 :: v_dual_mul_f32 v15, v12, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v15, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v15, v12, v220
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v71, v15, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v15, v12, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v70, v15, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v15, v12, v218
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v69, v15, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v15, v13, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v211, v15, v0 :: v_dual_mul_f32 v0, v14, v9
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v168, v12
	v_mul_f32_e32 v15, v13, v225
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v87, v0, v1 :: v_dual_mul_f32 v0, v14, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v169, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v0, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v14, v11 :: v_dual_mul_f32 v11, v12, v170
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v84, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v194, v199
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v91, v0, v4 :: v_dual_mul_f32 v0, v194, v198
	v_fmac_f32_e32 v95, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v194, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v89, v0, v6 :: v_dual_mul_f32 v0, v194, v196
	scratch_load_b32 v196, off, off         ; 4-byte Folded Reload
	v_fmac_f32_e32 v90, v0, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v203
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v133, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v123, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v201
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v210, v15, v1 :: v_dual_mul_f32 v15, v13, v224
	v_fmac_f32_e32 v121, v0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v12, v200 :: v_dual_fmac_f32 v113, v15, v2
	v_mul_f32_e32 v15, v13, v223
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v120, v0, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v13, v207
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v196, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v13, v206
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v208, v15, v3 :: v_dual_mul_f32 v15, v172, v13
	v_fmac_f32_e32 v161, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v13, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v105, v0, v6 :: v_dual_mul_f32 v0, v13, v204
	v_fmac_f32_e32 v124, v0, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v14, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v83, v0, v4 :: v_dual_mul_f32 v0, v14, v213
	v_dual_fmac_f32 v75, v0, v5 :: v_dual_mul_f32 v0, v14, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v0, v6
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v14, v209
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v73, v0, v7
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[0:3], v162 offset:512
	ds_load_b128 v[4:7], v162 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v47, v8, v0 :: v_dual_mul_f32 v8, v194, v177
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v118, v11, v4 :: v_dual_fmac_f32 v129, v8, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v194, v176
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v128, v8, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v194, v175
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v107, v8, v3 :: v_dual_mul_f32 v8, v181, v12
	scratch_load_b32 v181, off, off offset:16 ; 4-byte Folded Reload
	v_fmac_f32_e32 v48, v8, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v12, v185
	scratch_load_b32 v185, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v181, v8, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v12, v184
	scratch_load_b32 v184, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v122, v8, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v12, v182
	scratch_load_b32 v182, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v185, v10, v7
	v_dual_fmac_f32 v117, v8, v3 :: v_dual_mul_f32 v8, v186, v13
	scratch_load_b32 v186, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v184, v8, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v13, v189
	scratch_load_b32 v189, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v158, v8, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v13, v188
	scratch_load_b32 v188, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v157, v8, v2 :: v_dual_mul_f32 v8, v13, v187
	scratch_load_b32 v187, off, off offset:220 ; 4-byte Folded Reload
	v_fmac_f32_e32 v152, v8, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v190, v14
	scratch_load_b32 v190, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v119, v8, v0 :: v_dual_mul_f32 v0, v14, v193
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v167, v12
	v_dual_mul_f32 v12, v171, v13 :: v_dual_mul_f32 v13, v13, v174
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v65, v0, v1 :: v_dual_mul_f32 v0, v14, v192
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v101, v194
	scratch_load_b32 v101, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v103, v13, v4
	v_fmac_f32_e32 v49, v12, v5
	v_fmac_f32_e32 v60, v0, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v14, v191
	v_mul_f32_e32 v2, v114, v194
	v_mul_f32_e32 v14, v14, v183
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:200
	scratch_load_b32 v114, off, off offset:172
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v59, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v88, v194
	scratch_load_b32 v88, off, off offset:160 ; 4-byte Folded Reload
	v_mul_f32_e32 v3, v194, v166
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v186, v9, v6
	v_fmac_f32_e32 v182, v16, v7
	v_fmac_f32_e32 v58, v14, v4
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v80, v3, v4 :: v_dual_fmac_f32 v189, v1, v6
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v188, v2, v7 :: v_dual_fmac_f32 v187, v8, v5
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v190, v0, v5 :: v_dual_fmac_f32 v101, v18, v6
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v183, v15, v6 :: v_dual_fmac_f32 v114, v17, v5
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v88, v19, v7
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v134, off, off offset:352
	scratch_load_b32 v135, off, off offset:356
	scratch_load_b32 v136, off, off offset:360
	v_dual_mov_b32 v98, v110 :: v_dual_and_b32 v1, 0x80, v237
	v_mov_b32_e32 v97, v96
	v_mov_b32_e32 v99, v147
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v47 :: v_dual_mul_f32 v177, 0xbfb8aa3b, v102
	v_dual_mul_f32 v2, 0xbfb8aa3b, v189 :: v_dual_mul_f32 v173, 0xbfb8aa3b, v90
	v_dual_mul_f32 v180, 0xbfb8aa3b, v222 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_mul_f32_e32 v176, 0xbfb8aa3b, v91
	v_mul_f32_e32 v170, 0xbfb8aa3b, v107
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v3
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v0, 0xbfb8aa3b, v190
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0x42800000, s0
	v_cndmask_b32_e64 v8, 0, 0x42800000, s1
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v47
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v169, 0xbfb8aa3b, v80 :: v_dual_fmac_f32 v6, 0xbfb8aa3b, v189
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v188 :: v_dual_mul_f32 v165, 0xbfb8aa3b, v70
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v5, v5
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v175, 0xbfb8aa3b, v95
	v_exp_f32_e32 v6, v6
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v190
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s0
	v_exp_f32_e32 v8, v8
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s1
	v_mul_f32_e32 v12, 0xbfb8aa3b, v117
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v4, v5, v4
	v_dual_mul_f32 v5, 0xbfb8aa3b, v48 :: v_dual_mul_f32 v140, 0xbfb8aa3b, v86
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v17, v6, v3
	v_dual_mul_f32 v141, 0xbfb8aa3b, v83 :: v_dual_add_f32 v32, 1.0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_mul_f32_e32 v5, 0xbfb8aa3b, v186
	v_mul_f32_e32 v15, 0xbfb8aa3b, v120
	v_ldexp_f32 v16, v2, v0
	v_mul_f32_e32 v2, 0xbfb8aa3b, v187
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v5
	v_ldexp_f32 v18, v8, v7
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v166, 0xbfb8aa3b, v69 :: v_dual_fmac_f32 v3, 0xbfb8aa3b, v48
	v_cndmask_b32_e64 v7, 0, 0x42800000, s0
	v_mul_f32_e32 v6, 0xbfb8aa3b, v185
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v168, 0xbfb8aa3b, v72
	v_exp_f32_e32 v3, v3
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v186
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v6
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v187
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, s0
	v_exp_f32_e32 v7, v7
	v_cndmask_b32_e64 v9, 0, 0x42800000, s1
	v_exp_f32_e32 v5, v5
	v_mul_f32_e32 v10, 0xbfb8aa3b, v118
	v_ldexp_f32 v19, v3, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v184 :: v_dual_mul_f32 v153, 0xbfb8aa3b, v113
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v185
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s1
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v32, v32, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v7, v6
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v20, v5, v2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v5, 0xbfb8aa3b, v183 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v182
	v_mul_f32_e32 v7, 0xbfb8aa3b, v105
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v5
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v6
	v_ldexp_f32 v22, v9, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v2, 0xbfb8aa3b, v49 :: v_dual_fmac_f32 v3, 0xbfb8aa3b, v184
	v_cndmask_b32_e64 v8, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v9, 0, 0x42800000, s1
	v_mul_f32_e32 v156, 0xbfb8aa3b, v211
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v3, v3
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v183 :: v_dual_fmac_f32 v9, 0xbfb8aa3b, v182
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_add_f32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v9
	v_mul_f32_e32 v9, 0xbfb8aa3b, v196
	v_exp_f32_e32 v24, v8
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_ldexp_f32 v26, v3, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v119 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v114
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v154, 0xbfb8aa3b, v208
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_ldexp_f32 v23, v25, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v24, v24, v11
	v_mul_f32_e32 v11, 0xbfb8aa3b, v101
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v49
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v29, 0, 0x42800000, s0
	v_mul_f32_e32 v144, 0xbfb8aa3b, v76
	v_exp_f32_e32 v5, v5
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_add_f32 v21, 1.0, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v28, 0xbfb8aa3b, v88 :: v_dual_fmac_f32 v29, 0xbfb8aa3b, v114
	v_dual_mul_f32 v4, 0xbfb8aa3b, v65 :: v_dual_add_f32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v101
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v27, v5, v2
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v29, v29
	v_exp_f32_e32 v34, v11
	v_cndmask_b32_e64 v31, 0, 0x42800000, s0
	v_mul_f32_e32 v2, 0xbfb8aa3b, v73
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, vcc_lo, v47, v32, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, s1, v189, v17, v189
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v29, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v28, v34, v28
	v_exp_f32_e32 v31, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v17, v17, v189
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v19, v19, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v38, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_add_f32 v27, 1.0, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v142, 0xbfb8aa3b, v84 :: v_dual_fmac_f32 v3, 0xbfb8aa3b, v119
	v_ldexp_f32 v29, v31, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v33, v36, 1.0
	v_div_scale_f32 v31, null, v16, v16, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v3, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v34, v38, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v30, v36
	v_rcp_f32_e32 v30, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_add_f32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v38, v42, v38 :: v_dual_mul_f32 v39, v37, v36
	v_div_scale_f32 v42, null, v18, v18, v188
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v33, v39, v37
	v_fma_f32 v40, -v31, v30, 1.0
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_add_f32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v39, v41, v36 :: v_dual_fmac_f32 v30, v40, v30
	v_div_scale_f32 v40, s0, v190, v16, v190
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_add_f32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v33, v39, v37
	v_dual_mul_f32 v41, v40, v30 :: v_dual_mul_f32 v178, 0xbfb8aa3b, v160
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v179, 0xbfb8aa3b, v217
	v_dual_mul_f32 v174, 0xbfb8aa3b, v89 :: v_dual_mul_f32 v171, 0xbfb8aa3b, v128
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v31, v41, v40
	v_div_fmas_f32 v33, v33, v36, v39
	v_fma_f32 v39, -v42, v44, 1.0
	v_rcp_f32_e32 v36, v46
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v41, v37, v30
	v_div_fixup_f32 v32, v33, v32, v47
	v_fmac_f32_e32 v44, v39, v44
	v_div_scale_f32 v33, s2, v188, v18, v188
	v_mul_f32_e32 v45, v43, v38
	v_fma_f32 v31, -v31, v41, v40
	v_div_scale_f32 v39, s0, v48, v19, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v172, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v167, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v34, v45, v43
	v_div_fmas_f32 v30, v31, v30, v41
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v162, 0xbfb8aa3b, v121 :: v_dual_mul_f32 v163, 0xbfb8aa3b, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v37, v38
	v_fma_f32 v37, -v46, v36, 1.0
	v_div_fixup_f32 v16, v30, v16, v190
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v164, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v122
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v34, v45, v43
	v_mul_f32_e32 v34, v33, v44
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, null, v20, v20, v187
	v_div_scale_f32 v43, null, v21, v21, v186
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v42, v34, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v14, 0xbfb8aa3b, v181 :: v_dual_mul_f32 v155, 0xbfb8aa3b, v210
	v_dual_mul_f32 v8, 0xbfb8aa3b, v161 :: v_dual_mul_f32 v143, 0xbfb8aa3b, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v40, v44
	v_div_fmas_f32 v31, v31, v38, v45
	v_rcp_f32_e32 v38, v37
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v6, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v145, 0xbfb8aa3b, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v31, v17, v189
	v_rcp_f32_e32 v31, v43
	v_fma_f32 v33, -v42, v34, v33
	v_div_scale_f32 v42, null, v22, v22, v185
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v146, 0xbfb8aa3b, v152 :: v_dual_mul_f32 v147, 0xbfb8aa3b, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v37, v38, 1.0
	v_mul_f32_e32 v41, v39, v36
	v_div_fmas_f32 v33, v33, v44, v34
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v43, v31, 1.0
	v_fmac_f32_e32 v38, v40, v38
	v_fma_f32 v30, -v46, v41, v39
	v_rcp_f32_e32 v40, v42
	v_div_scale_f32 v47, s0, v185, v22, v185
	v_fmac_f32_e32 v31, v45, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v30, v36
	v_div_scale_f32 v30, s1, v187, v20, v187
	v_div_scale_f32 v44, s2, v186, v21, v186
	v_fma_f32 v34, -v46, v41, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v39, v30, v38
	v_fma_f32 v45, -v42, v40, 1.0
	v_div_fixup_f32 v18, v33, v18, v188
	v_div_scale_f32 v46, null, v26, v26, v184
	v_div_fmas_f32 v34, v34, v36, v41
	v_fma_f32 v36, -v37, v39, v30
	v_fmac_f32_e32 v40, v45, v40
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v45, v46
	v_div_fixup_f32 v19, v34, v19, v48
	v_fmac_f32_e32 v39, v36, v38
	v_div_scale_f32 v36, null, v27, v27, v49
	v_dual_mul_f32 v34, v47, v40 :: v_dual_mul_f32 v41, v44, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v37, v39, v30
	v_rcp_f32_e32 v37, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v115, v115, v17
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v46, v45, 1.0
	v_fma_f32 v33, -v43, v41, v44
	v_div_fmas_f32 v30, v30, v38, v39
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v148, 0xbfb8aa3b, v158 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v132
	v_dual_mul_f32 v96, 0xbfb8aa3b, v75 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v36, v37, 1.0
	v_div_fixup_f32 v20, v30, v20, v187
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v59 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v60
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v39, v37
	v_fmac_f32_e32 v41, v33, v31
	v_fma_f32 v33, -v42, v34, v47
	v_div_scale_f32 v39, null, v24, v24, v183
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v43, v41, v44
	v_fmac_f32_e32 v34, v33, v40
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v116, v116, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v38, v31, v41
	v_fma_f32 v38, -v42, v34, v47
	v_div_scale_f32 v42, s1, v49, v27, v49
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v21, v31, v21, v186
	v_div_fmas_f32 v34, v38, v40, v34
	v_mul_f32_e32 v40, v42, v37
	v_rcp_f32_e32 v38, v39
	v_fmac_f32_e32 v45, v48, v45
	v_div_scale_f32 v48, s3, v184, v26, v184
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v31, -v36, v40, v42
	v_div_fixup_f32 v22, v34, v22, v185
	v_div_scale_f32 v34, null, v23, v23, v182
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v40, v31, v37
	v_div_scale_f32 v31, s0, v183, v24, v183
	v_mul_f32_e32 v33, v48, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v109, v109, v22 :: v_dual_mul_f32 v110, v236, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v46, v33, v48
	v_fmac_f32_e32 v33, v41, v45
	v_fma_f32 v41, -v39, v38, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v46, v33, v48
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, null, v35, v35, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v30, v45, v33
	v_rcp_f32_e32 v33, v34
	v_rcp_f32_e32 v43, v41
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v28, v28, v101
	v_div_fixup_f32 v26, v30, v26, v184
	v_fma_f32 v30, -v36, v40, v42
	v_mul_f32_e32 v36, v31, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v111, v111, v20 :: v_dual_mul_f32 v108, v108, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v41, v43, 1.0
	v_fma_f32 v42, -v34, v33, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s2, v119, v35, v119
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v46, v44, v43
	v_div_fmas_f32 v30, v30, v37, v40
	v_fma_f32 v37, -v39, v36, v31
	v_fmac_f32_e32 v33, v42, v33
	v_div_scale_f32 v40, null, v25, v25, v114
	v_div_scale_f32 v42, s1, v182, v23, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v38
	v_div_fixup_f32 v27, v30, v27, v49
	v_rcp_f32_e32 v30, v40
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v49, null, v29, v29, v88
	v_fma_f32 v31, -v39, v36, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v106, v106, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v31, v38, v36
	v_fma_f32 v36, -v41, v46, v44
	v_mul_f32_e32 v37, v42, v33
	v_fma_f32 v47, -v40, v30, 1.0
	v_rcp_f32_e32 v38, v49
	v_div_fixup_f32 v24, v31, v24, v183
	v_fmac_f32_e32 v46, v36, v43
	v_fma_f32 v39, -v34, v37, v42
	v_fmac_f32_e32 v30, v47, v30
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v45, v48, 1.0
	v_div_scale_f32 v36, s3, v101, v28, v101
	v_fmac_f32_e32 v37, v39, v33
	v_div_scale_f32 v39, s0, v114, v25, v114
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v100, v100, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v34, v37, v42
	v_mul_f32_e32 v34, v39, v30
	v_fma_f32 v42, -v49, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v42, v38
	v_div_fmas_f32 v31, v31, v33, v37
	v_fma_f32 v33, -v41, v46, v44
	v_fma_f32 v37, -v40, v34, v39
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v42, s1, v88, v29, v88
	v_fmac_f32_e32 v48, v47, v48
	v_div_fmas_f32 v33, v33, v43, v46
	v_fmac_f32_e32 v34, v37, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v42, v38
	v_div_fixup_f32 v23, v31, v23, v182
	v_div_fixup_f32 v33, v33, v35, v119
	v_fma_f32 v35, -v40, v34, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v36, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v179
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v222
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v45, v41, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v119, v94, v32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v31, v48
	v_fma_f32 v31, -v49, v37, v42
	v_div_fmas_f32 v30, v35, v30, v34
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v45, v41, v36
	v_fmac_f32_e32 v37, v31, v38
	v_div_fixup_f32 v25, v30, v25, v114
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v114, v112, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v34, v48, v41
	v_fma_f32 v34, -v49, v37, v42
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v112, v238, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v35, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v31, v28, v101
	v_div_fmas_f32 v34, v34, v38, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	v_cndmask_b32_e64 v31, 0, 0x42800000, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v16, 1.0, v32 :: v_dual_mul_f32 v101, v227, v23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v82, v82, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v217
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v34, v29, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v177
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v160
	v_exp_f32_e32 v17, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v16, v16, v222
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v18, v35
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v19, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v163
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v102
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v17, v17, v30
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v18, v18, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v31, v19, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v17, v17, v217
	v_fmac_f32_e32 v19, v22, v19
	v_div_scale_f32 v22, vcc_lo, v222, v16, v222
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v32, null, v18, v18, v160
	v_rcp_f32_e32 v30, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v34, v22, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v21, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v23, v32
	v_div_scale_f32 v21, s0, v217, v17, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v24, -v31, v34, v22
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v81, v81, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v26, v30, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v24, v19
	v_fma_f32 v24, -v32, v23, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v27, v30
	v_fma_f32 v22, -v31, v34, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, s1, v160, v18, v160
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v88, v235, v33 :: v_dual_mul_f32 v25, v21, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v31, v24, v23
	v_div_fmas_f32 v19, v22, v19, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_scale_f32 v27, null, v20, v20, v102
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v26, v25, v21
	v_div_fixup_f32 v16, v19, v16, v222
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v22, v27
	v_fma_f32 v19, -v32, v31, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v28, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v85, v85, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, s2, v102, v20, v102
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v27, v22, 1.0
	v_fmac_f32_e32 v31, v19, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v22, v28, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v32, v31, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v26, v25, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v19, v33
	v_exp_f32_e32 v28, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v21, v30, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v25, v29, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v21, v17, v217
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v30, -v27, v25, v29
	v_div_fmas_f32 v23, v24, v23, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v28, v26
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v19, v19, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v18, v23, v18, v160
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v34
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v171
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v24, v24, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v30, v22
	v_fma_f32 v28, -v34, v26, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v27, v25, v29
	v_div_scale_f32 v27, null, v21, v21, v95
	v_fmac_f32_e32 v26, v28, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v23, v22, v25
	v_rcp_f32_e32 v23, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v173
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, s0, v91, v19, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v22, v20, v102
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v25, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v102, v99, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v27, v23, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v90
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v34, v29, v25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v99, v98, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v23, v30, v23 :: v_dual_mul_f32 v98, v97, v17
	v_div_scale_f32 v30, s1, v95, v21, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v24, v26
	v_div_scale_f32 v31, null, v20, v20, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v24, v30, v23
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v18, -v34, v29, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v17, v31
	v_fma_f32 v25, -v27, v24, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v28, v22
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v97, v92, v16 :: v_dual_fmac_f32 v24, v25, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v18, v18, v26, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v31, v17, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v18, v18, v19, v91
	v_fma_f32 v19, -v27, v24, v30
	v_div_scale_f32 v25, null, v16, v16, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v26, v25
	v_div_fmas_f32 v19, v19, v23, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v170
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v129
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v19, v21, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v128
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v22, v17
	v_div_scale_f32 v22, s0, v89, v20, v89
	v_fma_f32 v30, -v25, v26, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v32, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v29, v22, v17
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v31, v29, v22
	v_fmac_f32_e32 v26, v30, v26
	v_div_scale_f32 v30, s1, v90, v16, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v24, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v21, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v28, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v27, v30, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v31, v29, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v25, v27, v30
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v33, null, v23, v23, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v24, null, v21, v21, v129
	v_fmac_f32_e32 v27, v31, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v22, v17, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v32, v24
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v22, -v25, v27, v30
	v_rcp_f32_e32 v30, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v17, v20, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v22, v22, v26, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v31, v28
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v164
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v24, v32, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v16, v22, v16, v90
	v_fma_f32 v28, -v33, v30, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v34, v32
	v_div_scale_f32 v27, vcc_lo, v129, v21, v129
	v_fmac_f32_e32 v30, v28, v30
	v_div_scale_f32 v28, s0, v128, v23, v128
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v26, v26, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v20, v28, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v92, v131, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v27, v32
	v_rcp_f32_e32 v34, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v90, v234, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v24, v29, v27
	v_fmac_f32_e32 v29, v16, v32
	v_fma_f32 v16, -v33, v20, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v20, v16, v30
	v_fma_f32 v16, -v31, v34, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v91, v130, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v22, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v33, v20, v28
	v_dual_fmac_f32 v34, v16, v34 :: v_dual_add_f32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v19, null, v17, v17, v80
	v_rcp_f32_e32 v16, v19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v89, v233, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v24, v29, v27
	v_div_scale_f32 v24, s1, v107, v26, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v18, v32, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v168
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v18, v18, v21, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v21, v24, v34
	v_div_fmas_f32 v20, v22, v30, v20
	v_fma_f32 v22, -v19, v16, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v77, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v20, v23, v128
	v_fmac_f32_e32 v16, v22, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v78, v78, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v71
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v72
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v69
	v_exp_f32_e32 v23, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v31, v21, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v21, v27, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v22, v28, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v165
	v_ldexp_f32 v23, v23, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v31, v21, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, s0, v80, v17, v80
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v25, v29, v16
	v_div_scale_f32 v31, null, v23, v23, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v19, v25, v29
	v_rcp_f32_e32 v28, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v25, v32, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v21, v24, v34, v21
	v_fma_f32 v19, -v19, v25, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v30, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v31, v28, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v29, null, v22, v22, v71
	v_div_fmas_f32 v16, v19, v16, v25
	v_fmac_f32_e32 v28, v27, v28
	v_div_scale_f32 v27, vcc_lo, v72, v23, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v25, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v21, v26, v107
	v_mul_f32_e32 v26, v27, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v16, v16, v17, v80
	v_div_scale_f32 v17, null, v24, v24, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v29, v25, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v80, v79, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v19, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v19, v17
	v_fma_f32 v32, -v31, v26, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v79, v127, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v25, v30, v25 :: v_dual_add_f32 v16, 1.0, v16
	v_div_scale_f32 v30, s0, v71, v22, v71
	v_fmac_f32_e32 v26, v32, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v32, null, v16, v16, v70
	v_fma_f32 v21, -v17, v19, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v20, v30, v25
	v_fma_f32 v18, -v31, v26, v27
	v_div_scale_f32 v31, s1, v69, v24, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v19, v21, v19
	v_rcp_f32_e32 v21, v32
	v_fma_f32 v27, -v29, v20, v30
	v_div_fmas_f32 v18, v18, v28, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v28, v31, v19
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v18, v18, v23, v72
	v_fma_f32 v33, -v32, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v21, v33, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v27, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, s2
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v29, v20, v30
	v_div_scale_f32 v30, s2, v70, v16, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v17, v28, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v20, v23, v25, v20
	v_mul_f32_e32 v23, v30, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v162
	v_exp_f32_e32 v27, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v29, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v32, v23, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v20, v22, v71
	v_fma_f32 v17, -v17, v28, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v147
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v29, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v33
	v_ldexp_f32 v26, v27, v26
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v121
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v19, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v32, v23, v30
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v34
	v_ldexp_f32 v25, v29, v25
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v31, null, v26, v26, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v28, v21, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v19, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v15, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v16, v21, v16, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v253, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v23, v23, v123
	v_div_fixup_f32 v17, v17, v24, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v72, v125, v16 :: v_dual_add_f32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v27
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v25, -v31, v15, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v30, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v252, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v19, v19, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v15, v25, v15 :: v_dual_add_f32 v16, 1.0, v16
	v_div_scale_f32 v25, vcc_lo, v133, v26, v133
	v_fma_f32 v24, -v27, v28, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v21, v32
	v_dual_fmac_f32 v28, v24, v28 :: v_dual_mul_f32 v71, v254, v17
	v_div_scale_f32 v17, s0, v123, v23, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v17, v28
	v_mul_f32_e32 v33, v25, v15
	v_fma_f32 v22, -v31, v33, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v33, v22, v15
	v_fma_f32 v22, -v32, v21, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v31, v33, v25
	v_div_scale_f32 v25, null, v16, v16, v120
	v_div_fmas_f32 v15, v20, v15, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v14, v25
	v_fma_f32 v20, -v27, v24, v17
	v_div_fixup_f32 v15, v15, v26, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v20, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, s2, v120, v16, v120
	v_fma_f32 v20, -v25, v14, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v27, v24, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v61, v61, v15 :: v_dual_fmac_f32 v14, v20, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, s1, v121, v19, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v31, 0xbfb8aa3b, v181 :: v_dual_fmac_f32 v20, 0xbfb8aa3b, v122
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v32, v29, v22
	v_fmac_f32_e32 v29, v18, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v17, v17, v28, v24
	v_mul_f32_e32 v24, v26, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v13, v31
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_exp_f32_e32 v12, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v17, v23, v123
	v_fma_f32 v20, -v25, v24, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v24, v20, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v13, v30
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v117
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v12, v12, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v62, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v25, v24, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_add_f32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v32, v29, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v30, null, v13, v13, v181
	v_div_fmas_f32 v21, v22, v21, v29
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v18, v30
	v_div_fmas_f32 v14, v20, v14, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v21, v19, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v12, v12, v122
	v_div_fixup_f32 v14, v14, v16, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v63, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v30, v18, 1.0
	v_rcp_f32_e32 v20, v22
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v64, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v155
	v_ldexp_f32 v21, v21, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v18, v23, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v10, s0, v181, v13, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v118
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v22, v20, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v26, null, v14, v14, v117
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v17, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v23, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v26, v17, 1.0
	v_fmac_f32_e32 v20, v25, v20
	v_div_scale_f32 v25, s1, v122, v12, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v17, v16, v17 :: v_dual_mul_f32 v24, v10, v18
	v_div_scale_f32 v16, s0, v117, v14, v117
	v_fma_f32 v21, -v30, v24, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v21, v18
	v_mul_f32_e32 v21, v25, v20
	v_fma_f32 v19, -v22, v21, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v21, v19, v20
	v_fma_f32 v10, -v30, v24, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v10, v10, v18, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v24, v16, v17
	v_div_scale_f32 v18, null, v15, v15, v118
	v_div_fixup_f32 v10, v10, v13, v181
	v_fma_f32 v13, -v22, v21, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v19, v18
	v_div_fmas_f32 v13, v13, v20, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, s2
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v154
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v153
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v12, v13, v12, v122
	v_fma_f32 v13, -v26, v24, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v211
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v18, v19, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v54, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v13, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v53, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v19, v25, v19
	v_div_scale_f32 v25, s1, v118, v15, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v210
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v26, v24, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v23, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v22, v25, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v26, -v18, v22, v25
	v_div_fmas_f32 v16, v16, v17, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, s2
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v208
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v21, v20
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v113
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v14, v16, v14, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_add_f32 v13, 1.0, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v22, v26, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v55, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v20, v20, v210
	v_div_scale_f32 v21, null, v13, v13, v211
	v_fma_f32 v17, -v18, v22, v25
	v_rcp_f32_e32 v25, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v27, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v148
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v19, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v26, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, vcc_lo, v211, v13, v211
	v_div_fixup_f32 v15, v17, v15, v118
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v23, -v28, v25, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v21, v27, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v56, v56, v15 :: v_dual_fmac_f32 v25, v23, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, s0, v210, v20, v210
	v_fmac_f32_e32 v27, v29, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v26, null, v19, v19, v208
	v_mul_f32_e32 v16, v23, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v14, v17, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v24, v22, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v29, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v15, -v21, v24, v22
	v_fmac_f32_e32 v24, v15, v27
	v_fma_f32 v15, -v28, v16, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v14, -v26, v29, 1.0
	v_fma_f32 v12, -v21, v24, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v14, v29
	v_div_scale_f32 v14, s1, v208, v19, v208
	v_div_fmas_f32 v12, v12, v27, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v12, v12, v13, v211
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v16, v15, v25
	v_div_scale_f32 v15, null, v10, v10, v113
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v196
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v28, v16, v23
	v_rcp_f32_e32 v9, v15
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v13, v14, v29
	v_div_scale_f32 v22, s0, v113, v10, v113
	v_div_fmas_f32 v16, v17, v25, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_exp_f32_e32 v8, v21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v15, v9, 1.0
	v_div_fixup_f32 v16, v16, v20, v210
	v_fma_f32 v20, -v26, v13, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v9, v17, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_ldexp_f32 v7, v8, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v13, v20, v29
	v_mul_f32_e32 v8, v22, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v161
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v15, v8, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_exp_f32_e32 v21, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v14, -v26, v13, v14
	v_div_scale_f32 v24, null, v7, v7, v196
	v_fmac_f32_e32 v8, v23, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v105
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v249, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v124
	v_exp_f32_e32 v6, v20
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v17, v21, v17
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v20, v24
	v_div_fmas_f32 v13, v14, v29, v13
	v_fma_f32 v14, -v15, v8, v22
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v6, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v14, v9, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, null, v15, v15, v161
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v24, v20, 1.0
	v_div_fixup_f32 v8, v8, v10, v113
	v_div_fixup_f32 v13, v13, v19, v208
	v_rcp_f32_e32 v14, v18
	v_div_scale_f32 v10, null, v6, v6, v105
	v_fmac_f32_e32 v20, v17, v20
	v_div_scale_f32 v17, vcc_lo, v196, v7, v196
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v251, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v9, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v9, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v19, v17, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v250, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, s1, v105, v6, v105
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v24, v19, v17
	v_fma_f32 v22, -v18, v14, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v10, v9, 1.0
	v_fmac_f32_e32 v14, v22, v14
	v_div_scale_f32 v22, s0, v161, v15, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v9, v16, v9
	v_fmac_f32_e32 v19, v21, v20
	v_div_scale_f32 v21, null, v8, v8, v124
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v248, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v24, v19, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v16, v21
	v_div_fmas_f32 v12, v12, v20, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v20, v23, v9
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v7, v12, v7, v196
	v_fma_f32 v24, -v21, v16, 1.0
	v_mul_f32_e32 v13, v22, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v37, v231, v7 :: v_dual_fmac_f32 v16, v24, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v18, v13, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v19, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v13, v17, v14 :: v_dual_fmac_f32 v24, 0xbfb8aa3b, v157
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v18, v13, v22
	v_div_scale_f32 v22, s2, v124, v8, v124
	v_fma_f32 v18, -v10, v20, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v19, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v12, v12, v14, v13
	v_mul_f32_e32 v13, v22, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v18, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v146
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v21, v13, v22
	v_div_fixup_f32 v12, v12, v15, v161
	v_fma_f32 v10, -v10, v20, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v13, v18, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v23, null, v17, v17, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v21, -v21, v13, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v152
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v232, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v14, v18, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v10, v9, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v145
	v_exp_f32_e32 v10, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v20, v23
	v_div_fixup_f32 v6, v9, v6, v105
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v39, v159, v6 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v10, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v19, null, v14, v14, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v10, v10, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v22, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v9, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v13, v21, v16, v13
	v_fma_f32 v16, -v23, v20, 1.0
	v_rcp_f32_e32 v21, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v8, v13, v8, v124
	v_fmac_f32_e32 v20, v16, v20
	v_div_scale_f32 v16, vcc_lo, v158, v17, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v25, v16, v20
	v_fma_f32 v15, -v19, v21, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v104, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v8, s0, v157, v14, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v13, -v23, v25, v16
	v_fmac_f32_e32 v21, v15, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v25, v13, v20
	v_fma_f32 v13, -v24, v9, 1.0
	v_fma_f32 v12, -v23, v25, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v9, v13, v9
	v_div_scale_f32 v13, s1, v152, v10, v152
	v_div_scale_f32 v16, null, v6, v6, v103
	v_div_fmas_f32 v12, v12, v20, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v22, v13, v9
	v_rcp_f32_e32 v18, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v7, v12, v17, v158
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v24, v22, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v143
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v93, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v76 :: v_dual_fmac_f32 v22, v12, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v16, v18, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v12, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v13, -v24, v22, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v18, v17, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v12, v12, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v15, v8, v21 :: v_dual_add_f32 v12, 1.0, v12
	v_fma_f32 v20, -v19, v15, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v25, null, v12, v12, v76
	v_fmac_f32_e32 v15, v20, v21
	v_div_scale_f32 v20, s2, v103, v6, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v8, -v19, v15, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v8, v8, v21, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v87
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v142
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v8, v8, v14, v157
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v15, v20, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v74, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v16, v15, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v13, v9, v22
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v19, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v15, v21, v18
	v_rcp_f32_e32 v17, v25
	v_div_fixup_f32 v9, v9, v10, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v14, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v10, -v16, v15, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v96
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v137, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v13, v13, v87
	v_div_fmas_f32 v10, v10, v18, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v25, v17, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v140
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v15, v16
	v_div_scale_f32 v18, s0, v76, v12, v76
	v_div_fixup_f32 v6, v10, v6, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v14, v14, v23
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v138, v6
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v16, v15, 1.0
	v_div_scale_f32 v22, null, v6, v6, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v15, v21, v15
	v_fmac_f32_e32 v17, v19, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, s1, v87, v13, v87
	v_rcp_f32_e32 v8, v22
	v_dual_mul_f32 v20, v18, v17 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v86
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v14, -v25, v20, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v14, v17
	v_mul_f32_e32 v14, v21, v15
	v_fma_f32 v9, -v25, v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v18, -v16, v14, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v19, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v14, v18, v15
	v_div_fmas_f32 v9, v9, v17, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v10, -v22, v8, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v141
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v9, v9, v12, v76
	v_fma_f32 v12, -v16, v14, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v8, v10, v8
	v_div_scale_f32 v10, s0, v84, v6, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v20, v10, v8
	v_div_fmas_f32 v12, v12, v15, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v83
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v15, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v12, v12, v13, v87
	v_fma_f32 v13, -v22, v20, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v15, 0xbfb8aa3b, v75 :: v_dual_fmac_f32 v20, v13, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v7, v7, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v10, -v22, v20, v10
	v_rcp_f32_e32 v17, v16
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v19, v18
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v8, v10, v8, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v14, v15, v14
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v16, v17, 1.0
	v_div_fixup_f32 v6, v8, v6, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v21, v17
	v_div_scale_f32 v21, s1, v86, v7, v86
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v150, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v14, v14, v75
	v_mul_f32_e32 v13, v21, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v22, -v16, v13, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v13, v22, v17 :: v_dual_mul_f32 v22, v139, v12
	v_fma_f32 v10, -v16, v13, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v10, v10, v17, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v19, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v7, v10, v7, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v18, v26
	v_div_scale_f32 v18, s0, v75, v14, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v24, v151, v7 :: v_dual_add_f32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v8, v18, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v10, v16
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v5, 1.0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v13, v13, v132
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v15, null, v5, v5, v83
	v_div_scale_f32 v17, vcc_lo, v83, v5, v83
	v_div_scale_f32 v10, null, v6, v6, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v2, v15
	v_rcp_f32_e32 v27, v20
	v_fma_f32 v21, -v15, v2, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v2, v21, v2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v149, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v19, v17, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v15, v19, v17
	v_fmac_f32_e32 v19, v7, v2
	v_fma_f32 v7, -v25, v8, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v9, -v15, v19, v17
	v_fmac_f32_e32 v8, v7, v26
	v_fma_f32 v7, -v20, v27, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v2, v9, v2, v19
	v_fma_f32 v9, -v25, v8, v18
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, s0, v73, v6, v73
	v_div_fmas_f32 v4, v9, v26, v8
	v_rcp_f32_e32 v9, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v2, v5, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v4, v4, v14, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v10, v9, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v60
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v9, v0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v0, v14
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v0, v0, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v7, v27
	v_div_scale_f32 v7, s1, v132, v13, v132
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v8, v7, v27
	v_fma_f32 v3, -v20, v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v8, v3, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v3, v15
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v20, v8, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v67, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v3, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v7, v7, v27, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v8, v17, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v12, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v7, v7, v13, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v10, v8, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_fmac_f32 v8, v16, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v14, null, v3, v3, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v12, v15
	v_ldexp_f32 v5, v5, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v0, v0, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v13, v14
	v_fma_f32 v10, -v10, v8, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v19, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v8, v10, v9, v8
	v_div_scale_f32 v15, null, v12, v12, v59
	v_div_scale_f32 v10, vcc_lo, v65, v3, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v16, -v14, v13, 1.0
	v_rcp_f32_e32 v25, v15
	v_div_fixup_f32 v6, v8, v6, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v13, v16, v13
	v_fma_f32 v16, -v11, v19, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v126, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v27, v10, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v19, v16, v19
	v_div_scale_f32 v16, s0, v60, v0, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v15, v25, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v28, v16, v19
	v_div_scale_f32 v9, null, v5, v5, v58
	v_div_scale_f32 v34, s2, v58, v5, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v9
	v_fma_f32 v18, -v9, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v26, v18, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v68, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v14, v27, v10
	v_mul_f32_e32 v35, v34, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, v6, v13
	v_fma_f32 v6, -v11, v28, v16
	v_fmac_f32_e32 v25, v8, v25
	v_div_scale_f32 v8, s1, v59, v12, v59
	v_fma_f32 v4, -v14, v27, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v6, v19
	v_fma_f32 v6, -v9, v35, v34
	v_mul_f32_e32 v33, v8, v25
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v10, |v56|, |v111|, |v110|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v4, v4, v13, v27
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v35, v6, v26
	v_fma_f32 v7, -v15, v33, v8
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, |v29|, |v30|, |v31|
	v_max3_f32 v14, |v32|, |v106|, |v100|
	s_mov_b32 s0, 0x76543210
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v27, 3, v1
.Ltmp13:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v7, v25
	v_fma_f32 v7, -v11, v28, v16
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v11, |v45|, |v46|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp15:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v15, v33, v8
	v_fma_f32 v8, -v9, v35, v34
	v_div_fmas_f32 v7, v7, v19, v28
	s_mov_b32 vcc_lo, s1
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, |v53|, |v54|, |v55|
.Ltmp17:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v6, v6, v25, v33
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v0, v7, v0, v60
	v_div_fmas_f32 v8, v8, v26, v35
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v26, v66, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v4, v3, v65
	v_div_fixup_f32 v3, v6, v12, v59
.Ltmp18:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, |v99|, |v89|, |v90|
.Ltmp19:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v8, v5, v58
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v5, |v97|, |v98|
	v_max3_f32 v7, |v77|, |v78|, |v79|
	v_max3_f32 v8, |v80|, |v116|, |v115|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v16, v57, v3 :: v_dual_mul_f32 v15, v52, v4
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, |v91|, |v92|, |v119|
	v_max3_f32 v4, v5, |v102|, v6
	v_max3_f32 v5, v7, v8, |v114|
	v_max_f32_e64 v6, |v69|, |v70|
	v_max3_f32 v7, |v71|, |v61|, |v62|
	v_max3_f32 v12, |v47|, |v37|, |v38|
	v_max3_f32 v8, |v63|, |v64|, |v112|
.Ltmp23:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v50, v0
	v_mul_f32_e32 v25, v51, v2
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, |v72|, v7
	v_max3_f32 v7, v9, v10, |v109|
	v_max3_f32 v9, |v39|, |v40|, |v108|
	v_max3_f32 v10, v11, |v48|, v12
	v_max3_f32 v11, v13, v14, |v101|
	v_max3_f32 v0, v4, v3, v5
	v_max3_f32 v3, v6, v8, v7
	v_max_f32_e64 v2, |v21|, |v22|
	v_max3_f32 v5, |v23|, |v26|, |v20|
	v_max3_f32 v4, v10, v9, v11
	v_max3_f32 v7, |v25|, |v19|, |v16|
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v9, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 0x60, v237
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v8, |v15|, |v81|, |v82|
	v_max3_f32 v6, |v18|, |v17|, |v88|
	v_max3_f32 v2, v2, |v24|, v5
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v10, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v7, v7, v8, |v85|
	v_max_f32_e32 v8, v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v9, v10, v10 :: v_dual_lshlrev_b32 v12, 1, v1
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v6, v2, v6, v7
	v_max_f32_e32 v2, v0, v8
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v237
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v9
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v7, 4, v237
	v_lshlrev_b32_e32 v9, 4, v237
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v5
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v8, v0, 9, 0
	v_lshlrev_b32_e32 v11, 5, v0
	v_permlanex16_b32 v5, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 8, v237
	v_lshl_add_u32 v28, v7, 6, 0
	v_lshl_add_u32 v8, v7, 2, v8
	v_and_or_b32 v9, 0x680, v9, v11
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v13, v11, v14
	v_add_nc_u32_e32 v1, 0, v1
	v_lshl_add_u32 v8, v10, 4, v8
	v_xor_b32_e32 v9, v9, v14
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v6, v5 :: v_dual_lshlrev_b32 v10, 3, v10
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v0, v0, 4, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v6, v8, v12, v13
	v_add3_u32 v8, v28, v27, v9
	ds_store_b128 v6, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v6, v2
	v_mov_b32_e32 v8, v3
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v2, v2, v6 :: v_dual_max_f32 v3, v3, v8
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v8, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v8, v8
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v9, v4
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v2, v2, v8
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v9, v9
	v_dual_max_f32 v4, v4, v6 :: v_dual_max_f32 v13, v5, v5
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v5, v5, v5
	v_dual_max_f32 v4, v4, v6 :: v_dual_max_f32 v5, v13, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v13, v5
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v9, v3 :: v_dual_max_f32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v13, v13
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v6 :: v_dual_max_f32 v5, v5, v8
	v_dual_max_f32 v9, v9, v9 :: v_dual_lshlrev_b32 v6, 5, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v8, v5 :: v_dual_max_f32 v3, v3, v9
	v_add3_u32 v0, v0, v6, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v9, v2
	v_dual_mov_b32 v13, v3 :: v_dual_max_f32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v8 :: v_dual_and_b32 v8, 63, v237
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v13, v13, v13
	v_max_f32_e32 v2, v2, v9
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v9, 1, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v13
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v1, v9, v10
.Ltmp58:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v10, 4, v135
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v1, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v0
.Ltmp60:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v6, 48, v10
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v8
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v28, 32, v10
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v2, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_add_co_u32 v6, s0, s34, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v7, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v5, v5, v5
	v_div_scale_f32 v9, null, 0x40e00000, 0x40e00000, v0
	v_div_scale_f32 v34, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[42:43], v[6:7]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v13, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v9, v13, 1.0
	v_dual_max_f32 v4, v4, v4 :: v_dual_fmac_f32 v13, v27, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, 0x2b8cbccc, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v27, s0, s34, v28
	v_add_co_ci_u32_e64 v28, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v36, v34, v13
	v_div_scale_f32 v35, null, 0x40e00000, 0x40e00000, v33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[40:41], v[6:7]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v6, 16, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v4, -v9, v36, v34
	v_rcp_f32_e32 v41, v35
	v_max_f32_e32 v3, v3, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[40:41], v[27:28]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v36, v4, v13 :: v_dual_max_f32 v7, 0x2b8cbccc, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v6, -v9, v36, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v35, v41, 1.0
	v_div_scale_f32 v9, s6, v33, 0x40e00000, v33
	v_div_scale_f32 v43, null, 0x40e00000, 0x40e00000, v7
	v_fmac_f32_e32 v41, v42, v41
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v6, v6, v13, v36
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[42:43], v[27:28]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v28.h, 0
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_mul_f32_e32 v13, v9, v41
	v_rcp_f32_e32 v34, v43
	v_div_fixup_f32 v0, v6, 0x40e00000, v0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[40:41], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[42:43], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v6, -v35, v13, v9
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v13, v6, v41
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v6.l, v0.h
	v_mov_b16_e32 v6.h, v28.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v5, 0x2b8cbccc, v5
	v_fma_f32 v27, -v43, v34, 1.0
	v_fma_f32 v3, -v35, v13, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v42, null, 0x40e00000, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v27, v34
	v_div_scale_f32 v27, s7, v7, 0x40e00000, v7
	v_rcp_f32_e32 v36, v42
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v9, v0, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v13, v3, v41, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v49, v27, v34
	s_mov_b32 vcc_lo, s7
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v10
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v13, v13, 0x40e00000, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v6, -v43, v49, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v44, -v42, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v28.l, v13.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v49, v6, v34 :: v_dual_and_b32 v6, 0xffff0000, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[40:41], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v36, v44, v36
	v_div_scale_f32 v44, s8, v5, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v57, s10, v99, v6, v99
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v27, -v43, v49, v27
	v_mul_f32_e32 v35, v44, v36
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[42:43], v[3:4]
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v51, null, v6, v6, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v27, v27, v34, v49
	v_fma_f32 v0, -v42, v35, v44
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v49, s8, v98, v6, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v7, v27, 0x40e00000, v7
	v_fmac_f32_e32 v35, v0, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v6, v6, v97
	v_div_scale_f32 v50, s9, v102, v6, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v34, -v42, v35, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v33, v0
	v_div_scale_f32 v42, null, v6, v6, v102
	v_div_scale_f32 v44, null, v6, v6, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v27, v34, v36, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v34, null, v6, v6, v98
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v35, 1, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v36, -v0, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v41, v34
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v5, v27, 0x40e00000, v5
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v27.l, v7.h
	v_mov_b16_e32 v27.h, v28.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v33, v36, v33
	v_div_scale_f32 v36, vcc_lo, v97, v6, v97
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v13, v35, 0x7fff
	v_mov_b16_e32 v28.l, v5.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v35, v36, v33 :: v_dual_and_b32 v4, 1, v27
	v_fma_f32 v27, -v34, v41, 1.0
	v_div_scale_f32 v58, null, v6, v6, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v13, v7, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v7, -v0, v35, v36
	v_fmac_f32_e32 v41, v27, v41
	v_div_scale_f32 v68, null, v6, v6, v79
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v5, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v35, v7, v33
	v_rcp_f32_e32 v5, v44
	v_mul_f32_e32 v7, v49, v41
	v_fma_f32 v28, -v42, v43, 1.0
	v_div_scale_f32 v74, null, v6, v6, v80
	v_fma_f32 v0, -v0, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v34, v7, v49
	v_fmac_f32_e32 v43, v28, v43
	v_div_scale_f32 v76, null, v6, v6, v114
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v28, -v44, v5, 1.0
	v_div_fmas_f32 v0, v0, v33, v35
	v_fmac_f32_e32 v7, v36, v41
	v_rcp_f32_e32 v36, v51
	v_mul_f32_e32 v35, v50, v43
	v_fmac_f32_e32 v5, v28, v5
	v_div_fixup_f32 v28, v0, v6, v97
	v_fma_f32 v0, -v34, v7, v49
	v_rcp_f32_e32 v49, v58
	v_fma_f32 v33, -v42, v35, v50
	v_mul_f32_e32 v34, v57, v5
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v52, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v59, -v51, v36, 1.0
	v_div_fmas_f32 v0, v0, v41, v7
	v_fmac_f32_e32 v35, v33, v43
	v_fma_f32 v7, -v44, v34, v57
	v_div_scale_f32 v41, s8, v89, v6, v89
	v_fmac_f32_e32 v36, v59, v36
	v_fma_f32 v59, -v58, v49, 1.0
	v_div_fixup_f32 v33, v0, v6, v98
	v_fma_f32 v0, -v42, v35, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v34, v7, v5 :: v_dual_mul_f32 v7, v41, v36
	v_fmac_f32_e32 v49, v59, v49
	v_div_scale_f32 v42, s11, v90, v6, v90
	v_div_scale_f32 v50, null, v6, v6, v91
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v59, null, v6, v6, v92
	v_div_fmas_f32 v0, v0, v43, v35
	v_fma_f32 v35, -v44, v34, v57
	v_fma_f32 v43, -v51, v7, v41
	v_rcp_f32_e32 v44, v50
	v_mul_f32_e32 v57, v42, v49
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v7, v43, v36
	v_rcp_f32_e32 v43, v59
	v_fma_f32 v60, -v58, v57, v42
	v_div_fmas_f32 v5, v35, v5, v34
	v_div_fixup_f32 v34, v0, v6, v102
	v_fma_f32 v0, -v51, v7, v41
	v_fma_f32 v65, -v50, v44, 1.0
	v_fmac_f32_e32 v57, v60, v49
	v_div_scale_f32 v51, null, v6, v6, v119
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v35, v5, v6, v99
	v_fmac_f32_e32 v44, v65, v44
	v_div_scale_f32 v5, s9, v91, v6, v91
	v_fma_f32 v41, -v59, v43, 1.0
	v_div_fmas_f32 v0, v0, v36, v7
	v_fma_f32 v7, -v58, v57, v42
	v_rcp_f32_e32 v58, v51
	v_mul_f32_e32 v42, v5, v44
	v_fmac_f32_e32 v43, v41, v43
	v_div_scale_f32 v60, s8, v92, v6, v92
	v_div_scale_f32 v65, null, v6, v6, v77
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v36, v0, v6, v89
	v_div_fmas_f32 v7, v7, v49, v57
	v_fma_f32 v49, -v50, v42, v5
	v_mul_f32_e32 v57, v60, v43
	v_fma_f32 v66, -v51, v58, 1.0
	v_rcp_f32_e32 v67, v65
	v_div_fixup_f32 v41, v7, v6, v90
	v_fmac_f32_e32 v42, v49, v44
	v_fma_f32 v0, -v59, v57, v60
	v_fmac_f32_e32 v58, v66, v58
	v_div_scale_f32 v7, s10, v119, v6, v119
	v_div_scale_f32 v66, null, v6, v6, v78
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v73, 0xffff0000, v13
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v49, -v65, v67, 1.0
	v_fma_f32 v5, -v50, v42, v5
	v_dual_fmac_f32 v57, v0, v43 :: v_dual_mul_f32 v0, v7, v58
	v_rcp_f32_e32 v50, v66
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v67, v49, v67
	v_div_scale_f32 v49, s11, v77, v6, v77
	v_div_fmas_f32 v5, v5, v44, v42
	v_fma_f32 v44, -v51, v0, v7
	v_fma_f32 v42, -v59, v57, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v59, v49, v67
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v60, -v66, v50, 1.0
	v_fmac_f32_e32 v0, v44, v58
	v_div_fmas_f32 v43, v42, v43, v57
	v_rcp_f32_e32 v57, v68
	v_fma_f32 v44, -v65, v59, v49
	v_fmac_f32_e32 v50, v60, v50
	v_div_scale_f32 v60, s8, v78, v6, v78
	v_div_fixup_f32 v42, v5, v6, v91
	v_fma_f32 v5, -v51, v0, v7
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v59, v44, v67
	v_mul_f32_e32 v7, v60, v50
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v44, -v68, v57, 1.0
	v_div_fmas_f32 v0, v5, v58, v0
	v_rcp_f32_e32 v58, v74
	v_fma_f32 v5, -v65, v59, v49
	v_fma_f32 v49, -v66, v7, v60
	v_div_scale_f32 v65, null, v6, v6, v116
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v57, v44, v57
	v_div_scale_f32 v51, s9, v79, v6, v79
	v_div_fmas_f32 v5, v5, v67, v59
	v_fmac_f32_e32 v7, v49, v50
	v_rcp_f32_e32 v59, v65
	v_fma_f32 v75, -v74, v58, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v27, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v67, v51, v57
	v_div_fixup_f32 v44, v0, v6, v119
	v_fma_f32 v0, -v66, v7, v60
	v_fmac_f32_e32 v58, v75, v58
	v_div_scale_f32 v75, null, v6, v6, v115
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v49, v5, v6, v77
	v_fma_f32 v5, -v68, v67, v51
	v_div_scale_f32 v60, s10, v80, v6, v80
	v_fma_f32 v66, -v65, v59, 1.0
	v_div_fmas_f32 v0, v0, v50, v7
	v_rcp_f32_e32 v7, v75
	v_fmac_f32_e32 v67, v5, v57
	v_mul_f32_e32 v5, v60, v58
	v_fmac_f32_e32 v59, v66, v59
	v_div_scale_f32 v66, s8, v116, v6, v116
	v_rcp_f32_e32 v77, v76
	v_div_fixup_f32 v50, v0, v6, v78
	v_fma_f32 v0, -v68, v67, v51
	v_fma_f32 v51, -v74, v5, v60
	v_mul_f32_e32 v68, v66, v59
	v_fma_f32 v78, -v75, v7, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v43, v43, v6, v92
	v_div_fmas_f32 v0, v0, v57, v67
	v_fmac_f32_e32 v5, v51, v58
	v_fma_f32 v57, -v65, v68, v66
	v_fmac_f32_e32 v7, v78, v7
	v_fma_f32 v78, -v76, v77, 1.0
	v_div_scale_f32 v67, s9, v115, v6, v115
	v_div_fixup_f32 v51, v0, v6, v79
	v_fma_f32 v0, -v74, v5, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v68, v57, v59 :: v_dual_fmac_f32 v77, v78, v77
	v_div_scale_f32 v78, null, v73, v73, v69
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v60, v67, v7
	v_div_scale_f32 v74, s11, v114, v6, v114
	v_div_fmas_f32 v0, v0, v58, v5
	v_fma_f32 v5, -v65, v68, v66
	v_rcp_f32_e32 v65, v78
	v_fma_f32 v57, -v75, v60, v67
	v_mul_f32_e32 v66, v74, v77
	v_div_scale_f32 v79, null, v73, v73, v70
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v60, v57, v7
	v_div_fmas_f32 v5, v5, v59, v68
	v_rcp_f32_e32 v68, v79
	v_fma_f32 v59, -v76, v66, v74
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v83, -v78, v65, 1.0
	v_div_fixup_f32 v57, v0, v6, v80
	v_div_fixup_f32 v58, v5, v6, v116
	v_fma_f32 v0, -v75, v60, v67
	v_fmac_f32_e32 v66, v59, v77
	v_fmac_f32_e32 v65, v83, v65
	v_div_scale_f32 v5, s8, v69, v73, v69
	v_div_scale_f32 v67, null, v73, v73, v72
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v59, -v79, v68, 1.0
	v_div_fmas_f32 v0, v0, v7, v60
	v_fma_f32 v7, -v76, v66, v74
	v_mul_f32_e32 v74, v5, v65
	v_rcp_f32_e32 v75, v67
	v_div_scale_f32 v80, null, v73, v73, v71
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v68, v59, v68
	v_div_scale_f32 v76, s9, v70, v73, v70
	v_div_fmas_f32 v7, v7, v77, v66
	v_fma_f32 v66, -v78, v74, v5
	v_rcp_f32_e32 v84, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v77, v76, v68
	v_fma_f32 v83, -v67, v75, 1.0
	v_div_fixup_f32 v60, v7, v6, v114
	v_fmac_f32_e32 v74, v66, v65
	v_div_scale_f32 v7, null, v73, v73, v61
	v_div_fixup_f32 v59, v0, v6, v115
	v_fma_f32 v0, -v79, v77, v76
	v_fmac_f32_e32 v75, v83, v75
	v_div_scale_f32 v6, s10, v72, v73, v72
	v_fma_f32 v66, -v80, v84, 1.0
	v_fma_f32 v5, -v78, v74, v5
	v_rcp_f32_e32 v78, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v77, v0, v68 :: v_dual_mul_f32 v0, v6, v75
	v_fmac_f32_e32 v84, v66, v84
	v_div_scale_f32 v83, s11, v71, v73, v71
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v66, -v67, v0, v6
	v_div_fmas_f32 v5, v5, v65, v74
	v_fma_f32 v65, -v79, v77, v76
	v_mul_f32_e32 v74, v83, v84
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v76, -v7, v78, 1.0
	v_div_scale_f32 v79, null, v73, v73, v62
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v0, v66, v75
	v_div_fmas_f32 v68, v65, v68, v77
	v_rcp_f32_e32 v77, v79
	v_fma_f32 v86, -v80, v74, v83
	v_fmac_f32_e32 v78, v76, v78
	v_div_scale_f32 v76, s8, v61, v73, v61
	v_div_fixup_f32 v65, v5, v73, v69
	v_fma_f32 v5, -v67, v0, v6
	v_fmac_f32_e32 v74, v86, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v6, v76, v78
	v_div_scale_f32 v69, null, v73, v73, v63
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v66, v68, v73, v70
	v_fma_f32 v67, -v79, v77, 1.0
	v_div_fmas_f32 v0, v5, v75, v0
	v_fma_f32 v5, -v80, v74, v83
	v_fma_f32 v68, -v7, v6, v76
	v_rcp_f32_e32 v70, v69
	v_div_scale_f32 v80, null, v73, v73, v64
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v77, v67, v77
	v_div_scale_f32 v75, s9, v62, v73, v62
	v_div_fmas_f32 v5, v5, v84, v74
	v_fmac_f32_e32 v6, v68, v78
	v_rcp_f32_e32 v74, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v83, v75, v77
	v_fma_f32 v84, -v69, v70, 1.0
	v_div_fixup_f32 v67, v0, v73, v72
	v_fma_f32 v0, -v7, v6, v76
	v_div_scale_f32 v72, null, v73, v73, v112
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v68, v5, v73, v71
	v_fma_f32 v5, -v79, v83, v75
	v_fmac_f32_e32 v70, v84, v70
	v_div_scale_f32 v7, s10, v63, v73, v63
	v_fma_f32 v71, -v80, v74, 1.0
	v_div_fmas_f32 v0, v0, v78, v6
	v_rcp_f32_e32 v6, v72
	v_fmac_f32_e32 v83, v5, v77
	v_mul_f32_e32 v5, v7, v70
	v_fmac_f32_e32 v74, v71, v74
	v_div_scale_f32 v71, s8, v64, v73, v64
	v_div_scale_f32 v76, null, v73, v73, v53
	v_div_fixup_f32 v61, v0, v73, v61
	v_fma_f32 v0, -v79, v83, v75
	v_fma_f32 v75, -v69, v5, v7
	v_mul_f32_e32 v78, v71, v74
	v_rcp_f32_e32 v79, v76
	v_fma_f32 v84, -v72, v6, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v5, v75, v70
	v_div_fmas_f32 v0, v0, v77, v83
	v_fma_f32 v75, -v80, v78, v71
	v_fmac_f32_e32 v6, v84, v6
	v_div_scale_f32 v77, s9, v112, v73, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v62, v0, v73, v62
	v_fma_f32 v83, -v76, v79, 1.0
	v_fma_f32 v0, -v69, v5, v7
	v_fmac_f32_e32 v78, v75, v74
	v_mul_f32_e32 v7, v77, v6
	v_div_scale_f32 v75, null, v73, v73, v54
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v79, v83, v79
	v_div_scale_f32 v69, s11, v53, v73, v53
	v_div_fmas_f32 v0, v0, v70, v5
	v_fma_f32 v5, -v80, v78, v71
	v_fma_f32 v70, -v72, v7, v77
	v_rcp_f32_e32 v71, v75
	v_div_scale_f32 v83, null, v73, v73, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v80, v69, v79 :: v_dual_fmac_f32 v7, v70, v6
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v70, v83
	v_div_fmas_f32 v5, v5, v74, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v74, -v76, v80, v69
	v_div_fixup_f32 v63, v0, v73, v63
	v_fma_f32 v78, -v75, v71, 1.0
	v_fma_f32 v0, -v72, v7, v77
	v_div_fixup_f32 v64, v5, v73, v64
	v_fmac_f32_e32 v80, v74, v79
	v_div_scale_f32 v5, s8, v54, v73, v54
	v_fmac_f32_e32 v71, v78, v71
	v_fma_f32 v72, -v83, v70, 1.0
	v_div_scale_f32 v74, null, v73, v73, v56
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v77, null, v73, v73, v111
	v_div_fmas_f32 v0, v0, v6, v7
	v_fma_f32 v6, -v76, v80, v69
	v_dual_mul_f32 v7, v5, v71 :: v_dual_fmac_f32 v70, v72, v70
	v_rcp_f32_e32 v72, v74
	v_div_scale_f32 v76, s9, v55, v73, v55
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v78, -v75, v7, v5
	v_div_fmas_f32 v6, v6, v79, v80
	v_mul_f32_e32 v79, v76, v70
	v_rcp_f32_e32 v84, v77
	v_div_fixup_f32 v69, v0, v73, v112
	v_fmac_f32_e32 v7, v78, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v74, v72, 1.0
	v_fma_f32 v0, -v83, v79, v76
	v_div_fixup_f32 v53, v6, v73, v53
	v_div_scale_f32 v6, s10, v56, v73, v56
	v_fmac_f32_e32 v72, v80, v72
	v_div_scale_f32 v78, null, v73, v73, v110
	v_fma_f32 v5, -v75, v7, v5
	v_fmac_f32_e32 v79, v0, v70
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v80, -v77, v84, 1.0
	v_mul_f32_e32 v0, v6, v72
	v_rcp_f32_e32 v75, v78
	v_div_fmas_f32 v5, v5, v71, v7
	v_fma_f32 v7, -v83, v79, v76
	v_div_scale_f32 v86, null, v73, v73, v109
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v84, v80, v84
	v_div_scale_f32 v80, s11, v111, v73, v111
	v_fma_f32 v71, -v74, v0, v6
	v_div_fmas_f32 v7, v7, v70, v79
	v_rcp_f32_e32 v79, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v76, v80, v84
	v_fma_f32 v83, -v78, v75, 1.0
	v_fmac_f32_e32 v0, v71, v72
	v_div_scale_f32 v71, s8, v110, v73, v110
	v_fma_f32 v70, -v77, v76, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v75, v83, v75
	v_div_fixup_f32 v54, v5, v73, v54
	v_div_fixup_f32 v55, v7, v73, v55
	v_fma_f32 v5, -v74, v0, v6
	v_fma_f32 v7, -v86, v79, 1.0
	v_div_scale_f32 v74, null, v52, v52, v45
	v_fmac_f32_e32 v76, v70, v84
	v_mul_f32_e32 v6, v71, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v7, v79
	v_rcp_f32_e32 v7, v74
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v5, v72, v0
	v_fma_f32 v5, -v77, v76, v80
	v_fma_f32 v70, -v78, v6, v71
	v_div_scale_f32 v77, null, v52, v52, v46
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v72, s9, v109, v73, v109
	v_div_fmas_f32 v5, v5, v84, v76
	v_fmac_f32_e32 v6, v70, v75
	v_rcp_f32_e32 v76, v77
	v_fma_f32 v83, -v74, v7, 1.0
	v_mul_f32_e32 v80, v72, v79
	v_div_fixup_f32 v56, v0, v73, v56
	v_fma_f32 v0, -v78, v6, v71
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v7, v83, v7
	v_div_scale_f32 v83, null, v52, v52, v48
	v_div_fixup_f32 v70, v5, v73, v111
	v_fma_f32 v5, -v86, v80, v72
	v_div_scale_f32 v78, s10, v45, v52, v45
	v_fma_f32 v71, -v77, v76, 1.0
	v_div_fmas_f32 v0, v0, v75, v6
	v_rcp_f32_e32 v6, v83
	v_fmac_f32_e32 v80, v5, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v5, v78, v7 :: v_dual_fmac_f32 v76, v71, v76
	v_div_scale_f32 v75, s8, v46, v52, v46
	v_div_scale_f32 v84, null, v52, v52, v47
	v_div_fixup_f32 v71, v0, v73, v110
	v_fma_f32 v0, -v86, v80, v72
	v_fma_f32 v72, -v74, v5, v78
	v_mul_f32_e32 v86, v75, v76
	v_rcp_f32_e32 v87, v84
	v_fma_f32 v89, -v83, v6, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v5, v72, v7
	v_div_fmas_f32 v0, v0, v79, v80
	v_fma_f32 v79, -v77, v86, v75
	v_fmac_f32_e32 v6, v89, v6
	v_div_scale_f32 v80, s9, v48, v52, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v72, v0, v73, v109
	v_fma_f32 v89, -v84, v87, 1.0
	v_fma_f32 v0, -v74, v5, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v86, v79, v76 :: v_dual_mul_f32 v73, v80, v6
	v_div_scale_f32 v78, null, v52, v52, v37
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v74, s11, v47, v52, v47
	v_div_fmas_f32 v0, v0, v7, v5
	v_fma_f32 v5, -v77, v86, v75
	v_fma_f32 v7, -v83, v73, v80
	v_rcp_f32_e32 v75, v78
	v_div_scale_f32 v79, null, v52, v52, v38
	v_mul_f32_e32 v77, v74, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v7, v6
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v7, v79
	v_div_fmas_f32 v5, v5, v76, v86
	v_fma_f32 v76, -v84, v77, v74
	v_div_fixup_f32 v45, v0, v52, v45
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v86, -v78, v75, 1.0
	v_fma_f32 v0, -v83, v73, v80
	v_div_fixup_f32 v46, v5, v52, v46
	v_fmac_f32_e32 v77, v76, v87
	v_div_scale_f32 v5, s8, v37, v52, v37
	v_fmac_f32_e32 v75, v86, v75
	v_fma_f32 v76, -v79, v7, 1.0
	v_div_scale_f32 v80, null, v52, v52, v39
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v83, null, v52, v52, v40
	v_div_fmas_f32 v0, v0, v6, v73
	v_fma_f32 v6, -v84, v77, v74
	v_mul_f32_e32 v73, v5, v75
	v_fmac_f32_e32 v7, v76, v7
	v_rcp_f32_e32 v74, v80
	v_div_scale_f32 v76, s9, v38, v52, v38
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v48, v0, v52, v48
	v_div_fmas_f32 v6, v6, v87, v77
	v_fma_f32 v77, -v78, v73, v5
	v_mul_f32_e32 v84, v76, v7
	v_rcp_f32_e32 v87, v83
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v86, -v80, v74, 1.0
	v_fmac_f32_e32 v73, v77, v75
	v_fma_f32 v0, -v79, v84, v76
	v_div_fixup_f32 v47, v6, v52, v47
	v_div_scale_f32 v6, s10, v39, v52, v39
	v_fmac_f32_e32 v74, v86, v74
	v_div_scale_f32 v77, null, v52, v52, v108
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v83, v87, 1.0
	v_fma_f32 v5, -v78, v73, v5
	v_fmac_f32_e32 v84, v0, v7
	v_mul_f32_e32 v0, v6, v74
	v_rcp_f32_e32 v78, v77
	v_fmac_f32_e32 v87, v86, v87
	v_div_scale_f32 v86, s11, v40, v52, v40
	v_div_fmas_f32 v5, v5, v75, v73
	v_fma_f32 v73, -v79, v84, v76
	v_div_scale_f32 v89, null, v52, v52, v29
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v75, -v80, v0, v6
	v_mul_f32_e32 v76, v86, v87
	v_div_fmas_f32 v7, v73, v7, v84
	v_rcp_f32_e32 v73, v89
	v_fma_f32 v79, -v77, v78, 1.0
	v_fmac_f32_e32 v0, v75, v74
	v_fma_f32 v75, -v83, v76, v86
	v_div_fixup_f32 v38, v7, v52, v38
	v_div_fixup_f32 v37, v5, v52, v37
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, s8, v108, v52, v108
	v_fmac_f32_e32 v76, v75, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v7, -v89, v73, 1.0
	v_div_scale_f32 v75, null, v52, v52, v30
	v_fma_f32 v5, -v80, v0, v6
	v_mul_f32_e32 v6, v79, v78
	v_fmac_f32_e32 v73, v7, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v7, v75
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v80, s9, v29, v52, v29
	v_div_fmas_f32 v0, v5, v74, v0
	v_fma_f32 v5, -v83, v76, v86
	v_fma_f32 v74, -v77, v6, v79
	v_div_scale_f32 v83, null, v52, v52, v31
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v75, v7, 1.0
	v_fmac_f32_e32 v6, v74, v78
	v_rcp_f32_e32 v74, v83
	v_div_fmas_f32 v5, v5, v87, v76
	v_mul_f32_e32 v76, v80, v73
	v_div_fixup_f32 v39, v0, v52, v39
	v_fma_f32 v0, -v77, v6, v79
	v_fmac_f32_e32 v7, v84, v7
	v_div_scale_f32 v84, null, v52, v52, v32
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v40, v5, v52, v40
	v_fma_f32 v5, -v89, v76, v80
	v_div_scale_f32 v77, s10, v30, v52, v30
	v_fma_f32 v79, -v83, v74, 1.0
	v_div_fmas_f32 v0, v0, v78, v6
	v_rcp_f32_e32 v6, v84
	v_fmac_f32_e32 v76, v5, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v5, v77, v7 :: v_dual_fmac_f32 v74, v79, v74
	v_div_scale_f32 v78, s8, v31, v52, v31
	v_div_scale_f32 v79, null, v52, v52, v106
	v_fma_f32 v80, -v89, v76, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v75, v5, v77
	v_mul_f32_e32 v87, v78, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v89, v79
	v_fma_f32 v90, -v84, v6, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v5, v86, v7
	v_div_fmas_f32 v73, v80, v73, v76
	v_fma_f32 v76, -v83, v87, v78
	v_fmac_f32_e32 v6, v90, v6
	v_div_scale_f32 v80, s9, v32, v52, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v29, v73, v52, v29
	v_fma_f32 v86, -v79, v89, 1.0
	v_fma_f32 v73, -v75, v5, v77
	v_fmac_f32_e32 v87, v76, v74
	v_mul_f32_e32 v75, v80, v6
	v_div_scale_f32 v77, null, v52, v52, v100
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v76, s11, v106, v52, v106
	v_div_fmas_f32 v5, v73, v7, v5
	v_fma_f32 v7, -v83, v87, v78
	v_fma_f32 v73, -v84, v75, v80
	v_rcp_f32_e32 v78, v77
	v_div_scale_f32 v86, null, v52, v52, v101
	v_mul_f32_e32 v83, v76, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v73, v6
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v73, v86
	v_div_fmas_f32 v7, v7, v74, v87
	v_fma_f32 v74, -v79, v83, v76
	v_div_fixup_f32 v5, v5, v52, v30
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v77, v78, 1.0
	v_fma_f32 v30, -v84, v75, v80
	v_div_fixup_f32 v7, v7, v52, v31
	v_fmac_f32_e32 v83, v74, v89
	v_div_scale_f32 v31, s8, v100, v52, v100
	v_fmac_f32_e32 v78, v87, v78
	v_fma_f32 v74, -v86, v73, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v84, null, v27, v27, v22
	v_div_fmas_f32 v6, v30, v6, v75
	v_mul_f32_e32 v75, v31, v78
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, null, v27, v27, v21
	v_fma_f32 v30, -v79, v83, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v77, v75, v31
	v_div_scale_f32 v76, s9, v101, v52, v101
	v_rcp_f32_e32 v79, v74
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v75, v80, v78
	v_div_fmas_f32 v30, v30, v89, v83
	v_mul_f32_e32 v83, v76, v73
	v_rcp_f32_e32 v80, v84
	v_div_fixup_f32 v6, v6, v52, v32
	v_fma_f32 v31, -v77, v75, v31
	v_div_scale_f32 v77, null, v27, v27, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v74, v79, 1.0
	v_fma_f32 v32, -v86, v83, v76
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v90, null, v27, v27, v23
	v_fmac_f32_e32 v79, v87, v79
	v_rcp_f32_e32 v87, v77
	v_fmac_f32_e32 v83, v32, v73
	v_fma_f32 v89, -v84, v80, 1.0
	v_div_scale_f32 v32, s10, v21, v27, v21
	v_div_fmas_f32 v31, v31, v78, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v86, v83, v76
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v78, s8, v22, v27, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v77, v87, 1.0
	v_mul_f32_e32 v76, v32, v79
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v91, v78, v80
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v87, v86, v87
	v_div_scale_f32 v86, s11, v24, v27, v24
	v_fma_f32 v89, -v74, v76, v32
	v_div_fmas_f32 v73, v75, v73, v83
	v_fma_f32 v75, -v84, v91, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v86, v87
	v_div_fixup_f32 v0, v0, v52, v108
	v_div_fixup_f32 v30, v30, v52, v106
	v_fmac_f32_e32 v76, v89, v79
	v_div_fixup_f32 v31, v31, v52, v100
	v_div_fixup_f32 v52, v73, v52, v101
	v_fmac_f32_e32 v91, v75, v80
	v_fma_f32 v73, -v77, v83, v86
	v_div_scale_f32 v75, null, v27, v27, v26
	v_fma_f32 v32, -v74, v76, v32
	v_fma_f32 v74, -v90, v92, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v73, v87
	v_rcp_f32_e32 v73, v75
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v32, v32, v79, v76
	v_fma_f32 v76, -v84, v91, v78
	v_fmac_f32_e32 v92, v74, v92
	v_div_scale_f32 v74, s9, v23, v27, v23
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v77, -v77, v83, v86
	v_div_fmas_f32 v76, v76, v80, v91
	v_mul_f32_e32 v78, v74, v92
	v_div_scale_f32 v79, null, v27, v27, v20
	v_fma_f32 v80, -v75, v73, 1.0
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v84, -v90, v78, v74
	v_div_fmas_f32 v77, v77, v87, v83
	v_rcp_f32_e32 v83, v79
	v_fmac_f32_e32 v73, v80, v73
	v_div_scale_f32 v80, s8, v26, v27, v26
	v_div_fixup_f32 v21, v32, v27, v21
	v_fmac_f32_e32 v78, v84, v92
	v_div_fixup_f32 v22, v76, v27, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v32, v80, v73
	v_div_fixup_f32 v24, v77, v27, v24
	v_div_scale_f32 v77, null, v27, v27, v18
	v_fma_f32 v76, -v79, v83, 1.0
	v_fma_f32 v74, -v90, v78, v74
	v_fma_f32 v84, -v75, v32, v80
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v86, v77
	v_fmac_f32_e32 v83, v76, v83
	v_div_scale_f32 v76, s10, v20, v27, v20
	v_div_fmas_f32 v74, v74, v92, v78
	v_fmac_f32_e32 v32, v84, v73
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v76, v83
	v_div_scale_f32 v84, null, v27, v27, v17
	v_div_fixup_f32 v23, v74, v27, v23
	v_fma_f32 v74, -v75, v32, v80
	v_fma_f32 v75, -v79, v78, v76
	v_fma_f32 v80, -v77, v86, 1.0
	v_rcp_f32_e32 v87, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v32, v74, v73, v32
	v_div_scale_f32 v73, null, v27, v27, v88
	v_fmac_f32_e32 v78, v75, v83
	v_fmac_f32_e32 v86, v80, v86
	v_div_scale_f32 v80, null, v27, v27, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v75, v73
	v_div_scale_f32 v74, s8, v18, v27, v18
	v_rcp_f32_e32 v90, v80
	v_div_fixup_f32 v26, v32, v27, v26
	v_fma_f32 v32, -v84, v87, 1.0
	v_fma_f32 v76, -v79, v78, v76
	v_mul_f32_e32 v79, v74, v86
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v91, s10, v88, v27, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v73, v75, 1.0
	v_fmac_f32_e32 v87, v32, v87
	v_div_scale_f32 v32, s9, v17, v27, v17
	v_div_fmas_f32 v76, v76, v83, v78
	v_fmac_f32_e32 v75, v89, v75
	v_div_scale_f32 v89, null, v27, v27, v19
	v_fma_f32 v78, -v77, v79, v74
	v_fma_f32 v92, -v80, v90, 1.0
	v_mul_f32_e32 v83, v32, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v93, v89
	v_dual_mul_f32 v94, v91, v75 :: v_dual_fmac_f32 v79, v78, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s11, v25, v27, v25
	v_fma_f32 v78, -v84, v83, v32
	v_div_fixup_f32 v20, v76, v27, v20
	v_fma_f32 v74, -v77, v79, v74
	v_fma_f32 v76, -v73, v94, v91
	v_mul_f32_e32 v77, v92, v90
	v_fmac_f32_e32 v83, v78, v87
	v_fma_f32 v78, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v94, v76, v75
	v_fma_f32 v76, -v80, v77, v92
	v_fma_f32 v32, -v84, v83, v32
	v_fmac_f32_e32 v93, v78, v93
	v_div_scale_f32 v78, s8, v19, v27, v19
	v_div_fmas_f32 v74, v74, v86, v79
	v_fma_f32 v73, -v73, v94, v91
	v_fmac_f32_e32 v77, v76, v90
	v_div_scale_f32 v79, null, v27, v27, v16
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v76, v78, v93
	v_div_fmas_f32 v32, v32, v87, v83
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v83, v79
	v_div_fmas_f32 v73, v73, v75, v94
	v_fma_f32 v75, -v80, v77, v92
	v_fma_f32 v80, -v89, v76, v78
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v18, v74, v27, v18
	v_div_fixup_f32 v17, v32, v27, v17
	v_div_fmas_f32 v75, v75, v90, v77
	v_fmac_f32_e32 v76, v80, v93
	v_div_fixup_f32 v32, v73, v27, v88
	v_div_scale_f32 v74, null, v27, v27, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v25, v75, v27, v25
	v_fma_f32 v75, -v79, v83, 1.0
	v_fma_f32 v73, -v89, v76, v78
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v77, null, v27, v27, v82
	v_fmac_f32_e32 v83, v75, v83
	v_div_scale_f32 v75, null, v27, v27, v81
	v_div_fmas_f32 v73, v73, v93, v76
	v_rcp_f32_e32 v76, v74
	v_div_scale_f32 v78, vcc_lo, v16, v27, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v80, v75
	v_div_fixup_f32 v19, v73, v27, v19
	v_div_scale_f32 v87, null, v27, v27, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v86, v78, v83
	v_rcp_f32_e32 v84, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v74, v76, 1.0
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v79, v86, v78
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v75, v80, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v76, v73, v76
	v_div_scale_f32 v73, s8, v15, v27, v15
	v_fmac_f32_e32 v80, v88, v80
	v_div_scale_f32 v88, s9, v81, v27, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v73, v76
	v_fmac_f32_e32 v86, v90, v83
	v_fma_f32 v91, -v77, v84, 1.0
	v_mul_f32_e32 v94, v88, v80
	v_fma_f32 v93, -v87, v89, 1.0
	v_fma_f32 v90, -v74, v92, v73
	v_fma_f32 v78, -v79, v86, v78
	v_fmac_f32_e32 v84, v91, v84
	v_fma_f32 v79, -v75, v94, v88
	v_div_scale_f32 v91, s10, v82, v27, v82
	v_fmac_f32_e32 v92, v90, v76
	v_div_fmas_f32 v78, v78, v83, v86
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v94, v79, v80
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v64, v64, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v74, v92, v73
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v75, v94, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s11, v85, v27, v85
	v_div_fmas_f32 v73, v73, v76, v92
	s_mov_b32 vcc_lo, s9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v91, v84
	v_div_fmas_f32 v75, v75, v80, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v80, v38
	v_and_b32_e32 v38, 15, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v93, v89
	v_fma_f32 v90, -v77, v95, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v74, -v87, v96, v93
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v90, v84
	v_fmac_f32_e32 v96, v74, v89
	v_div_fixup_f32 v15, v73, v27, v15
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v7, v7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v87, v96, v93
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v87, v21
	v_and_b32_e32 v21, 15, v42
	v_and_b32_e32 v42, 15, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v74, -v77, v95, v91
	v_div_fixup_f32 v16, v78, v27, v16
	v_div_fixup_f32 v73, v75, v27, v81
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v74, v84, v95
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v5, v5
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v89, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v74, v74, v27, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v28, v28, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v27, v76, v27, v85
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v27, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v7, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v5, v5
	v_cvt_i32_f32_e32 v6, v6
	v_cvt_i32_f32_e32 v99, v15
	v_and_b32_e32 v55, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v237
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v15, 15, v28
	v_and_b32_e32 v28, 15, v58
	v_and_b32_e32 v58, 15, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v7, 16, v237
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v17, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_cvt_i32_f32_e32 v83, v29
	v_cvt_i32_f32_e32 v102, v27
	v_and_b32_e32 v27, 15, v57
	v_and_b32_e32 v29, 15, v59
	v_and_b32_e32 v57, 15, v5
	v_and_b32_e32 v59, 15, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v5, 6, v7
	s_waitcnt vmcnt(0)
	v_xor_b32_e32 v6, v136, v14
	v_lshlrev_b32_e32 v14, 6, v237
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v74, v74
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v75, v45
	v_cvt_i32_f32_e32 v76, v46
	v_cvt_i32_f32_e32 v77, v48
	v_cvt_i32_f32_e32 v78, v47
	v_cvt_i32_f32_e32 v88, v22
	v_cvt_i32_f32_e32 v89, v24
	v_cvt_i32_f32_e32 v90, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v5
	v_and_or_b32 v5, 0x1b00, v14, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v95, v32
	v_cvt_i32_f32_e32 v96, v25
	v_cvt_i32_f32_e32 v97, v19
	v_cvt_i32_f32_e32 v98, v16
	v_cvt_i32_f32_e32 v79, v37
	v_cvt_i32_f32_e32 v85, v31
	v_cvt_i32_f32_e32 v92, v20
	v_cvt_i32_f32_e32 v93, v18
	v_cvt_i32_f32_e32 v94, v17
	v_and_b32_e32 v16, 15, v33
	v_and_b32_e32 v17, 15, v34
	v_and_b32_e32 v18, 15, v35
	v_and_b32_e32 v19, 15, v36
	v_and_b32_e32 v20, 15, v41
	v_and_b32_e32 v22, 15, v43
	v_and_b32_e32 v24, 15, v49
	v_and_b32_e32 v25, 15, v50
	v_and_b32_e32 v31, 15, v65
	v_and_b32_e32 v32, 15, v66
	v_and_b32_e32 v33, 15, v67
	v_and_b32_e32 v34, 15, v68
	v_and_b32_e32 v35, 15, v61
	v_and_b32_e32 v36, 15, v62
	v_and_b32_e32 v37, 15, v63
	v_and_b32_e32 v47, 15, v75
	v_and_b32_e32 v48, 15, v76
	v_and_b32_e32 v49, 15, v77
	v_and_b32_e32 v50, 15, v78
	v_and_b32_e32 v63, 15, v87
	v_and_b32_e32 v64, 15, v88
	v_and_b32_e32 v65, 15, v89
	v_and_b32_e32 v66, 15, v90
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v6, v12
	v_xad_u32 v5, v5, v135, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v81, v39
	v_cvt_i32_f32_e32 v82, v40
	v_cvt_i32_f32_e32 v84, v30
	v_cvt_i32_f32_e32 v91, v26
	v_cvt_i32_f32_e32 v100, v73
	v_cvt_i32_f32_e32 v101, v74
	v_and_b32_e32 v23, 15, v44
	v_and_b32_e32 v26, 15, v51
	v_and_b32_e32 v30, 15, v60
	v_and_b32_e32 v39, 15, v69
	v_and_b32_e32 v40, 15, v53
	v_and_b32_e32 v41, 15, v54
	v_and_b32_e32 v43, 15, v56
	v_and_b32_e32 v44, 15, v70
	v_and_b32_e32 v45, 15, v71
	v_and_b32_e32 v46, 15, v72
	v_and_b32_e32 v56, 15, v83
	v_and_b32_e32 v71, 15, v95
	v_and_b32_e32 v72, 15, v96
	v_and_b32_e32 v73, 15, v97
	v_and_b32_e32 v74, 15, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[15:18]
	ds_store_b128 v0, v[23:26] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v5
	ds_load_b128 v[23:26], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[31:34]
	ds_store_b128 v0, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v5
	ds_load_b128 v[39:42], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[47:50]
	ds_store_b128 v0, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v5
	ds_load_b128 v[55:58], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[63:66]
	ds_store_b128 v0, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v5
	ds_load_b128 v[71:74], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[19:22]
	ds_store_b128 v0, v[27:30] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v5
	ds_load_b128 v[27:30], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[35:38]
	ds_store_b128 v0, v[43:46] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v5
	ds_load_b128 v[43:46], v5 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_and_b32_e32 v51, 15, v79
	v_and_b32_e32 v53, 15, v81
	v_and_b32_e32 v54, 15, v82
	v_and_b32_e32 v60, 15, v84
	v_cvt_i32_f32_e32 v86, v52
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v61, 15, v85
	v_and_b32_e32 v67, 15, v91
	v_and_b32_e32 v68, 15, v92
	v_and_b32_e32 v62, 15, v86
	v_and_b32_e32 v69, 15, v93
	v_and_b32_e32 v70, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[51:54]
	ds_store_b128 v0, v[59:62] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v5
	ds_load_b128 v[59:62], v5 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v75, 15, v99
	v_and_b32_e32 v76, 15, v100
	v_and_b32_e32 v77, 15, v101
	v_and_b32_e32 v78, 15, v102
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v30, 4, v21
	v_lshl_or_b32 v30, v46, 4, v38
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v46, 3, v134
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, s34, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[67:70]
	ds_store_b128 v0, v[75:78] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[67:70], v5
	ds_load_b128 v[75:78], v5 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s45, 7, v46
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v5, v23, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 32, v10
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v24, 4, v15
	v_lshl_or_b32 v22, v25, 4, v16
	v_lshl_or_b32 v17, v26, 4, v17
	v_lshl_or_b32 v18, v27, 4, v18
	v_lshl_or_b32 v19, v28, 4, v19
	v_lshl_or_b32 v20, v29, 4, v20
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 16, v10
	v_add_nc_u32_e32 v16, 48, v10
	v_mad_u64_u32 v[10:11], null, v10, s8, v[0:1]
	v_mad_u64_u32 v[14:15], null, v14, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v27, v43, 4, v35
	v_lshl_or_b32 v28, v44, 4, v36
	v_lshl_or_b32 v29, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s8, v[0:1]
	v_mad_u64_u32 v[15:16], null, v16, s8, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v17.l
	v_and_b16 v0.h, 0xff, v22.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v21.l
	v_and_b16 v5.h, 0xff, v20.l
	v_lshlrev_b16 v6.l, 8, v19.l
	v_and_b16 v6.h, 0xff, v18.l
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
	v_or_b16 v16.h, v0.h, v0.l
	v_or_b16 v16.l, v4.l, v3.l
	v_or_b16 v17.h, v5.h, v5.l
	v_or_b16 v17.l, v6.h, v6.l
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v5.l, 8, v30.l
	v_and_b16 v5.h, 0xff, v29.l
	v_lshlrev_b16 v6.l, 8, v28.l
	v_and_b16 v6.h, 0xff, v27.l
	s_and_b32 s9, s37, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s36
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v31, v55, 4, v47
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v43, v75, 4, v67
	v_lshl_or_b32 v44, v76, 4, v68
	v_lshl_or_b32 v45, v77, 4, v69
	v_lshl_or_b32 v47, v78, 4, v70
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v26.l
	v_and_b16 v0.h, 0xff, v25.l
	v_lshlrev_b16 v3.l, 8, v24.l
	v_and_b16 v4.l, 0xff, v23.l
	buffer_store_b64 v[16:17], v10, s[8:11], 0 offen
	v_or_b16 v17.h, v5.h, v5.l
	v_or_b16 v17.l, v6.h, v6.l
	v_lshlrev_b16 v5.l, 8, v38.l
	v_and_b16 v5.h, 0xff, v37.l
	v_lshlrev_b16 v6.l, 8, v36.l
	v_and_b16 v6.h, 0xff, v35.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v71, 4, v63
	v_lshl_or_b32 v40, v72, 4, v64
	v_lshl_or_b32 v41, v73, 4, v65
	v_lshl_or_b32 v42, v74, 4, v66
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v16.h, v0.h, v0.l
	v_or_b16 v16.l, v4.l, v3.l
	v_cndmask_b32_e32 v10, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v0.l, 8, v34.l
	v_and_b16 v0.h, 0xff, v33.l
	v_lshlrev_b16 v3.l, 8, v32.l
	v_and_b16 v4.l, 0xff, v31.l
	v_or_b16 v11.h, v5.h, v5.l
	v_or_b16 v11.l, v6.h, v6.l
	v_lshlrev_b16 v5.l, 8, v47.l
	v_and_b16 v5.h, 0xff, v45.l
	v_lshlrev_b16 v6.l, 8, v44.l
	v_and_b16 v6.h, 0xff, v43.l
	buffer_store_b64 v[16:17], v10, s[8:11], 0 offen
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v4.l, v3.l
	v_lshlrev_b16 v0.l, 8, v42.l
	v_and_b16 v0.h, 0xff, v41.l
	v_lshlrev_b16 v3.l, 8, v40.l
	v_and_b16 v4.l, 0xff, v39.l
	v_or_b16 v17.h, v5.h, v5.l
	v_or_b16 v17.l, v6.h, v6.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v237
	v_lshrrev_b32_e32 v6, 2, v7
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v16.h, v0.h, v0.l
	v_cndmask_b32_e32 v12, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v16.l, v4.l, v3.l
	v_dual_cndmask_b32 v0, 0x80000000, v15 :: v_dual_and_b32 v5, 2, v5
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[10:11], v12, s[8:11], 0 offen
	buffer_store_b64 v[16:17], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v46
	v_mov_b16_e32 v4.l, v13.h
	v_mov_b16_e32 v3.l, v9.h
	v_add3_u32 v5, v6, v5, v46
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s34, v8
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v7, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v237
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[42:43], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s39, 0xffff
	s_mov_b32 s8, s38
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s45, 1
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
.Ltmp61:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 368
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
		.amdhsa_next_free_sgpr 59
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 59
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 368
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 29432
; TotalNumSgprs: 61
; NumVgprs: 256
; ScratchSize: 368
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 61
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
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 368
    .sgpr_count:     61
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 91
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
