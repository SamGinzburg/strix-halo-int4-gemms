	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
	v_mov_b32_e32 v199, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v81, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
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
	s_sub_i32 s5, s41, s4
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
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v0, 63, v199
	.loc	1 1038 17                       ; ragged.py:1038:17
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
	s_sub_i32 s41, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s41, s5
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
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[36:37], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s34, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	v_add_nc_u32_e32 v40, s34, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v200, 4, v199
	v_lshlrev_b32_e32 v9, 4, v199
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[1:2]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v199
	v_and_b32_e32 v2, 0x80, v199
	v_lshlrev_b32_e32 v12, 4, v199
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow680
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v220, 0 :: v_dual_and_b32 v103, 15, v199
	v_dual_mov_b32 v219, 0 :: v_dual_and_b32 v202, 0xf0, v199
	v_or_b32_e32 v70, 16, v200
	v_or_b32_e32 v72, 32, v200
	v_or_b32_e32 v73, 48, v200
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v84, 0
	v_mov_b32_e32 v163, 0
	v_mov_b32_e32 v159, 0
	v_mov_b32_e32 v85, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s42, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s34, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s6
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v33, 3, v199
	v_add_co_u32 v2, vcc_lo, v0, 16
	v_bfe_i32 v34, v199, 3, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s2, s4
	s_addc_u32 s7, s3, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[0:1]
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v0, s34, v103
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v1, 6, v199
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v36, 0x70, v9
	v_dual_mov_b32 v164, 0 :: v_dual_and_b32 v33, 0x700, v33
	v_dual_mov_b32 v159, 0 :: v_dual_and_b32 v34, 0x88, v34
	s_clause 0x1
	s_load_b32 s43, s[0:1], 0x58
	s_load_b32 s44, s[0:1], 0x50
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[6:7], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v64, 0
	scratch_store_b32 off, v9, off offset:428 ; 4-byte Folded Spill
	v_or3_b32 v9, v36, v33, v34
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:100
	scratch_store_b32 off, v202, off offset:412
	v_add_nc_u32_e32 v1, 16, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[2:3]
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v2, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v1, v1, s40
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v3, 48, v0
	v_mul_lo_u32 v0, v0, s40
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s3, s41, 8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[38:39], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[6:7]
	scratch_store_b32 off, v9, off offset:120 ; 4-byte Folded Spill
	v_xor_b32_e32 v36, 8, v9
	v_or_b32_e32 v9, s3, v199
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	scratch_store_b32 off, v1, off offset:108 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s40
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s45, s33, 1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:104
	scratch_store_b32 off, v200, off offset:408
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_or_b32_e32 v0, s3, v200
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s43, s45
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s6
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s4, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v26, s3, v70
	v_mad_u64_u32 v[41:42], null, v0, s43, s[6:7]
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:112
	scratch_store_b32 off, v70, off offset:416
	v_mul_lo_u32 v1, v3, s40
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v25, s3, v72
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[38:39], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[36:37], v[4:5]
	scratch_store_b64 off, v[41:42], off offset:128 ; 8-byte Folded Spill
	v_mad_u64_u32 v[41:42], null, v26, s43, s[6:7]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v2, 0xe0, v0
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v1, off offset:116 ; 4-byte Folded Spill
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, 0xf0, v0
	v_or_b32_e32 v3, 0xd0, v0
	v_or_b32_e32 v4, 0xc0, v0
	v_or_b32_e32 v5, 0xb0, v0
	v_or_b32_e32 v12, 0xa0, v0
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v6, s33, v1
	v_or_b32_e32 v13, 0x90, v0
	v_or_b32_e32 v14, 0x80, v0
	v_or_b32_e32 v15, 0x70, v0
	v_or_b32_e32 v16, 0x60, v0
	v_or_b32_e32 v22, 0x50, v0
	v_or_b32_e32 v23, 64, v0
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v30, s33, v25
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v31, s33, v26
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v32, s33, v0
	v_mad_u64_u32 v[25:26], null, v25, s43, s[6:7]
	v_mad_u64_u32 v[0:1], null, s43, v1, s[6:7]
	v_or_b32_e32 v24, s3, v73
	scratch_store_b32 off, v9, off offset:124 ; 4-byte Folded Spill
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v28, s33, v23
	scratch_store_b64 off, v[25:26], off offset:144 ; 8-byte Folded Spill
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v29, s33, v24
	v_mad_u64_u32 v[24:25], null, v24, s43, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:248 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v32, s43, s[6:7]
	scratch_store_b64 off, v[41:42], off offset:136 ; 8-byte Folded Spill
	v_dual_mov_b32 v168, 0 :: v_dual_add_nc_u32 v27, s33, v22
	scratch_store_b64 off, v[24:25], off offset:152 ; 8-byte Folded Spill
	v_mad_u64_u32 v[23:24], null, s43, v23, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:256 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v31, s43, s[6:7]
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v20, s33, v15
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v21, s33, v16
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[23:24], off offset:160
	scratch_store_b32 off, v72, off offset:420
	scratch_store_b64 off, v[0:1], off offset:264
	v_mad_u64_u32 v[22:23], null, s43, v22, s[6:7]
	v_mad_u64_u32 v[0:1], null, v30, s43, s[6:7]
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v19, s33, v14
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v18, s33, v13
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[22:23], off offset:168
	scratch_store_b32 off, v73, off offset:424
	scratch_store_b64 off, v[0:1], off offset:272
	v_mad_u64_u32 v[22:23], null, s43, v16, s[6:7]
	v_mad_u64_u32 v[15:16], null, s43, v15, s[6:7]
	v_mad_u64_u32 v[0:1], null, v29, s43, s[6:7]
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v17, s33, v12
	scratch_store_b64 off, v[22:23], off offset:176 ; 8-byte Folded Spill
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v10, s33, v4
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[15:16], off offset:184
	scratch_store_b64 off, v[0:1], off offset:280
	v_mad_u64_u32 v[14:15], null, s43, v14, s[6:7]
	v_mad_u64_u32 v[0:1], null, v28, s43, s[6:7]
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v11, s33, v5
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v8, s33, v3
	scratch_store_b64 off, v[14:15], off offset:192 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, s43, v13, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:288 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v27, s43, s[6:7]
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v7, s33, v2
	v_bfe_i32 v35, v199, 7, 1
	scratch_store_b64 off, v[13:14], off offset:200 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s43, v12, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:296 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v21, s43, s[6:7]
	v_dual_mov_b32 v156, 0 :: v_dual_and_b32 v37, 0x7f, v199
	v_dual_mov_b32 v160, 0 :: v_dual_and_b32 v35, 0x88, v35
	scratch_store_b64 off, v[12:13], off offset:208 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s43, v5, s[6:7]
	v_mad_u64_u32 v[4:5], null, s43, v4, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:304 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v20, s43, s[6:7]
	v_or_b32_e32 v33, 0x300, v199
	scratch_store_b64 off, v[12:13], off offset:216 ; 8-byte Folded Spill
	v_or_b32_e32 v34, 0x3f0, v199
	scratch_store_b64 off, v[4:5], off offset:224 ; 8-byte Folded Spill
	v_mad_u64_u32 v[3:4], null, s43, v3, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:312 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v19, s43, s[6:7]
	v_xor_b32_e32 v35, v35, v37
	v_dual_mov_b32 v154, 0 :: v_dual_lshlrev_b32 v37, 5, v199
	scratch_store_b64 off, v[3:4], off offset:232 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s43, v2, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:320 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v18, s43, s[6:7]
	v_dual_mov_b32 v155, 0 :: v_dual_lshlrev_b32 v38, 1, v199
	v_mov_b32_e32 v163, 0
	scratch_store_b64 off, v[2:3], off offset:240 ; 8-byte Folded Spill
	v_dual_mov_b32 v104, 0 :: v_dual_lshlrev_b32 v39, 2, v202
	scratch_store_b64 off, v[0:1], off offset:328 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v17, s43, s[6:7]
	v_dual_mov_b32 v186, 0 :: v_dual_and_b32 v37, 32, v37
	v_dual_mov_b32 v153, 0 :: v_dual_and_b32 v38, 28, v38
	v_mov_b32_e32 v157, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v37, 0, v39, v37
	scratch_store_b64 off, v[0:1], off offset:336 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v11, s43, s[6:7]
	v_dual_mov_b32 v170, 0 :: v_dual_lshlrev_b32 v39, 1, v202
	v_mov_b32_e32 v151, 0
	v_dual_mov_b32 v236, 0 :: v_dual_add_nc_u32 v191, 0, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v198, 0, v39
	scratch_store_b64 off, v[0:1], off offset:344 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v10, s43, s[6:7]
	v_mov_b32_e32 v173, 0
	v_mov_b32_e32 v97, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v118, 0
	scratch_store_b64 off, v[0:1], off offset:352 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v8, s43, s[6:7]
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v142, 0
	scratch_store_b64 off, v[0:1], off offset:360 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v7, s43, s[6:7]
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v140, 0
	scratch_store_b64 off, v[0:1], off offset:368 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v6, s43, s[6:7]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[0:1], off offset:376
	scratch_store_b32 off, v199, off offset:404
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v0, 0, v199
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v109, 0
	v_mov_b32_e32 v146, 0
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v0, 0, v33
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v123, 0
	v_mov_b32_e32 v158, 0
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v0, 0, v34
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v145, 0
	v_mov_b32_e32 v134, 0
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v0, 0, v36
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v141, 0
	v_mov_b32_e32 v128, 0
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v0, v37, v38
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v247, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v219, 0
	v_mov_b32_e32 v81, 0
	s_mov_b32 s4, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s46, s40, s7
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_mov_b32 s47, s4
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v0, off offset:400
	scratch_store_b32 off, v103, off offset:88
	scratch_store_b64 off, v[40:41], off offset:92
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v4, off, off offset:100
	scratch_load_b64 v[6:7], off, off offset:136
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s14, s47, 4
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s26, s22
	v_or_b32_e32 v195, s14, v103
	s_mov_b32 s27, s23
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v35, off offset:64
	scratch_store_b32 off, v205, off offset:60
	scratch_store_b32 off, v204, off offset:56
	scratch_store_b32 off, v203, off offset:52
	scratch_store_b32 off, v178, off offset:48
	scratch_store_b32 off, v201, off offset:44
	scratch_store_b32 off, v179, off offset:40
	scratch_store_b32 off, v176, off offset:36
	scratch_store_b32 off, v173, off offset:32
	scratch_store_b32 off, v104, off offset:28
	scratch_store_b32 off, v97, off offset:24
	scratch_store_b32 off, v95, off offset:20
	scratch_store_b32 off, v90, off offset:16
	scratch_store_b32 off, v89, off offset:12
	scratch_store_b32 off, v88, off offset:8
	scratch_store_b32 off, v82, off offset:4
	scratch_store_b32 off, v81, off
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s15, s23
	s_clause 0x9                            ; 80-byte Folded Reload
	scratch_load_b64 v[11:12], off, off offset:176
	scratch_load_b64 v[12:13], off, off offset:184
	scratch_load_b64 v[13:14], off, off offset:192
	scratch_load_b64 v[14:15], off, off offset:200
	scratch_load_b64 v[15:16], off, off offset:208
	scratch_load_b64 v[16:17], off, off offset:216
	scratch_load_b64 v[17:18], off, off offset:224
	scratch_load_b64 v[18:19], off, off offset:232
	scratch_load_b64 v[19:20], off, off offset:240
	scratch_load_b64 v[20:21], off, off offset:248
	v_dual_mov_b32 v95, v175 :: v_dual_mov_b32 v176, v106
	v_mov_b32_e32 v179, v157
	v_dual_mov_b32 v157, v136 :: v_dual_mov_b32 v196, v186
	v_dual_mov_b32 v197, v112 :: v_dual_mov_b32 v106, v105
	v_mov_b32_e32 v105, v236
	v_mov_b32_e32 v112, v220
	v_mov_b32_e32 v136, v108
	v_mov_b32_e32 v108, v77
	s_waitcnt vmcnt(11)
	v_or_b32_e32 v2, s14, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v2, s44, v[40:41]
	v_cmp_gt_i32_e64 s3, s43, v2
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v11, v11, v195
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v12, v12, v195
	s_and_b32 s3, s42, s3
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v13, v13, v195
	v_cndmask_b32_e64 v3, 0x80000000, v0, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_or_b32_e32 v0, 12, v4
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v14, v14, v195
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v15, v15, v195
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v16, v16, v195
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v17, v17, v195
	v_or_b32_e32 v0, s14, v0
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v18, v18, v195
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v19, v19, v195
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, v20, v195
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s14, s22
	v_cmp_gt_i32_e64 s3, s43, v0
	v_mad_u64_u32 v[0:1], null, v0, s44, v[40:41]
	s_and_b32 s3, s42, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v4, 0x80000000, v0, s3
	v_or_b32_e32 v0, 4, v2
	v_cmp_gt_i32_e64 s3, s43, v0
	v_mad_u64_u32 v[0:1], null, v0, s44, v[40:41]
	s_and_b32 s3, s42, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v5, 0x80000000, v0, s3
	v_or_b32_e32 v0, 8, v2
	v_cmp_gt_i32_e64 s3, s43, v0
	v_mad_u64_u32 v[0:1], null, v0, s44, v[40:41]
	scratch_load_b64 v[1:2], off, off offset:128 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, v6, v195
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[6:7], off, off offset:144
	scratch_load_b64 v[7:8], off, off offset:152
	scratch_load_b64 v[8:9], off, off offset:160
	scratch_load_b64 v[9:10], off, off offset:168
	s_and_b32 s3, s42, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	v_cmp_gt_i32_e64 s3, s43, v195
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	v_add_nc_u32_e32 v1, v1, v195
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v6, v6, v195
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v7, v7, v195
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v8, v8, v195
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, v9, v195
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u8 v1, v1, s[24:27], 0 offen
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	buffer_load_u8 v21, v10, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	buffer_load_u8 v17, v17, s[24:27], 0 offen
	buffer_load_u8 v18, v18, s[24:27], 0 offen
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	buffer_load_u8 v20, v20, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v3, v3, s[20:23], 0 offen
	buffer_load_u8 v4, v4, s[20:23], 0 offen
	buffer_load_u8 v5, v5, s[20:23], 0 offen
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v9, v3
	ds_store_b8 v9, v5 offset:256
	scratch_load_b32 v3, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v3, v4
	ds_store_b8 v9, v0 offset:512
	v_add_nc_u32_e32 v3, 0, v103
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v4, v3 offset:320
	ds_load_u8 v5, v3 offset:256
	ds_load_u8 v29, v3 offset:336
	ds_load_u8 v30, v3 offset:272
	ds_load_u8 v31, v3 offset:352
	ds_load_u8 v32, v3 offset:288
	ds_load_u8 v0, v3 offset:368
	ds_load_u8 v9, v3 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	ds_load_u8 v5, v3 offset:448
	ds_load_u8 v10, v3 offset:384
	ds_load_u8 v33, v3 offset:464
	ds_load_u8 v34, v3 offset:400
	ds_load_u8 v35, v3 offset:480
	ds_load_u8 v36, v3 offset:416
	ds_load_u8 v47, v3 offset:496
	ds_load_u8 v48, v3 offset:432
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v10, v5, 0xc0c0004
	ds_load_u8 v22, v3 offset:64
	ds_load_u8 v23, v3
	ds_load_u8 v37, v3 offset:80
	ds_load_u8 v38, v3 offset:96
	ds_load_u8 v10, v3 offset:112
	ds_load_u8 v39, v3 offset:16
	ds_load_u8 v40, v3 offset:32
	ds_load_u8 v49, v3 offset:48
	v_lshl_or_b32 v43, v5, 16, v4
	ds_load_u8 v4, v3 offset:832
	ds_load_u8 v5, v3 offset:768
	ds_load_u8 v182, v3 offset:848
	ds_load_u8 v183, v3 offset:784
	ds_load_u8 v190, v3 offset:864
	ds_load_u8 v209, v3 offset:800
	ds_load_u8 v210, v3 offset:880
	ds_load_u8 v211, v3 offset:816
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v3 offset:192
	ds_load_u8 v24, v3 offset:128
	ds_load_u8 v50, v3 offset:208
	ds_load_u8 v51, v3 offset:144
	ds_load_u8 v180, v3 offset:224
	ds_load_u8 v181, v3 offset:160
	ds_load_u8 v185, v3 offset:240
	ds_load_u8 v189, v3 offset:176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	v_perm_b32 v10, v49, v10, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v23, 16, v22
	scratch_load_b32 v23, off, off offset:392 ; 4-byte Folded Reload
	ds_load_u8 v5, v3 offset:960
	ds_load_u8 v22, v3 offset:896
	ds_load_u8 v184, v3 offset:976
	ds_load_u8 v200, v3 offset:912
	ds_load_u8 v212, v3 offset:992
	ds_load_u8 v213, v3 offset:928
	s_waitcnt vmcnt(0)
	ds_load_u8 v214, v23
	ds_load_u8 v215, v3 offset:944
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v22, v5, 0xc0c0004
	ds_load_u8 v22, v3 offset:576
	ds_load_u8 v23, v3 offset:512
	ds_load_u8 v201, v3 offset:592
	ds_load_u8 v202, v3 offset:528
	ds_load_u8 v216, v3 offset:608
	ds_load_u8 v217, v3 offset:544
	ds_load_u8 v224, v3 offset:624
	ds_load_u8 v226, v3 offset:560
	v_lshl_or_b32 v45, v5, 16, v4
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v3 offset:704
	ds_load_u8 v24, v3 offset:640
	ds_load_u8 v203, v3 offset:720
	ds_load_u8 v204, v3 offset:656
	ds_load_u8 v229, v3 offset:736
	ds_load_u8 v230, v3 offset:672
	ds_load_u8 v232, v3 offset:752
	ds_load_u8 v234, v3 offset:688
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v191, v1
	ds_store_b8 v191, v2 offset:256
	ds_store_b8 v191, v6 offset:512
	ds_store_b8 v191, v7 offset:768
	ds_store_b8 v191, v8 offset:1024
	ds_store_b8 v191, v21 offset:1280
	ds_store_b8 v191, v11 offset:1536
	ds_store_b8 v191, v12 offset:1792
	ds_store_b8 v191, v13 offset:2048
	ds_store_b8 v191, v14 offset:2304
	ds_store_b8 v191, v15 offset:2560
	ds_store_b8 v191, v16 offset:2816
	ds_store_b8 v191, v17 offset:3072
	ds_store_b8 v191, v18 offset:3328
	ds_store_b8 v191, v19 offset:3584
	ds_store_b8 v191, v20 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:120
	scratch_load_b32 v73, off, off offset:396
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v3, v24, v23, 0xc0c0004
	v_perm_b32 v20, v230, v229, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v44, v3, 16, v22
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v199, 0, v1
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[25:28], v73 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_mov_b32_e32 v3, s6
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[21:24], v199 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v8, s11
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[11:18], v[21:22], v[42:43], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[11:18], v[25:26], v[44:45], v[11:18] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v41, v11
	v_cvt_f32_i32_e32 v162, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v81, v13
	v_cvt_f32_i32_e32 v82, v14
	v_cvt_f32_i32_e32 v236, v15
	v_cvt_f32_i32_e32 v173, v16
	v_cvt_f32_i32_e32 v87, v17
	v_cvt_f32_i32_e32 v88, v18
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[11:18], v[23:24], v[42:43], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[11:18], v[27:28], v[44:45], v[11:18] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v90, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v11, v16
	v_cvt_f32_i32_e32 v220, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v97, v13
	v_cvt_f32_i32_e32 v104, v14
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v12, v34, v33, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v11, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v11, v17
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v13, v39, v37, 0xc0c0004
	v_perm_b32 v14, v51, v50, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v11, off offset:76 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v11, v18
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v50, v14, 16, v13
	v_perm_b32 v13, v202, v201, 0xc0c0004
	v_perm_b32 v14, v204, v203, 0xc0c0004
	scratch_store_b32 off, v11, off offset:72 ; 4-byte Folded Spill
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v11, v15
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v11, off offset:84 ; 4-byte Folded Spill
	v_perm_b32 v11, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v51, v12, 16, v11
	v_perm_b32 v11, v183, v182, 0xc0c0004
	v_perm_b32 v12, v200, v184, 0xc0c0004
	v_lshl_or_b32 v183, v14, 16, v13
	v_wmma_i32_16x16x16_iu4 v[200:207], v[23:24], v[50:51], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v184, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[12:19], v[21:22], v[50:51], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v11, v32, v31, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[200:207], v[27:28], v[183:184], v[200:207] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[25:26], v[183:184], v[12:19] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v89, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v186, v12
	v_cvt_f32_i32_e32 v187, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v192, v15
	v_cvt_f32_i32_e32 v14, v17
	v_cvt_f32_i32_e32 v12, v19
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v15, v36, v35, 0xc0c0004
	v_perm_b32 v17, v40, v38, 0xc0c0004
	v_perm_b32 v19, v181, v180, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v188, v13
	v_cvt_f32_i32_e32 v13, v18
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v18, v15, 16, v11
	v_perm_b32 v11, v209, v190, 0xc0c0004
	v_lshl_or_b32 v17, v19, 16, v17
	v_perm_b32 v15, v213, v212, 0xc0c0004
	v_perm_b32 v19, v217, v216, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v223, v205
	v_cvt_f32_i32_e32 v222, v206
	v_cvt_f32_i32_e32 v221, v207
	v_cvt_f32_i32_e32 v239, v201
	v_cvt_f32_i32_e32 v238, v202
	v_cvt_f32_i32_e32 v237, v203
	v_cvt_f32_i32_e32 v227, v204
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v38, v15, 16, v11
	v_lshl_or_b32 v37, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[200:207], v[21:22], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v15, v48, v47, 0xc0c0004
	v_perm_b32 v19, v189, v185, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[200:207], v[25:26], v[37:38], v[200:207] neg_lo:[1,1,0]
	v_lshl_or_b32 v40, v15, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v39, v19, 16, v10
	v_perm_b32 v0, v211, v210, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v193, v200
	v_cvt_f32_i32_e32 v52, v201
	v_cvt_f32_i32_e32 v53, v202
	v_cvt_f32_i32_e32 v54, v203
	v_cvt_f32_i32_e32 v55, v204
	v_cvt_f32_i32_e32 v60, v205
	v_cvt_f32_i32_e32 v61, v206
	v_cvt_f32_i32_e32 v62, v207
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[200:207], v[23:24], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v10, v215, v214, 0xc0c0004
	v_perm_b32 v15, v226, v224, 0xc0c0004
	v_perm_b32 v19, v234, v232, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[27:28], v[37:38], v[200:207] neg_lo:[1,1,0]
	v_lshl_or_b32 v190, v10, 16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v189, v19, 16, v15
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v46, v200
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v248, v205
	v_cvt_f32_i32_e32 v246, v206
	v_cvt_f32_i32_e32 v244, v207
	v_cvt_f32_i32_e32 v63, v201
	v_cvt_f32_i32_e32 v103, v202
	v_cvt_f32_i32_e32 v20, v203
	v_cvt_f32_i32_e32 v182, v204
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[200:207], v[21:22], v[39:40], v[1:8] neg_lo:[1,1,0]
	scratch_load_b64 v[21:22], off, off offset:256 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[200:207], v[25:26], v[189:190], v[200:207] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v56, v200
	v_cvt_f32_i32_e32 v175, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v57, v202
	v_cvt_f32_i32_e32 v58, v203
	v_cvt_f32_i32_e32 v59, v204
	v_cvt_f32_i32_e32 v70, v205
	v_cvt_f32_i32_e32 v9, v206
	v_cvt_f32_i32_e32 v11, v207
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[200:207], v[23:24], v[39:40], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[27:28], v[189:190], v[200:207] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v208, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v180, v205
	v_cvt_f32_i32_e32 v217, v206
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v77, v201
	v_cvt_f32_i32_e32 v194, v202
	v_cvt_f32_i32_e32 v178, v203
	v_cvt_f32_i32_e32 v72, v204
	v_cvt_f32_i32_e32 v49, v207
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, v21, v195
	scratch_load_b64 v[21:22], off, off offset:264 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, v21, v195
	scratch_load_b64 v[21:22], off, off offset:272 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, v21, v195
	scratch_load_b64 v[21:22], off, off offset:280 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, v21, v195
	s_clause 0xb                            ; 96-byte Folded Reload
	scratch_load_b64 v[21:22], off, off offset:288
	scratch_load_b64 v[22:23], off, off offset:296
	scratch_load_b64 v[23:24], off, off offset:304
	scratch_load_b64 v[24:25], off, off offset:312
	scratch_load_b64 v[25:26], off, off offset:320
	scratch_load_b64 v[26:27], off, off offset:328
	scratch_load_b64 v[27:28], off, off offset:336
	scratch_load_b64 v[28:29], off, off offset:344
	scratch_load_b64 v[29:30], off, off offset:352
	scratch_load_b64 v[30:31], off, off offset:360
	scratch_load_b64 v[31:32], off, off offset:368
	scratch_load_b64 v[32:33], off, off offset:376
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v21, v21, v195
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v22, v22, v195
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v23, v23, v195
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v24, v24, v195
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v25, v25, v195
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v26, v26, v195
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v27, v27, v195
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v28, v28, v195
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v29, v29, v195
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v30, v30, v195
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v31, v31, v195
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, v32, v195
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	v_cndmask_b32_e64 v29, 0x80000000, v29, s3
	v_cndmask_b32_e64 v30, 0x80000000, v30, s3
	v_cndmask_b32_e64 v31, 0x80000000, v31, s3
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0xf
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	buffer_load_u8 v21, v21, s[24:27], 0 offen
	buffer_load_u8 v22, v22, s[24:27], 0 offen
	buffer_load_u8 v23, v23, s[24:27], 0 offen
	buffer_load_u8 v24, v24, s[24:27], 0 offen
	buffer_load_u8 v25, v25, s[24:27], 0 offen
	buffer_load_u8 v26, v26, s[24:27], 0 offen
	buffer_load_u8 v27, v27, s[24:27], 0 offen
	buffer_load_u8 v28, v28, s[24:27], 0 offen
	buffer_load_u8 v29, v29, s[24:27], 0 offen
	buffer_load_u8 v30, v30, s[24:27], 0 offen
	buffer_load_u8 v31, v31, s[24:27], 0 offen
	buffer_load_u8 v32, v32, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s47, s46
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(15)
	ds_store_b8 v191, v0
	s_waitcnt vmcnt(14)
	ds_store_b8 v191, v10 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v191, v15 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v191, v19 offset:768
	s_waitcnt vmcnt(11)
	ds_store_b8 v191, v21 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v191, v22 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v191, v23 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v191, v24 offset:1792
	s_waitcnt vmcnt(7)
	ds_store_b8 v191, v25 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v191, v26 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v191, v27 offset:2560
	s_waitcnt vmcnt(4)
	ds_store_b8 v191, v28 offset:2816
	s_waitcnt vmcnt(3)
	ds_store_b8 v191, v29 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v191, v30 offset:3328
	s_waitcnt vmcnt(1)
	ds_store_b8 v191, v31 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v191, v32 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[29:32], v199 offset1:4
	ds_load_2addr_stride64_b64 v[33:36], v73 offset1:4
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s45
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[199:206], v[29:30], v[42:43], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[209:216], v[29:30], v[50:51], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[31:32], v[50:51], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[199:206], v[33:34], v[44:45], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[209:216], v[33:34], v[183:184], v[209:216] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[35:36], v[183:184], v[21:28] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v73, v199
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v48, v200
	v_cvt_f32_i32_e32 v255, v201
	v_cvt_f32_i32_e32 v254, v202
	v_cvt_f32_i32_e32 v234, v203
	v_cvt_f32_i32_e32 v232, v204
	v_cvt_f32_i32_e32 v230, v205
	v_cvt_f32_i32_e32 v229, v206
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[199:206], v[31:32], v[42:43], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v181, v210
	v_cvt_f32_i32_e32 v47, v211
	v_cvt_f32_i32_e32 v42, v212
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[199:206], v[35:36], v[44:45], v[199:206] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v243, v213
	v_cvt_f32_i32_e32 v210, v21
	v_cvt_f32_i32_e32 v195, v26
	v_cvt_f32_i32_e32 v213, v22
	v_cvt_f32_i32_e32 v224, v199
	v_cvt_f32_i32_e32 v44, v206
	v_cvt_f32_i32_e32 v207, v200
	v_cvt_f32_i32_e32 v206, v201
	v_cvt_f32_i32_e32 v199, v27
	v_cvt_f32_i32_e32 v200, v28
	v_cvt_f32_i32_e32 v212, v23
	v_cvt_f32_i32_e32 v211, v24
	v_cvt_f32_i32_e32 v201, v25
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[21:28], v[29:30], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v0, v204
	v_cvt_f32_i32_e32 v43, v205
	v_cvt_f32_i32_e32 v45, v203
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[21:28], v[33:34], v[37:38], v[21:28] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v242, v214
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v209
	v_cvt_f32_i32_e32 v241, v215
	v_cvt_f32_i32_e32 v10, v21
	v_cvt_f32_i32_e32 v185, v22
	v_cvt_f32_i32_e32 v184, v23
	v_cvt_f32_i32_e32 v183, v24
	v_cvt_f32_i32_e32 v253, v25
	v_cvt_f32_i32_e32 v252, v26
	v_cvt_f32_i32_e32 v251, v27
	v_cvt_f32_i32_e32 v250, v28
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[21:28], v[31:32], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v240, v216
	v_cvt_f32_i32_e32 v202, v202
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[21:28], v[35:36], v[37:38], v[21:28] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v214, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v203, v26
	v_cvt_f32_i32_e32 v204, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v205, v28
	v_cvt_f32_i32_e32 v37, v22
	v_cvt_f32_i32_e32 v216, v23
	v_cvt_f32_i32_e32 v215, v24
	v_cvt_f32_i32_e32 v209, v25
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[21:28], v[29:30], v[39:40], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[33:34], v[189:190], v[21:28] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v19, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v18, v22
	v_cvt_f32_i32_e32 v17, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v15, v24
	v_cvt_f32_i32_e32 v34, v25
	v_cvt_f32_i32_e32 v51, v26
	v_cvt_f32_i32_e32 v50, v27
	v_cvt_f32_i32_e32 v33, v28
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[21:28], v[31:32], v[39:40], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[35:36], v[189:190], v[21:28] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:64
	scratch_load_b32 v36, off, off offset:124
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v5, v21
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v21, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v8, v22
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v22, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v7, v23
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v23, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v6, v24
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v24, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v4, v25
	v_cvt_f32_i32_e32 v1, v26
	v_cvt_f32_i32_e32 v2, v27
	v_cvt_f32_i32_e32 v3, v28
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v25, v36, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v21, s47, v21, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v22, s47, v22, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v23, s47, v23, 1
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v24, s47, v24, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s47, s47, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s47, s40
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v25, v25, s[28:31], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	buffer_load_u16 v29, v22, s[12:15], 0 offen
	buffer_load_u16 v30, v23, s[12:15], 0 offen
	buffer_load_u16 v31, v24, s[12:15], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v38, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v22, 16, v25
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v226, 16, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v32, v226, v41 :: v_dual_lshlrev_b32 v31, 16, v31
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v38, v22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v198
	ds_load_b128 v[25:28], v198 offset:16
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v29, 16, v29
	v_lshlrev_b32_e32 v30, 16, v30
	scratch_load_b64 v[40:41], off, off offset:92 ; 8-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v2, v2, v31
	v_mul_f32_e32 v4, v31, v4
	v_mul_f32_e32 v3, v3, v31
	v_mul_f32_e32 v1, v1, v31
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v35, v32, v21 :: v_dual_mul_f32 v32, v226, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v152, v32, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v226, v81
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v161, v32, v23 :: v_dual_mul_f32 v32, v226, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v158, v32, v24
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v29, v186
	v_mov_b32_e32 v186, v196
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v130, v32, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v29, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v131, v32, v22 :: v_dual_mul_f32 v32, v29, v187
	v_dual_fmac_f32 v143, v32, v23 :: v_dual_mul_f32 v32, v29, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v138, v32, v24
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v30, v193
	v_mul_f32_e32 v16, v29, v16
	v_mul_f32_e32 v12, v29, v12
	v_mul_f32_e32 v13, v29, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v29, v0 :: v_dual_fmac_f32 v117, v32, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v32, v30, v52 :: v_dual_fmac_f32 v121, v16, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v123, v13, v27 :: v_dual_mul_f32 v16, v226, v73
	v_dual_fmac_f32 v113, v32, v22 :: v_dual_mul_f32 v32, v30, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v115, v32, v23 :: v_dual_mul_f32 v32, v30, v54
	v_fmac_f32_e32 v114, v32, v24
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v31, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v245, v32, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v31, v175
	v_mov_b32_e32 v175, v95
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v125, v12, v28 :: v_dual_mul_f32 v12, v30, v55
	v_fmac_f32_e32 v69, v21, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v31, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v247, v21, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v31, v58
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v91, v21, v24
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v21, v226, v236 :: v_dual_mov_b32 v236, v105
	v_dual_mov_b32 v105, v106 :: v_dual_mov_b32 v106, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v139, v21, v25
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v226, v173
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v144, v21, v26 :: v_dual_mul_f32 v21, v226, v87
	v_fmac_f32_e32 v236, v12, v25
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v30, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v148, v21, v27 :: v_dual_mul_f32 v21, v226, v88
	v_dual_fmac_f32 v105, v12, v26 :: v_dual_mul_f32 v12, v30, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v106, v12, v27
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v30, v62
	v_dual_mul_f32 v14, v29, v14 :: v_dual_fmac_f32 v249, v12, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v14, v26
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v31, v59
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v140, v21, v28 :: v_dual_fmac_f32 v231, v12, v25
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v31, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v83, v12, v26 :: v_dual_mul_f32 v12, v31, v9
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v233, v12, v27
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v12, v31, v11 :: v_dual_mul_f32 v11, v46, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v235, v12, v28
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[21:24], v198 offset:512
	ds_load_b128 v[25:28], v198 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v12, v90, v226 :: v_dual_fmac_f32 v163, v11, v21
	v_mul_f32_e32 v11, v30, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v85, v12, v21 :: v_dual_mul_f32 v12, v226, v220
	v_mov_b32_e32 v220, v112
	v_dual_mov_b32 v112, v197 :: v_dual_fmac_f32 v225, v11, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v30, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v98, v11, v23 :: v_dual_mul_f32 v11, v30, v20
	v_dual_fmac_f32 v228, v11, v24 :: v_dual_mul_f32 v11, v208, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v160, v11, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v31, v77
	v_mov_b32_e32 v77, v108
	v_mov_b32_e32 v108, v136
	v_dual_mov_b32 v136, v157 :: v_dual_mov_b32 v157, v179
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v218, v11, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v31, v194
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v124, v12, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v12, v226, v97 :: v_dual_fmac_f32 v219, v11, v23
	v_mul_f32_e32 v11, v31, v178
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v220, v11, v24 :: v_dual_mul_f32 v11, v226, v9
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v128, v12, v23
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_dual_fmac_f32 v132, v11, v25 :: v_dual_mul_f32 v11, v9, v226
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:76 ; 4-byte Folded Reload
	v_mul_f32_e32 v12, v226, v104
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v11, v26
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v226
	scratch_load_b32 v9, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v129, v12, v24 :: v_dual_mul_f32 v12, v89, v29
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v178, off, off offset:48
	scratch_load_b32 v179, off, off offset:40
	scratch_load_b32 v176, off, off offset:36
	scratch_load_b32 v173, off, off offset:32
	scratch_load_b32 v104, off, off offset:28
	scratch_load_b32 v97, off, off offset:24
	scratch_load_b32 v95, off, off offset:20
	scratch_load_b32 v90, off, off offset:16
	scratch_load_b32 v89, off, off offset:12
	scratch_load_b32 v88, off, off offset:8
	scratch_load_b32 v82, off, off offset:4
	scratch_load_b32 v81, off, off
	v_fmac_f32_e32 v168, v11, v27
	v_fmac_f32_e32 v80, v12, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v29, v239
	s_waitcnt vmcnt(12)
	v_mul_f32_e32 v11, v9, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v166, v11, v28 :: v_dual_mul_f32 v11, v29, v227
	s_waitcnt vmcnt(11)
	v_fmac_f32_e32 v178, v11, v25
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v11, v223, v29 :: v_dual_fmac_f32 v100, v12, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v74, v11, v26 :: v_dual_mul_f32 v11, v222, v29
	v_dual_fmac_f32 v164, v11, v27 :: v_dual_mul_f32 v11, v221, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v12, v29, v238 :: v_dual_fmac_f32 v159, v11, v28
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v101, v12, v23 :: v_dual_mul_f32 v12, v29, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v11, v30, v182 :: v_dual_fmac_f32 v102, v12, v24
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v77, v11, v25
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v248, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v157, v11, v26
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v246, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v156, v11, v27 :: v_dual_mul_f32 v11, v244, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v155, v11, v28
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v31, v72
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v81, v11, v25
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v180, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v154, v11, v26 :: v_dual_mul_f32 v11, v217, v31
	v_fmac_f32_e32 v153, v11, v27
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v11, v49, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v151, v11, v28
	v_add_nc_u32_e32 v11, s33, v36
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v11, v11, s3, 1
	buffer_load_u16 v11, v11, s[28:31], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v38, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v198
	ds_load_b128 v[20:23], v198 offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v127, v0, v11 :: v_dual_mul_f32 v0, v29, v181
	v_fmac_f32_e32 v150, v16, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v226, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v126, v0, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v29, v47 :: v_dual_fmac_f32 v149, v16, v12
	v_mul_f32_e32 v16, v226, v255
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v120, v0, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v29, v42
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v146, v16, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v226, v254
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v116, v0, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v30, v10
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v147, v16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v99, v0, v11 :: v_dual_mul_f32 v0, v30, v185
	v_fmac_f32_e32 v94, v0, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v30, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v92, v0, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v30, v183
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v93, v0, v14 :: v_dual_mul_f32 v0, v31, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v19, v205, v30
	scratch_load_b32 v205, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v96, v0, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v31, v18
	v_mul_f32_e32 v18, v204, v30
	scratch_load_b32 v204, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v176, v0, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v71, v0, v13 :: v_dual_mul_f32 v0, v31, v15
	v_fmac_f32_e32 v68, v0, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v226, v234
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[10:13], v198 offset:512
	ds_load_b128 v[14:17], v198 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v145, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v226, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v142, v0, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v226, v230
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v137, v0, v22 :: v_dual_mul_f32 v0, v226, v229
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v67, v18, v16 :: v_dual_fmac_f32 v172, v19, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v141, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v29, v243
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v82, v4, v14 :: v_dual_fmac_f32 v167, v1, v15
	v_fmac_f32_e32 v165, v2, v16
	v_fmac_f32_e32 v75, v3, v17
	v_dual_fmac_f32 v119, v0, v20 :: v_dual_mul_f32 v0, v29, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v118, v0, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v29, v241
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v109, v0, v22 :: v_dual_mul_f32 v0, v29, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v30, v253
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v186, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v30, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v170, v0, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v30, v251
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v169, v0, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v30, v250
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v175, v0, v23 :: v_dual_mul_f32 v0, v31, v34
	v_dual_fmac_f32 v173, v0, v20 :: v_dual_mul_f32 v0, v31, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v20, v30, v209
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v104, v0, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v31, v50
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v76, v20, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v97, v0, v22 :: v_dual_mul_f32 v0, v31, v33
	v_fmac_f32_e32 v95, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v224, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v64, v0, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v226, v207
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v136, v0, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v226, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v135, v0, v12 :: v_dual_mul_f32 v0, v226, v202
	v_fmac_f32_e32 v134, v0, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v210, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v65, v0, v10 :: v_dual_mul_f32 v0, v29, v213
	v_fmac_f32_e32 v112, v0, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v29, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v111, v0, v12 :: v_dual_mul_f32 v0, v29, v211
	v_dual_fmac_f32 v107, v0, v13 :: v_dual_mul_f32 v0, v214, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v171, v0, v10 :: v_dual_mul_f32 v0, v30, v37
	v_dual_fmac_f32 v179, v0, v11 :: v_dual_mul_f32 v0, v30, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v79, v0, v12 :: v_dual_mul_f32 v0, v30, v215
	v_fmac_f32_e32 v78, v0, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v5, v31 :: v_dual_mul_f32 v5, v43, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v0, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v31, v8
	v_mul_f32_e32 v10, v199, v29
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v90, v0, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v31, v7 :: v_dual_mul_f32 v7, v226, v45
	v_mul_f32_e32 v11, v200, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v177, v10, v16
	v_dual_fmac_f32 v89, v0, v12 :: v_dual_mul_f32 v0, v31, v6
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v12, v29, v201
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v201, off, off offset:44
	scratch_load_b32 v103, off, off offset:88
	v_mul_f32_e32 v6, v44, v226
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v133, v7, v14 :: v_dual_fmac_f32 v88, v0, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	v_mul_f32_e32 v13, v203, v30
	scratch_load_b32 v203, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v110, v12, v14
	v_fmac_f32_e32 v174, v11, v17
	v_fmac_f32_e32 v66, v13, v15
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v204, v5, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v226
	v_mul_f32_e32 v8, v195, v29
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v203, v6, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v205, v0, v15
	v_fmac_f32_e32 v201, v8, v15
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v199, off, off offset:404
	scratch_load_b32 v12, off, off offset:428
	scratch_load_b32 v200, off, off offset:408
	scratch_load_b32 v202, off, off offset:412
	scratch_load_b32 v70, off, off offset:416
	scratch_load_b32 v72, off, off offset:420
	scratch_load_b32 v73, off, off offset:424
	v_dual_mov_b32 v3, v40 :: v_dual_mov_b32 v162, v35
	s_waitcnt vmcnt(6)
	v_and_b32_e32 v1, 8, v199
	v_and_b32_e32 v2, 0x80, v199
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v64 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v147
	v_dual_mul_f32 v8, 0xbfb8aa3b, v150 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v203
	v_dual_mul_f32 v6, 0xbfb8aa3b, v204 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mul_f32_e32 v31, 0xbfb8aa3b, v120
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v6
	v_mul_f32_e32 v187, 0xbfb8aa3b, v79
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v0, 0xbfb8aa3b, v205
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, s0
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v64
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v203
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v182, 0xbfb8aa3b, v68
	v_dual_fmac_f32 v13, 0xbfb8aa3b, v204 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v146
	v_mul_f32_e32 v7, 0xbfb8aa3b, v149
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v205 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v142
	v_mul_f32_e32 v28, 0xbfb8aa3b, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v10, v11, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v16, v6
	v_mul_f32_e32 v6, 0xbfb8aa3b, v145
	v_exp_f32_e32 v15, v15
	v_dual_mul_f32 v11, 0xbfb8aa3b, v65 :: v_dual_mul_f32 v198, 0xbfb8aa3b, v127
	v_dual_mul_f32 v23, 0xbfb8aa3b, v137 :: v_dual_mul_f32 v36, 0xbfb8aa3b, v135
	v_mul_f32_e32 v17, 0xbfb8aa3b, v174
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v9, v13, v9
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v0, v16, v0
	v_mul_f32_e32 v16, 0xbfb8aa3b, v177
	v_ldexp_f32 v13, v15, v14
	v_mul_f32_e32 v14, 0xbfb8aa3b, v201
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v16
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_dual_mul_f32 v42, 0xbfb8aa3b, v104 :: v_dual_add_f32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	v_cndmask_b32_e64 v20, 0, 0x42800000, s1
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v65
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v33, 0xbfb8aa3b, v108 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v177
	v_mul_f32_e32 v41, 0xbfb8aa3b, v118
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v174
	v_exp_f32_e32 v15, v15
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v201
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s1
	v_mul_f32_e32 v193, 0xbfb8aa3b, v94
	v_dual_mul_f32 v37, 0xbfb8aa3b, v136 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v126
	v_ldexp_f32 v11, v15, v11
	v_mul_f32_e32 v15, 0xbfb8aa3b, v171
	v_dual_mul_f32 v29, 0xbfb8aa3b, v134 :: v_dual_mul_f32 v38, 0xbfb8aa3b, v116
	v_dual_mul_f32 v34, 0xbfb8aa3b, v109 :: v_dual_mul_f32 v197, 0xbfb8aa3b, v119
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v14, v16, v14
	v_ldexp_f32 v16, v18, v17
	v_ldexp_f32 v17, v20, v19
	v_mul_f32_e32 v18, 0xbfb8aa3b, v66
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_dual_mul_f32 v20, 0xbfb8aa3b, v67 :: v_dual_mul_f32 v191, 0xbfb8aa3b, v186
	v_dual_mul_f32 v45, 0xbfb8aa3b, v175 :: v_dual_add_f32 v10, 1.0, v10
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v22, 0xbfb8aa3b, v172
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v171
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v26, 0, 0x42800000, s1
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v67 :: v_dual_mul_f32 v87, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v66
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v24, v24
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s1
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v15, v19, v15
	v_exp_f32_e32 v26, v26
	v_mul_f32_e32 v181, 0xbfb8aa3b, v173
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, null, v10, v10, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v24, v22
	v_mul_f32_e32 v22, 0xbfb8aa3b, v86
	v_mul_f32_e32 v24, 0xbfb8aa3b, v167
	v_ldexp_f32 v18, v20, v18
	v_ldexp_f32 v20, v26, v25
	v_mul_f32_e32 v25, 0xbfb8aa3b, v165
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	v_mul_f32_e32 v26, 0xbfb8aa3b, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v49
	v_div_scale_f32 v60, s1, v204, v9, v204
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v46, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v26
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v11, v11, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v26, 0, 0x42800000, s0
	v_mul_f32_e32 v184, 0xbfb8aa3b, v96
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v167
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v165 :: v_dual_fmac_f32 v26, 0xbfb8aa3b, v75
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v46, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, vcc_lo, v64, v10, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v25
	v_exp_f32_e32 v51, v26
	v_exp_f32_e32 v24, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v39, 0xbfb8aa3b, v110 :: v_dual_mul_f32 v196, 0xbfb8aa3b, v112
	v_ldexp_f32 v32, v46, v32
	v_dual_mul_f32 v195, 0xbfb8aa3b, v111 :: v_dual_mul_f32 v192, 0xbfb8aa3b, v93
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v46, v50, v47
	v_ldexp_f32 v47, v51, v48
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v49, v53, 1.0
	v_div_scale_f32 v51, null, v9, v9, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, null, v0, v0, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v53, v48, v53
	v_rcp_f32_e32 v55, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v24, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v54, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v24, 0xbfb8aa3b, v88 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v107
	v_mul_f32_e32 v44, 0xbfb8aa3b, v92
	v_dual_mul_f32 v194, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v189, 0xbfb8aa3b, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v49, v56, v54
	v_fma_f32 v59, -v51, v55, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v50, v48, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v90
	v_dual_mul_f32 v190, 0xbfb8aa3b, v170 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v58, v53
	v_fmac_f32_e32 v48, v57, v48
	v_div_scale_f32 v57, s0, v205, v0, v205
	v_fmac_f32_e32 v55, v59, v55
	v_div_scale_f32 v59, null, v13, v13, v203
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v58, v57, v48
	v_fma_f32 v49, -v49, v56, v54
	v_mul_f32_e32 v62, v60, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v61, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v188, 0xbfb8aa3b, v179 :: v_dual_mul_f32 v183, 0xbfb8aa3b, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v50, v58, v57
	v_div_fmas_f32 v49, v49, v53, v56
	v_rcp_f32_e32 v53, v63
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v180, 0xbfb8aa3b, v71 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v54, v48
	v_fma_f32 v54, -v51, v62, v60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v59, v61, 1.0
	v_div_fixup_f32 v10, v49, v10, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v30, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v50, v58, v57
	v_dual_fmac_f32 v62, v54, v55 :: v_dual_fmac_f32 v61, v56, v61
	v_div_scale_f32 v50, s2, v203, v13, v203
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v63, v53, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v49, v48, v58
	v_fma_f32 v49, -v51, v62, v60
	v_mul_f32_e32 v51, v50, v61
	v_fmac_f32_e32 v53, v54, v53
	v_div_scale_f32 v54, null, v14, v14, v201
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v57, -v59, v51, v50
	v_div_fmas_f32 v49, v49, v55, v62
	v_rcp_f32_e32 v55, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, s0, v65, v11, v65
	v_div_scale_f32 v60, null, v16, v16, v177
	v_fmac_f32_e32 v51, v57, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v58, v56, v53
	v_div_fixup_f32 v9, v49, v9, v204
	v_rcp_f32_e32 v49, v60
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v57, -v54, v55, 1.0
	v_fma_f32 v50, -v59, v51, v50
	v_div_scale_f32 v59, null, v17, v17, v174
	v_div_fixup_f32 v0, v48, v0, v205
	v_fma_f32 v48, -v63, v58, v56
	v_fmac_f32_e32 v55, v57, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v57, v59
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v62, -v60, v49, 1.0
	v_fmac_f32_e32 v58, v48, v53
	v_div_scale_f32 v48, s1, v201, v14, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_fmac_f32 v49, v62, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v50, v61, v51
	v_fma_f32 v51, -v63, v58, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v56, v48, v55
	v_div_scale_f32 v61, s2, v177, v16, v177
	v_fma_f32 v62, -v59, v57, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v64, s0, v174, v17, v174
	v_div_fmas_f32 v51, v51, v53, v58
	v_fma_f32 v53, -v54, v56, v48
	v_mul_f32_e32 v58, v61, v49
	v_dual_fmac_f32 v57, v62, v57 :: v_dual_add_f32 v52, 1.0, v52
	v_div_scale_f32 v63, null, v15, v15, v171
	v_div_fixup_f32 v13, v50, v13, v203
	v_div_fixup_f32 v11, v51, v11, v65
	v_fmac_f32_e32 v56, v53, v55
	v_fma_f32 v50, -v60, v58, v61
	v_mul_f32_e32 v51, v64, v57
	v_rcp_f32_e32 v62, v63
	v_div_scale_f32 v53, null, v18, v18, v66
	v_fma_f32 v48, -v54, v56, v48
	v_fmac_f32_e32 v58, v50, v49
	v_fma_f32 v50, -v59, v51, v64
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v53
	v_div_fmas_f32 v48, v48, v55, v56
	v_fma_f32 v55, -v60, v58, v61
	v_fmac_f32_e32 v51, v50, v57
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v65, -v63, v62, 1.0
	v_div_fixup_f32 v14, v48, v14, v201
	v_div_fmas_f32 v49, v55, v49, v58
	v_fma_f32 v55, -v59, v51, v64
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v62, v65, v62
	v_div_scale_f32 v65, s3, v171, v15, v171
	v_fma_f32 v56, -v53, v54, 1.0
	v_div_fmas_f32 v51, v55, v57, v51
	v_div_fixup_f32 v48, v49, v16, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v50, v65, v62
	v_div_scale_f32 v59, s1, v66, v18, v66
	v_div_fixup_f32 v49, v51, v17, v174
	v_fmac_f32_e32 v54, v56, v54
	v_div_scale_f32 v56, null, v19, v19, v67
	v_fma_f32 v58, -v63, v50, v65
	v_div_scale_f32 v51, null, v20, v20, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v55, v56
	v_mul_f32_e32 v57, v59, v54
	v_fmac_f32_e32 v50, v58, v62
	s_mov_b32 vcc_lo, s3
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v53, v57, v59
	v_fma_f32 v16, -v63, v50, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v56, v55, 1.0
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v16, v16, v62, v50
	v_rcp_f32_e32 v50, v51
	v_fmac_f32_e32 v57, v17, v54
	v_fmac_f32_e32 v55, v58, v55
	v_div_scale_f32 v58, null, v52, v52, v86
	v_div_scale_f32 v17, s0, v67, v19, v67
	v_div_fixup_f32 v60, v16, v15, v171
	v_fma_f32 v15, -v53, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v59, v58
	v_mul_f32_e32 v16, v17, v55
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v51, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v15, v15, v54, v57
	v_fma_f32 v54, -v56, v16, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v50, v53, v50
	v_div_scale_f32 v53, null, v32, v32, v167
	v_div_scale_f32 v57, s1, v172, v20, v172
	v_fma_f32 v61, -v58, v59, 1.0
	v_div_fixup_f32 v62, v15, v18, v66
	v_fmac_f32_e32 v16, v54, v55
	v_rcp_f32_e32 v15, v53
	v_mul_f32_e32 v18, v57, v50
	v_fmac_f32_e32 v59, v61, v59
	v_div_scale_f32 v54, s2, v86, v52, v86
	v_div_scale_f32 v61, null, v46, v46, v165
	v_fma_f32 v17, -v56, v16, v17
	v_fma_f32 v56, -v51, v18, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v63, v54, v59
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v64, -v53, v15, 1.0
	v_rcp_f32_e32 v65, v61
	v_div_scale_f32 v66, null, v47, v47, v75
	v_div_fmas_f32 v16, v17, v55, v16
	v_fmac_f32_e32 v18, v56, v50
	v_fma_f32 v17, -v58, v63, v54
	v_fmac_f32_e32 v15, v64, v15
	v_rcp_f32_e32 v55, v66
	v_div_scale_f32 v56, s0, v167, v32, v167
	v_div_fixup_f32 v67, v16, v19, v67
	v_fma_f32 v16, -v51, v18, v57
	v_fmac_f32_e32 v63, v17, v59
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v64, -v61, v65, 1.0
	v_mul_f32_e32 v17, v56, v15
	v_div_fmas_f32 v16, v16, v50, v18
	v_fma_f32 v18, -v58, v63, v54
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v65, v64, v65
	v_div_scale_f32 v19, s3, v165, v46, v165
	v_fma_f32 v51, -v66, v55, 1.0
	v_fma_f32 v50, -v53, v17, v56
	v_div_fmas_f32 v18, v18, v59, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v57, v16, v20, v172
	v_fmac_f32_e32 v55, v51, v55
	v_div_scale_f32 v51, s1, v75, v47, v75
	v_fmac_f32_e32 v17, v50, v15
	v_div_fixup_f32 v50, v18, v52, v86
	v_mul_f32_e32 v54, v19, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v20, v51, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v53, v17, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v61, v54, v19
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v8, v15, v17
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v54, v16, v65
	v_fma_f32 v16, -v66, v20, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v52
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v8, v32, v167
	v_fma_f32 v15, -v61, v54, v19
	v_fmac_f32_e32 v20, v16, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v84, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v65, v54
	v_fma_f32 v16, -v66, v20, v51
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v46, v15, v46, v165
	v_div_fmas_f32 v7, v16, v55, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_ldexp_f32 v5, v17, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v20, v85, v10 :: v_dual_mul_f32 v17, v168, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v149
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v47, v7, v47, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v5, v15
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v147
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, null, v0, v0, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v74, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v51
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v164, v48
	v_mul_f32_e32 v18, v166, v13
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v5, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, vcc_lo, v150, v0, v150
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v9, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v51, v52, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v146
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v16, v80, v11 :: v_dual_mul_f32 v13, v159, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v7, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v163, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, null, v48, v48, v149
	v_div_scale_f32 v58, null, v53, v53, v147
	v_mul_f32_e32 v59, v54, v52
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v155, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v55, v49
	v_rcp_f32_e32 v57, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v4, v154, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v51, v59, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v56, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v153, v46
	v_mul_f32_e32 v10, v157, v62
	v_mul_f32_e32 v7, v160, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v60, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v49, v55, 1.0
	v_fma_f32 v56, -v58, v57, 1.0
	v_div_scale_f32 v50, s0, v149, v48, v149
	v_fma_f32 v46, -v51, v59, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v61, v55
	v_fmac_f32_e32 v57, v56, v57
	v_div_scale_f32 v56, null, v32, v32, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v46, v46, v52, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v51, v50, v55
	v_rcp_f32_e32 v52, v56
	v_div_scale_f32 v54, s1, v147, v53, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v49, v51, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v151, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v60, v54, v57
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v47, -v56, v52, 1.0
	v_fmac_f32_e32 v51, v59, v55
	v_div_fixup_f32 v0, v46, v0, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v58, v60, v54
	v_fmac_f32_e32 v52, v47, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v49, v51, v50
	v_div_scale_f32 v50, s2, v146, v32, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v60, v46, v57 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v27, v27, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v54, -v58, v60, v54
	v_div_fmas_f32 v49, v49, v55, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_exp_f32_e32 v23, v47
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v47, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v51, v50, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v47, v47, v145
	v_fma_f32 v27, -v56, v51, v50
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v23, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v46, v59
	v_div_fmas_f32 v54, v54, v57, v60
	v_dual_fmac_f32 v51, v27, v52 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v137
	v_div_fixup_f32 v27, v49, v48, v149
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v54, v53, v147
	v_fma_f32 v49, -v56, v51, v50
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v59, v46, 1.0
	v_div_scale_f32 v53, null, v48, v48, v142
	v_div_fmas_f32 v49, v49, v52, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v54, v46
	v_div_scale_f32 v52, s0, v145, v47, v145
	v_rcp_f32_e32 v51, v53
	v_div_fixup_f32 v21, v49, v32, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v54, v52, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v50, v55
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v141
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v59, v54, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v53, v51, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v36
	v_exp_f32_e32 v49, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v56, v46
	v_div_scale_f32 v57, null, v50, v50, v137
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s1, v142, v48, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v59, v54, v52
	v_rcp_f32_e32 v58, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v158, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v55, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v46, v52, v46, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, s0, v137, v50, v137
	v_fma_f32 v59, -v53, v56, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v46, v46, v47, v145
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v162, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v57, v58, 1.0
	v_fmac_f32_e32 v56, v59, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v152, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, null, v0, v0, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v53, v56, v55
	v_fmac_f32_e32 v58, v49, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v136
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v8, v156, v67 :: v_dual_mul_f32 v55, v37, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v36, v47, v51, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, s2
	v_exp_f32_e32 v54, v54
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s2
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v52, v49, 1.0
	v_div_fixup_f32 v36, v36, v48, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v57, v55, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v49, v56, v49
	v_div_scale_f32 v56, s1, v141, v0, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v48, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v54, v53
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v48, v56, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v57, v55, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v52, v48, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v134
	v_ldexp_f32 v47, v51, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v51, null, v57, v57, v136
	v_fmac_f32_e32 v48, v29, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v51
	v_div_fmas_f32 v28, v37, v58, v55
	v_fma_f32 v37, -v52, v48, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v47, v47, v135
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v37, v37, v49, v48
	v_rcp_f32_e32 v56, v59
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v51, v54, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, vcc_lo, v136, v57, v136
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v58, v54
	v_div_fixup_f32 v0, v37, v0, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v55
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v197
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v59, v56, 1.0
	v_mul_f32_e32 v55, v48, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v28, v50, v137
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v140, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v49, v56
	v_fma_f32 v0, -v51, v55, v48
	v_div_scale_f32 v49, s0, v135, v47, v135
	v_div_scale_f32 v58, null, v53, v53, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v55, v0, v54 :: v_dual_mul_f32 v50, v49, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v37, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v60, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v139, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v51, v55, v48
	v_fma_f32 v0, -v59, v50, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, s1, v134, v53, v134
	v_div_fmas_f32 v48, v48, v54, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v198
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v0, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v58, v60, 1.0
	v_div_scale_f32 v51, null, v46, v46, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v59, v50, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v60, v0, v60
	v_rcp_f32_e32 v0, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v48, v48, v57, v136
	v_div_fmas_f32 v49, v49, v56, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_exp_f32_e32 v40, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v50, v52, v60
	v_div_scale_f32 v57, s0, v133, v46, v133
	v_fma_f32 v56, -v51, v0, 1.0
	v_div_fixup_f32 v47, v49, v47, v135
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v49, -v58, v50, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v124, v124, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v56, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_ldexp_f32 v38, v40, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v49, v60
	v_mul_f32_e32 v40, v57, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v126
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v58, v50, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v56, v56
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v116
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v59, v59, v127
	v_fma_f32 v38, -v51, v40, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v31, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v21, v161, v21 :: v_dual_fmac_f32 v40, v38, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v56, v55
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v51, -v51, v40, v57
	v_div_fmas_f32 v50, v52, v60, v50
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v58, v54, 1.0
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, null, v52, v52, v126
	v_div_fmas_f32 v0, v51, v0, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v38, v54
	v_div_scale_f32 v57, vcc_lo, v127, v59, v127
	v_rcp_f32_e32 v51, v49
	v_div_fixup_f32 v38, v50, v53, v134
	v_div_fixup_f32 v0, v0, v46, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v57, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v56, 1.0, v31 :: v_dual_mul_f32 v29, v148, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v132, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v40, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v58, v50, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v46, null, v56, v56, v116
	v_fma_f32 v53, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v60, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v55, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v128, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s0, v126, v52, v126
	v_div_scale_f32 v61, null, v0, v0, v120
	v_fma_f32 v48, -v58, v50, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v47, v53, v51
	v_rcp_f32_e32 v58, v61
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v46, v55, 1.0
	v_div_fmas_f32 v48, v48, v54, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v49, v47, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v60, v55
	v_div_scale_f32 v60, s1, v116, v56, v116
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v119
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v57, v51
	v_fma_f32 v62, -v61, v58, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v57, v60, v55
	v_div_fixup_f32 v48, v48, v59, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v49, v47, v53
	v_fmac_f32_e32 v58, v62, v58
	v_div_scale_f32 v59, s2, v120, v0, v120
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v53, -v46, v57, v60
	v_div_fmas_f32 v41, v49, v51, v47
	v_mul_f32_e32 v47, v59, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_ldexp_f32 v50, v54, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v53, v55
	v_fma_f32 v34, -v61, v47, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v118
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v46, v57, v60
	v_fmac_f32_e32 v47, v34, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v51
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v109
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, null, v50, v50, v119
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v46, v46, v55, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v55, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v61, v47, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v49
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v187
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v33, v33, v58, v47
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v47, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v54, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v51, v55, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v108
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v33, v0, v120
	v_div_scale_f32 v54, null, v47, v47, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v53, v55
	v_div_scale_f32 v53, vcc_lo, v119, v50, v119
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v144, v36
	v_mul_f32_e32 v33, v143, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v52, v126
	v_dual_mul_f32 v61, v53, v55 :: v_dual_add_f32 v58, 1.0, v34
	v_rcp_f32_e32 v59, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v131, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v51, v61, v53
	v_div_scale_f32 v60, null, v58, v58, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v61, v52, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v57, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, s0, v118, v47, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v51, v61, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v51, v55, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v196
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v195
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v46, v56, v116
	v_rcp_f32_e32 v46, v60
	v_fma_f32 v56, -v54, v59, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v116, v130, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v51, v50, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v59, v56, v59
	v_div_scale_f32 v56, null, v0, v0, v108
	v_fma_f32 v52, -v60, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v53, v49, v59
	v_rcp_f32_e32 v55, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v52, v46
	v_div_scale_f32 v52, s1, v109, v58, v109
	v_fma_f32 v57, -v54, v53, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v61, v52, v46
	v_fma_f32 v51, -v56, v55, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v53, v57, v59
	v_div_scale_f32 v57, s2, v108, v0, v108
	v_fma_f32 v50, -v60, v61, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v51, v55
	v_fma_f32 v49, -v54, v53, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v50, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v111
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v49, v49, v59, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v57, v55
	v_fma_f32 v52, -v60, v61, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v47, v49, v47, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v50, v50, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v56, v53, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v46, v52, v46, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v54, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, null, v50, v50, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v46, v58, v109
	v_fma_f32 v46, -v56, v53, v57
	v_rcp_f32_e32 v51, v62
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v54, null, v49, v49, v111
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v46, v46, v55, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v54
	v_div_scale_f32 v55, s0, v112, v50, v112
	v_fma_f32 v56, -v62, v51, 1.0
	v_div_fixup_f32 v0, v46, v0, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v109, v122, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v56, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v54, v53, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v129, v38
	v_mul_f32_e32 v39, v125, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v57, v55, v51 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v110
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v52 :: v_dual_fmac_f32 v53, v58, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, s1, v111, v49, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v62, v57, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v0, v0, v107
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v57, v52, v51 :: v_dual_mul_f32 v52, v58, v53
	v_rcp_f32_e32 v47, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v108, v121, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v193
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v62, v57, v55
	v_fma_f32 v60, -v54, v52, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v56, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v123, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v55, v51, v57
	v_fmac_f32_e32 v52, v60, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v194
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v59, v47, 1.0
	v_div_fixup_f32 v50, v51, v50, v112
	v_fma_f32 v51, -v54, v52, v58
	v_div_scale_f32 v54, null, v46, v46, v110
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, s0, v107, v0, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v55, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v99
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v58, v48, v47
	v_div_fmas_f32 v51, v51, v53, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, s2
	v_exp_f32_e32 v57, v57
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v192
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v54, v55, 1.0
	v_div_fixup_f32 v49, v51, v49, v111
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v59, v58, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v60, v55
	v_div_scale_f32 v60, s1, v110, v46, v110
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v51, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v57, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v60, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v34, v138, v34 :: v_dual_fmac_f32 v61, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v59, v58, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v54, v56, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v52, v53, v52
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v51, v51, v99
	v_fmac_f32_e32 v56, v59, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v61
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v53
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v101, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, null, v52, v52, v94
	v_div_fmas_f32 v44, v48, v47, v58
	v_fma_f32 v47, -v54, v56, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v62
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v60, -v53, v61, 1.0
	v_div_fmas_f32 v47, v47, v55, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v59, v57
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, vcc_lo, v99, v51, v99
	v_fmac_f32_e32 v61, v60, v61
	v_div_fixup_f32 v46, v47, v46, v110
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v62, v58, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v54, 1.0, v55 :: v_dual_mul_f32 v55, v56, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v44, v0, v107
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v58, v57, v58
	v_div_scale_f32 v57, s0, v94, v52, v94
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v178, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v53, v55, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v54, v54, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v60, v57, v58 :: v_dual_fmac_f32 v55, v46, v61
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v102, v102, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v47, v48
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v62, v60, v57
	v_fma_f32 v47, -v53, v55, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v100, v100, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, s1, v93, v54, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v46, v58
	v_div_fmas_f32 v47, v47, v61, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v59, v63, 1.0
	v_div_scale_f32 v48, null, v0, v0, v92
	v_fma_f32 v49, -v62, v60, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v46, v63
	v_rcp_f32_e32 v46, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v186
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v49, v49, v58, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v47, v47, v51, v99
	v_mul_f32_e32 v51, v50, v63
	v_div_scale_f32 v58, s0, v92, v0, v92
	v_div_fixup_f32 v49, v49, v52, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v55
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v48, v46, 1.0
	v_fma_f32 v55, -v59, v51, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v170
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v56, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v52, v52, v53
	v_exp_f32_e32 v57, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v58, v46
	v_fmac_f32_e32 v51, v55, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v48, v53, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v59, v51, v50
	v_div_scale_f32 v59, null, v52, v52, v186
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v57, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v61, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v60
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v57, v59
	v_div_fmas_f32 v50, v50, v63, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v48, v53, v58
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v175
	v_ldexp_f32 v45, v45, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v51, v51, v170
	v_div_fmas_f32 v46, v48, v46, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v59, v57, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v46, v0, v92
	v_fmac_f32_e32 v57, v55, v57
	v_div_scale_f32 v55, vcc_lo, v186, v52, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v92, v117, v47 :: v_dual_mul_f32 v45, v115, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v54, v93
	v_mul_f32_e32 v54, v55, v57
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v61, -v56, v53, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v48, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v93, v113, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v58, v58, v169
	v_fma_f32 v60, -v59, v54, v55
	v_fmac_f32_e32 v53, v61, v53
	v_div_scale_f32 v61, s0, v170, v51, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v46
	v_fmac_f32_e32 v54, v60, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v49, v61, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v59, v54, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v60, null, v0, v0, v175
	v_fma_f32 v55, -v56, v49, v61
	v_div_scale_f32 v59, s1, v169, v58, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v47, v47, v57, v54
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v49, v55, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, s2
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v47, v47, v52, v186
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v56, v49, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v179
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, s2, v175, v0, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v84, v236, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v49, v52, v53, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v55
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v49, v49, v51, v170
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v94, v114, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v46, v48, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v85, v105, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v55, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v50, v48
	v_rcp_f32_e32 v50, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v78
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v54, 1.0, v54 :: v_dual_mul_f32 v57, v59, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v56, -v46, v57, v59
	v_fma_f32 v62, -v60, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v57, v56, v48 :: v_dual_fmac_f32 v50, v62, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v46, v57, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v52, v61, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v54, v54, v179
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v46, v46, v48, v57
	v_fma_f32 v56, -v60, v52, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v63
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v185
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v59
	v_div_fixup_f32 v46, v46, v58, v169
	v_fmac_f32_e32 v52, v56, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v106, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v60, v52, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v48, v48, v55
	v_ldexp_f32 v53, v56, v53
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v60, v50, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v59, v57, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v50, v0, v175
	v_div_scale_f32 v55, null, v52, v52, v79
	v_fmac_f32_e32 v57, v53, v57
	v_div_scale_f32 v53, vcc_lo, v179, v54, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v60, v55
	v_div_scale_f32 v62, null, v48, v48, v78
	v_mul_f32_e32 v63, v53, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v87, v249, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v61, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v50, v62
	v_div_scale_f32 v46, s0, v79, v52, v79
	v_fma_f32 v51, -v59, v63, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v55, v60, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v63, v51, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v58, v60
	v_fma_f32 v51, -v62, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v56, null, v0, v0, v76
	v_fma_f32 v49, -v59, v63, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v53, v46, v60 :: v_dual_fmac_f32 v50, v51, v50
	v_div_scale_f32 v51, s1, v78, v48, v78
	v_div_fmas_f32 v49, v49, v57, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v56
	v_fma_f32 v58, -v55, v53, v46
	v_mul_f32_e32 v59, v51, v50
	v_div_fixup_f32 v47, v49, v54, v179
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v58, v60
	v_fma_f32 v49, -v62, v59, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v56, v57, 1.0
	v_fma_f32 v46, -v55, v53, v46
	v_fmac_f32_e32 v59, v49, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v49, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v54, v57
	v_div_scale_f32 v58, s2, v76, v0, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v46, v46, v60, v53
	v_mul_f32_e32 v53, v58, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v49, v49, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v62, v59, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v56, v53, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v51, v50, v59
	v_fmac_f32_e32 v53, v60, v57
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v49, v49, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v55, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v50, v48, v78
	v_fma_f32 v50, -v56, v53, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v54, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v51, 1.0, v51 :: v_dual_mul_f32 v78, v228, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v50, v57, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v51, v51, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v0, v50, v0, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v63, v54, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v53, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v76, v225, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v46, v52, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v56, v54
	v_div_scale_f32 v56, s0, v96, v49, v96
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v79, v77, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v55, v53, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v56, v54
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v98, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v59, v53
	v_div_scale_f32 v59, s1, v176, v51, v176
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v63, v58, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v57, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v52, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v52, v59, v53 :: v_dual_add_f32 v47, 1.0, v50
	v_fma_f32 v48, -v63, v58, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v56, -v55, v52, v59
	v_div_fmas_f32 v48, v48, v54, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v56, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v47, v47, v71
	v_div_fixup_f32 v48, v48, v49, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v49, -v55, v52, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v55, v54
	v_div_fmas_f32 v42, v49, v53, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, s2
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v173
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v42, v51, v176
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v104
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v30
	v_exp_f32_e32 v57, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v54, v55, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v69, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v58, v55
	v_div_scale_f32 v58, s1, v71, v47, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v57, v56
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v49, v52, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v97
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, null, v0, v0, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v52, null, v35, v35, v173
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v46, v60
	v_rcp_f32_e32 v30, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v60, v46, 1.0
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s0, v68, v0, v68
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v53, v50, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v60, v53, v50
	v_fmac_f32_e32 v53, v42, v46
	v_mul_f32_e32 v42, v58, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v60, v53, v50
	v_fma_f32 v59, -v54, v42, v58
	v_fma_f32 v60, -v52, v30, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v46, v50, v46, v53
	v_fmac_f32_e32 v42, v59, v55
	v_div_scale_f32 v59, null, v49, v49, v104
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v30, v60, v30
	v_fma_f32 v50, -v54, v42, v58
	v_rcp_f32_e32 v58, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v46, v0, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v50, v55, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v57, v56
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, vcc_lo, v173, v35, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v42, v42, v47, v71
	v_fma_f32 v56, -v59, v58, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v54, v55, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v247, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v56, v58
	v_div_scale_f32 v56, s0, v104, v49, v104
	v_fma_f32 v46, -v52, v54, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v91, v0
	v_mul_f32_e32 v68, v245, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v60, v56, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v47, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v46, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v59, v60, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v52, v54, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v90
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v46, v58
	v_div_fmas_f32 v30, v47, v30, v54
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v59, v60, v56
	v_div_fixup_f32 v30, v30, v35, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v47, v58, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v49, v104
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, null, v0, v0, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v51, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v48, v51, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v50, 1.0, v50 :: v_dual_fmac_f32 v51, v24, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v50, v50, v97
	v_rcp_f32_e32 v61, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v57, v61, 1.0
	v_fmac_f32_e32 v61, v46, v61
	v_div_scale_f32 v46, s1, v97, v50, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v46, v61
	v_fma_f32 v25, -v57, v47, v46
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v47, v25, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v53
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_exp_f32_e32 v22, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v57, v47, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v25, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v46, v46, v61, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v82
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v83, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, s0, v95, v0, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v54
	v_ldexp_f32 v22, v22, v35
	v_exp_f32_e32 v35, v49
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v47, v55, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v46, v50, v97
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v54, -v48, v47, v55
	v_div_scale_f32 v49, null, v25, v25, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v24, v35, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v54, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v50, v49
	v_div_scale_f32 v35, null, v22, v22, v89
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v48, v47, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v55, v35
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v233, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v52, v52, v88
	v_div_fmas_f32 v47, v48, v51, v47
	v_div_scale_f32 v48, null, v24, v24, v82
	v_rcp_f32_e32 v56, v53
	v_fma_f32 v54, -v49, v50, 1.0
	v_div_scale_f32 v51, vcc_lo, v90, v25, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v57, v48
	v_div_fixup_f32 v0, v47, v0, v95
	v_fmac_f32_e32 v50, v54, v50
	v_fma_f32 v54, -v35, v55, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v53, v56, 1.0
	v_dual_mul_f32 v58, v51, v50 :: v_dual_fmac_f32 v55, v54, v55
	v_div_scale_f32 v54, s0, v89, v22, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v48, v57, 1.0
	v_fmac_f32_e32 v56, v47, v56
	v_div_scale_f32 v47, s1, v88, v52, v88
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v235, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v49, v58, v51
	v_dual_mul_f32 v60, v54, v55 :: v_dual_fmac_f32 v57, v59, v57
	v_div_scale_f32 v59, s2, v82, v24, v82
	v_mul_f32_e32 v64, v47, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v0, v50
	v_fma_f32 v0, -v35, v60, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v65, v59, v57
	v_fma_f32 v46, -v53, v64, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v49, v58, v51
	v_fmac_f32_e32 v60, v0, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v0, -v48, v65, v59
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v49, |v100|, |v101|, |v102|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v46, v56
	v_div_fmas_f32 v26, v26, v50, v58
	v_fma_f32 v35, -v35, v60, v54
	v_fmac_f32_e32 v65, v0, v57
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v0, -v53, v64, v47
	v_div_fixup_f32 v25, v26, v25, v90
	v_div_fmas_f32 v35, v35, v55, v60
	v_fma_f32 v46, -v48, v65, v59
	s_mov_b32 vcc_lo, s1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v26, |v32|, |v27|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v56, v64
	s_mov_b32 vcc_lo, s2
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v47, |v124|, |v40|, |v38|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v46, v46, v57, v65
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v48, |v31|, |v19|, |v17|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v231, v30
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v52, v88
.Ltmp15:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v50, |v44|, |v15|, |v14|
.Ltmp16:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v46, v24, v82
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v46, |v23|, |v37|, |v36|
.Ltmp18:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v35, v22, v89
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v35, v220, v0
.Ltmp19:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v29|, |v28|, |v20|
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v81, v24
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, v26, |v21|, v46
	v_max3_f32 v26, v47, v48, |v18|
	v_max_f32_e64 v46, |v116|, |v41|
	v_max3_f32 v47, |v34|, |v108|, |v109|
	v_max3_f32 v48, |v43|, |v39|, |v16|
	v_max_f32_e64 v51, |v92|, |v93|
	v_max3_f32 v52, |v94|, |v84|, |v85|
	v_max3_f32 v53, |v76|, |v77|, |v78|
	v_max3_f32 v54, |v79|, |v10|, |v8|
	v_max3_f32 v46, v46, |v33|, v47
	v_max3_f32 v47, v49, v50, |v13|
	v_max3_f32 v49, |v86|, |v87|, |v11|
	v_max3_f32 v50, v51, |v45|, v52
	v_max3_f32 v51, v53, v54, |v9|
.Ltmp22:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v52, v219, v22 :: v_dual_mul_f32 v53, v218, v25
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v24, v0, v26
	v_max3_f32 v22, v46, v48, v47
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v24, v50, v49, v51
	v_max_f32_e64 v25, |v68|, |v69|
	v_max3_f32 v26, |v42|, |v60|, |v61|
	v_max3_f32 v46, |v53|, |v52|, |v35|
	v_max3_f32 v47, |v30|, |v4|, |v5|
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v49, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v22, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v48, |v62|, |v63|, |v7|
	v_max3_f32 v25, v25, |v71|, v26
	v_max3_f32 v26, v46, v47, |v6|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v46, v49, v49 :: v_dual_max_f32 v47, v50, v50
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v49, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v50, 3, v199
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v25, v48, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v46, v0, v46 :: v_dual_max_f32 v47, v22, v47
	v_dual_max_f32 v0, v49, v49 :: v_dual_and_b32 v51, 4, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v49, v50, 9, 0
	v_lshlrev_b32_e32 v22, 5, v50
	v_permlanex16_b32 v54, v26, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v48, v24, v0 :: v_dual_and_b32 v25, 0x60, v199
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v0, v51, 2, v49
	s_waitcnt vmcnt(5)
	v_and_or_b32 v12, 0x680, v12, v22
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v49, v54, v54
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v24, 1, v2
	v_xor_b32_e32 v54, v22, v25
	v_lshl_add_u32 v0, v1, 4, v0
	v_lshrrev_b32_e32 v55, 3, v2
	v_xor_b32_e32 v12, v12, v25
	v_lshl_add_u32 v56, v51, 6, 0
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v49, v26, v49
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v0, v24, v54
	v_lshlrev_b32_e32 v1, 3, v1
	v_add_nc_u32_e32 v2, 0, v2
	v_add3_u32 v12, v56, v55, v12
	ds_store_b128 v0, v[46:49]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v0, v46
	v_mov_b32_e32 v12, v47
	v_mov_b32_e32 v26, v48
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v46, v46, v46 :: v_dual_max_f32 v47, v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v54, v49, v49
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v49, v49 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v0, v46, v0
	v_max_f32_e32 v46, v48, v48
	v_dual_max_f32 v12, v47, v12 :: v_dual_max_f32 v47, v49, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v48, v0
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v26, v46, v26 :: v_dual_mov_b32 v49, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v46, v54, v47
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v48, v48 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v47, v26
	v_mov_b32_dpp v49, v49 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v54, v46
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v48, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v47, v47 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v49, v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v54, v54 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v48 :: v_dual_max_f32 v47, v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v12, v12, v49
	v_dual_max_f32 v48, v54, v54 :: v_dual_mov_b32 v49, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v26, v26, v47
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v54, v12 :: v_dual_max_f32 v55, v46, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v48, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v56, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v46, v49, v49
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v47, v54, v54
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v56, v56 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshrrev_b32_e32 v54, 1, v25
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v46, v0, v46
	v_max_f32_e32 v0, v48, v48
	v_max_f32_e32 v47, v12, v47
	v_max_f32_e32 v12, v56, v56
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v2, v54, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v26, v0
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v0, 5, v51
	v_lshl_add_u32 v26, v50, 4, 0
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v49, v55, v12
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v26, v0, v1
	ds_store_b128 v2, v[46:49]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v0
.Ltmp59:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v0, v46, v46 :: v_dual_max_f32 v47, v47, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v49, v49, v49 :: v_dual_max_f32 v2, 0x2b8cbccc, v0
	v_dual_max_f32 v0, v48, v48 :: v_dual_max_f32 v47, 0x2b8cbccc, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v49, 0x2b8cbccc, v49
	v_div_scale_f32 v12, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v46, 0x2b8cbccc, v0
	v_div_scale_f32 v48, vcc_lo, v2, 0x40e00000, v2
	v_rcp_f32_e32 v26, v12
	v_div_scale_f32 v58, null, 0x40e00000, 0x40e00000, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_scale_f32 v54, null, 0x40e00000, 0x40e00000, v46
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt vmcnt(0)
	v_add_co_u32 v0, s0, s34, v73
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v59, null, 0x40e00000, 0x40e00000, v49
	v_rcp_f32_e32 v56, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v1, -v12, v26, 1.0
	v_fmac_f32_e32 v26, v1, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	v_add_co_u32 v50, s0, s34, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v55, v48, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v51, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[0:1]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v57, -v12, v55, v48
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s34, v70
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[38:39], v[50:51]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v55, v57, v26
	v_fma_f32 v57, -v54, v56, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[50:51]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v51.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[38:39], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v12, -v12, v55, v48
	v_fmac_f32_e32 v56, v57, v56
	v_rcp_f32_e32 v48, v58
	v_div_scale_f32 v57, s6, v46, 0x40e00000, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v12, v12, v26, v55
	v_rcp_f32_e32 v55, v59
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[36:37], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v26, v57, v56
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v2, v12, 0x40e00000, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v58, v48, 1.0
	v_fma_f32 v12, -v54, v26, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v59, v55, 1.0
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s7, v47, 0x40e00000, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v26, v12, v56
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v12.l, v2.h
	v_mov_b16_e32 v12.h, v51.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v65, v50, v48
	v_fmac_f32_e32 v55, v64, v55
	v_div_scale_f32 v64, s8, v49, 0x40e00000, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v12
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v54, v26, v57
	v_fma_f32 v54, -v58, v65, v50
	v_mul_f32_e32 v57, v64, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v12, v2, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v26, v0, v56, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v54, v48
	v_fma_f32 v2, -v59, v57, v64
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v54, 0xffff0000, v12
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v26, v26, 0x40e00000, v46
	v_fma_f32 v46, -v58, v65, v50
	v_fmac_f32_e32 v57, v2, v55
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s34, v200
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v50, null, v54, v54, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v46, v48, v65
	v_fma_f32 v48, -v59, v57, v64
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v46, v50
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v51.l, v26.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v47
	v_div_fmas_f32 v47, v48, v55, v57
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v48, null, v54, v54, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v55, 1, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v47, v47, 0x40e00000, v49
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v56, -v50, v46, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v49.l, v2.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v57, v48
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v49.h, v51.h
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[38:39], v[0:1]
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v46, v56, v46
	v_div_scale_f32 v56, vcc_lo, v32, v54, v32
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[36:37], v[0:1]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v26, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v55, v56, v46 :: v_dual_and_b32 v0, 1, v49
	v_div_scale_f32 v58, null, v54, v54, v21
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v51.l, v47.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v49, -v48, v57, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v26, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v50, v55, v56
	v_rcp_f32_e32 v59, v58
	v_div_scale_f32 v65, null, v54, v54, v23
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v51, 1, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v57, v49, v57
	v_div_scale_f32 v66, s8, v27, v54, v27
	v_fmac_f32_e32 v55, v0, v46
	v_rcp_f32_e32 v0, v65
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v47, v51, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v47, v66, v57
	v_fma_f32 v67, -v58, v59, 1.0
	v_fma_f32 v50, -v50, v55, v56
	v_div_scale_f32 v72, null, v54, v54, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v48, v47, v66
	v_fmac_f32_e32 v59, v67, v59
	v_div_scale_f32 v67, s9, v21, v54, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v65, v0, 1.0
	v_div_fmas_f32 v46, v50, v46, v55
	v_dual_fmac_f32 v47, v56, v57 :: v_dual_mul_f32 v50, v67, v59
	v_rcp_f32_e32 v55, v72
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v0, v70, v0
	v_div_scale_f32 v56, s10, v23, v54, v23
	v_div_scale_f32 v70, null, v54, v54, v36
	v_div_fixup_f32 v32, v46, v54, v32
	v_fma_f32 v46, -v48, v47, v66
	v_fma_f32 v48, -v58, v50, v67
	v_mul_f32_e32 v66, v56, v0
	v_rcp_f32_e32 v73, v70
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v74, -v72, v55, 1.0
	v_div_fmas_f32 v46, v46, v57, v47
	v_fmac_f32_e32 v50, v48, v59
	v_fma_f32 v47, -v65, v66, v56
	v_div_scale_f32 v48, s8, v37, v54, v37
	v_fmac_f32_e32 v55, v74, v55
	v_div_fixup_f32 v27, v46, v54, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v57, -v70, v73, 1.0
	v_fma_f32 v46, -v58, v50, v67
	v_fmac_f32_e32 v66, v47, v0
	v_div_scale_f32 v58, null, v54, v54, v29
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v47, v48, v55
	v_fmac_f32_e32 v73, v57, v73
	v_div_scale_f32 v57, s11, v36, v54, v36
	v_div_fmas_f32 v46, v46, v59, v50
	v_fma_f32 v50, -v65, v66, v56
	v_rcp_f32_e32 v59, v58
	v_div_scale_f32 v67, null, v54, v54, v28
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v56, -v72, v47, v48
	v_mul_f32_e32 v65, v57, v73
	v_div_fmas_f32 v0, v50, v0, v66
	v_rcp_f32_e32 v50, v67
	v_div_fixup_f32 v21, v46, v54, v21
	v_fmac_f32_e32 v47, v56, v55
	v_fma_f32 v56, -v70, v65, v57
	v_fma_f32 v66, -v58, v59, 1.0
	v_div_fixup_f32 v23, v0, v54, v23
	v_div_scale_f32 v46, s9, v29, v54, v29
	v_fma_f32 v0, -v72, v47, v48
	v_fmac_f32_e32 v65, v56, v73
	v_fmac_f32_e32 v59, v66, v59
	v_fma_f32 v48, -v67, v50, 1.0
	v_div_scale_f32 v56, null, v54, v54, v20
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v66, null, v54, v54, v124
	v_div_fmas_f32 v0, v0, v55, v47
	v_fma_f32 v47, -v70, v65, v57
	v_dual_mul_f32 v55, v46, v59 :: v_dual_fmac_f32 v50, v48, v50
	v_rcp_f32_e32 v48, v56
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v57, s8, v28, v54, v28
	v_div_fmas_f32 v47, v47, v73, v65
	v_fma_f32 v65, -v58, v55, v46
	v_rcp_f32_e32 v73, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v70, v57, v50
	v_div_fixup_f32 v37, v0, v54, v37
	v_div_fixup_f32 v36, v47, v54, v36
	v_fma_f32 v72, -v56, v48, 1.0
	v_fmac_f32_e32 v55, v65, v59
	v_div_scale_f32 v65, null, v54, v54, v40
	v_fma_f32 v0, -v67, v70, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v48, v72, v48
	v_div_scale_f32 v47, s10, v20, v54, v20
	v_fma_f32 v46, -v58, v55, v46
	v_rcp_f32_e32 v58, v65
	v_fma_f32 v72, -v66, v73, 1.0
	v_fmac_f32_e32 v70, v0, v50
	v_mul_f32_e32 v0, v47, v48
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v74, null, v54, v54, v38
	v_fmac_f32_e32 v73, v72, v73
	v_div_scale_f32 v72, s11, v124, v54, v124
	v_div_fmas_f32 v46, v46, v59, v55
	v_fma_f32 v55, -v67, v70, v57
	v_fma_f32 v57, -v56, v0, v47
	v_fma_f32 v67, -v65, v58, 1.0
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v59, v72, v73
	v_div_fmas_f32 v50, v55, v50, v70
	v_fmac_f32_e32 v0, v57, v48
	v_rcp_f32_e32 v55, v74
	v_fmac_f32_e32 v58, v67, v58
	v_div_scale_f32 v67, s8, v40, v54, v40
	v_fma_f32 v57, -v66, v59, v72
	v_div_fixup_f32 v29, v46, v54, v29
	v_fma_f32 v46, -v56, v0, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v47, v67, v58
	v_div_scale_f32 v56, null, v54, v54, v31
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v28, v50, v54, v28
	v_fmac_f32_e32 v59, v57, v73
	v_fma_f32 v50, -v74, v55, 1.0
	v_div_fmas_f32 v0, v46, v48, v0
	v_fma_f32 v48, -v65, v47, v67
	v_rcp_f32_e32 v57, v56
	v_div_scale_f32 v70, null, v54, v54, v19
	v_fma_f32 v46, -v66, v59, v72
	v_fmac_f32_e32 v55, v50, v55
	v_div_scale_f32 v66, s9, v38, v54, v38
	v_fmac_f32_e32 v47, v48, v58
	v_rcp_f32_e32 v48, v70
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v72, -v56, v57, 1.0
	v_div_fmas_f32 v46, v46, v73, v59
	v_mul_f32_e32 v59, v66, v55
	v_div_fixup_f32 v20, v0, v54, v20
	v_fma_f32 v0, -v65, v47, v67
	v_fmac_f32_e32 v57, v72, v57
	v_div_fixup_f32 v50, v46, v54, v124
	v_fma_f32 v46, -v74, v59, v66
	v_div_scale_f32 v65, s10, v31, v54, v31
	v_fma_f32 v67, -v70, v48, 1.0
	v_div_scale_f32 v72, null, v54, v54, v17
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v59, v46, v55
	v_div_fmas_f32 v0, v0, v58, v47
	v_mul_f32_e32 v46, v65, v57
	v_fmac_f32_e32 v48, v67, v48
	v_rcp_f32_e32 v47, v72
	v_div_scale_f32 v58, s8, v19, v54, v19
	v_div_scale_f32 v67, null, v54, v54, v18
	v_div_fixup_f32 v40, v0, v54, v40
	v_fma_f32 v0, -v74, v59, v66
	v_fma_f32 v66, -v56, v46, v65
	v_mul_f32_e32 v73, v58, v48
	v_rcp_f32_e32 v74, v67
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v64, 0xffff0000, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v72, v47, 1.0
	v_div_fmas_f32 v0, v0, v55, v59
	v_fmac_f32_e32 v46, v66, v57
	v_fma_f32 v55, -v70, v73, v58
	v_div_scale_f32 v59, s9, v17, v54, v17
	v_fmac_f32_e32 v47, v75, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v66, -v67, v74, 1.0
	v_div_fixup_f32 v38, v0, v54, v38
	v_fma_f32 v0, -v56, v46, v65
	v_fmac_f32_e32 v73, v55, v48
	v_div_scale_f32 v65, null, v64, v64, v116
	s_mov_b32 vcc_lo, s10
	v_dual_mul_f32 v55, v59, v47 :: v_dual_fmac_f32 v74, v66, v74
	v_div_scale_f32 v56, s11, v18, v54, v18
	v_div_fmas_f32 v0, v0, v57, v46
	v_fma_f32 v46, -v70, v73, v58
	v_rcp_f32_e32 v58, v65
	v_fma_f32 v57, -v72, v55, v59
	v_mul_f32_e32 v66, v56, v74
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v31, v0, v54, v31
	v_div_fmas_f32 v46, v46, v48, v73
	v_fmac_f32_e32 v55, v57, v47
	v_fma_f32 v57, -v67, v66, v56
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v51, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v65, v58, 1.0
	v_div_fixup_f32 v19, v46, v54, v19
	v_fma_f32 v0, -v72, v55, v59
	v_fmac_f32_e32 v66, v57, v74
	v_div_scale_f32 v46, s8, v116, v64, v116
	v_fmac_f32_e32 v58, v73, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v0, v47, v55
	v_fma_f32 v47, -v67, v66, v56
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v49, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v55, v46, v58
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v47, v74, v66
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v66, -v65, v55, v46
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v55, v66, v58
	v_div_scale_f32 v66, null, v64, v64, v108
	v_div_fixup_f32 v17, v0, v54, v17
	v_div_fixup_f32 v18, v47, v54, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v65, v55, v46
	v_rcp_f32_e32 v65, v66
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v46, v46, v58, v55
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v66, v65, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v65, v58, v65
	v_div_scale_f32 v70, null, v64, v64, v41
	v_div_scale_f32 v59, null, v64, v64, v33
	v_div_scale_f32 v67, null, v64, v64, v34
	v_rcp_f32_e32 v48, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v56, v59
	v_div_scale_f32 v47, s10, v33, v64, v33
	v_rcp_f32_e32 v74, v67
	v_div_scale_f32 v58, s8, v108, v64, v108
	v_div_scale_f32 v82, null, v64, v64, v13
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v57, -v70, v48, 1.0
	v_fma_f32 v73, -v59, v56, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v67, v74, 1.0
	v_fmac_f32_e32 v48, v57, v48
	v_div_scale_f32 v57, s9, v41, v64, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v73, v56
	v_fmac_f32_e32 v74, v54, v74
	v_div_scale_f32 v73, s11, v34, v64, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v57, v48
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v0, -v70, v72, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v72, v0, v48
	v_mul_f32_e32 v0, v47, v56
	v_fma_f32 v54, -v70, v72, v57
	v_div_scale_f32 v70, null, v64, v64, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v59, v0, v47
	v_mul_f32_e32 v57, v73, v74
	v_div_fmas_f32 v48, v54, v48, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v72, v70
	v_div_fixup_f32 v54, v46, v64, v116
	v_fmac_f32_e32 v0, v55, v56
	v_fma_f32 v55, -v67, v57, v73
	v_div_fixup_f32 v41, v48, v64, v41
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v59, v0, v47
	v_fmac_f32_e32 v57, v55, v74
	v_mul_f32_e32 v47, v58, v65
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v70, v72, 1.0
	v_div_scale_f32 v59, null, v64, v64, v43
	v_div_fmas_f32 v0, v46, v56, v0
	v_fma_f32 v46, -v67, v57, v73
	v_fma_f32 v55, -v66, v47, v58
	v_fmac_f32_e32 v72, v48, v72
	v_rcp_f32_e32 v48, v59
	v_div_scale_f32 v67, null, v64, v64, v39
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v56, s9, v109, v64, v109
	v_div_fmas_f32 v46, v46, v74, v57
	v_fmac_f32_e32 v47, v55, v65
	v_rcp_f32_e32 v57, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v73, v56, v72
	v_fma_f32 v55, -v59, v48, 1.0
	v_div_fixup_f32 v33, v0, v64, v33
	v_fma_f32 v0, -v66, v47, v58
	v_div_scale_f32 v66, null, v64, v64, v16
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v34, v46, v64, v34
	v_fma_f32 v46, -v70, v73, v56
	v_fmac_f32_e32 v48, v55, v48
	v_div_scale_f32 v58, s10, v43, v64, v43
	v_fma_f32 v55, -v67, v57, 1.0
	v_div_fmas_f32 v0, v0, v65, v47
	v_rcp_f32_e32 v47, v66
	v_fmac_f32_e32 v73, v46, v72
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v46, v58, v48 :: v_dual_fmac_f32 v57, v55, v57
	v_div_scale_f32 v65, s8, v39, v64, v39
	v_div_scale_f32 v74, null, v64, v64, v100
	v_div_fixup_f32 v55, v0, v64, v108
	v_fma_f32 v0, -v70, v73, v56
	v_fma_f32 v56, -v59, v46, v58
	v_mul_f32_e32 v70, v65, v57
	v_rcp_f32_e32 v75, v74
	v_fma_f32 v80, -v66, v47, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v46, v56, v48
	v_div_fmas_f32 v0, v0, v72, v73
	v_fma_f32 v72, -v67, v70, v65
	v_fmac_f32_e32 v47, v80, v47
	v_div_scale_f32 v73, s9, v16, v64, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v56, v0, v64, v109
	v_fma_f32 v80, -v74, v75, 1.0
	v_fma_f32 v0, -v59, v46, v58
	v_fmac_f32_e32 v70, v72, v57
	v_mul_f32_e32 v58, v73, v47
	v_div_scale_f32 v72, null, v64, v64, v101
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v75, v80, v75
	v_div_scale_f32 v59, s11, v100, v64, v100
	v_div_fmas_f32 v0, v0, v48, v46
	v_fma_f32 v46, -v67, v70, v65
	v_fma_f32 v48, -v66, v58, v73
	v_rcp_f32_e32 v65, v72
	v_div_scale_f32 v80, null, v64, v64, v102
	v_mul_f32_e32 v67, v59, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v48, v47
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v48, v80
	v_div_fmas_f32 v46, v46, v57, v70
	v_fma_f32 v57, -v74, v67, v59
	v_div_fixup_f32 v43, v0, v64, v43
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v70, -v72, v65, 1.0
	v_fma_f32 v0, -v66, v58, v73
	v_div_fixup_f32 v39, v46, v64, v39
	v_fmac_f32_e32 v67, v57, v75
	v_div_scale_f32 v46, s8, v101, v64, v101
	v_fmac_f32_e32 v65, v70, v65
	v_fma_f32 v57, -v80, v48, 1.0
	v_div_scale_f32 v66, null, v64, v64, v44
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v73, null, v64, v64, v15
	v_div_fmas_f32 v0, v0, v47, v58
	v_fma_f32 v47, -v74, v67, v59
	v_mul_f32_e32 v58, v46, v65
	v_fmac_f32_e32 v48, v57, v48
	v_rcp_f32_e32 v70, v66
	v_div_scale_f32 v59, s9, v102, v64, v102
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v81, v73
	v_div_fmas_f32 v47, v47, v75, v67
	v_fma_f32 v67, -v72, v58, v46
	v_mul_f32_e32 v74, v59, v48
	v_div_fixup_f32 v16, v0, v64, v16
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v75, -v66, v70, 1.0
	v_fmac_f32_e32 v58, v67, v65
	v_fma_f32 v0, -v80, v74, v59
	v_div_fixup_f32 v57, v47, v64, v100
	v_div_scale_f32 v47, s10, v44, v64, v44
	v_fmac_f32_e32 v70, v75, v70
	v_div_scale_f32 v67, null, v64, v64, v14
	v_fma_f32 v46, -v72, v58, v46
	v_fmac_f32_e32 v74, v0, v48
	v_fma_f32 v75, -v73, v81, 1.0
	v_mul_f32_e32 v0, v47, v70
	v_rcp_f32_e32 v72, v67
	v_div_fmas_f32 v46, v46, v65, v58
	v_fma_f32 v58, -v80, v74, v59
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v81, v75, v81
	v_div_scale_f32 v75, s11, v15, v64, v15
	v_fma_f32 v59, -v66, v0, v47
	v_div_fmas_f32 v48, v58, v48, v74
	v_rcp_f32_e32 v74, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v65, v75, v81
	v_fma_f32 v80, -v67, v72, 1.0
	v_fmac_f32_e32 v0, v59, v70
	v_div_fixup_f32 v58, v46, v64, v101
	v_div_fixup_f32 v59, v48, v64, v102
	v_fma_f32 v83, -v73, v65, v75
	v_fmac_f32_e32 v72, v80, v72
	v_div_scale_f32 v80, s8, v14, v64, v14
	v_fma_f32 v46, -v66, v0, v47
	v_fma_f32 v48, -v82, v74, 1.0
	v_div_scale_f32 v66, null, v51, v51, v92
	v_fmac_f32_e32 v65, v83, v81
	v_mul_f32_e32 v47, v80, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v48, v74
	v_rcp_f32_e32 v48, v66
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v46, v70, v0
	v_fma_f32 v46, -v73, v65, v75
	v_fma_f32 v70, -v67, v47, v80
	v_div_scale_f32 v75, null, v51, v51, v93
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v73, s9, v13, v64, v13
	v_div_fmas_f32 v46, v46, v81, v65
	v_fmac_f32_e32 v47, v70, v72
	v_rcp_f32_e32 v65, v75
	v_fma_f32 v81, -v66, v48, 1.0
	v_mul_f32_e32 v70, v73, v74
	v_div_fixup_f32 v44, v0, v64, v44
	v_fma_f32 v0, -v67, v47, v80
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v48, v81, v48
	v_div_scale_f32 v81, null, v51, v51, v45
	v_div_fixup_f32 v15, v46, v64, v15
	v_fma_f32 v46, -v82, v70, v73
	v_div_scale_f32 v67, s10, v92, v51, v92
	v_fma_f32 v80, -v75, v65, 1.0
	v_div_fmas_f32 v0, v0, v72, v47
	v_rcp_f32_e32 v47, v81
	v_fmac_f32_e32 v70, v46, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v46, v67, v48 :: v_dual_fmac_f32 v65, v80, v65
	v_div_scale_f32 v72, s8, v93, v51, v93
	v_div_scale_f32 v80, null, v51, v51, v94
	v_div_fixup_f32 v14, v0, v64, v14
	v_fma_f32 v0, -v82, v70, v73
	v_fma_f32 v73, -v66, v46, v67
	v_mul_f32_e32 v82, v72, v65
	v_rcp_f32_e32 v83, v80
	v_fma_f32 v88, -v81, v47, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v46, v73, v48
	v_div_fmas_f32 v0, v0, v74, v70
	v_fma_f32 v70, -v75, v82, v72
	v_fmac_f32_e32 v47, v88, v47
	v_div_scale_f32 v73, s9, v45, v51, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v13, v0, v64, v13
	v_fma_f32 v74, -v80, v83, 1.0
	v_fma_f32 v0, -v66, v46, v67
	v_fmac_f32_e32 v82, v70, v65
	v_mul_f32_e32 v66, v73, v47
	v_div_scale_f32 v70, null, v51, v51, v84
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v83, v74, v83
	v_div_scale_f32 v67, s11, v94, v51, v94
	v_div_fmas_f32 v0, v0, v48, v46
	v_fma_f32 v46, -v75, v82, v72
	v_fma_f32 v48, -v81, v66, v73
	v_rcp_f32_e32 v72, v70
	v_div_scale_f32 v75, null, v51, v51, v85
	v_mul_f32_e32 v74, v67, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v48, v47
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v48, v75
	v_div_fmas_f32 v46, v46, v65, v82
	v_fma_f32 v82, -v80, v74, v67
	v_div_fixup_f32 v64, v0, v51, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v70, v72, 1.0
	v_fma_f32 v0, -v81, v66, v73
	v_div_fixup_f32 v65, v46, v51, v93
	v_fmac_f32_e32 v74, v82, v83
	v_div_scale_f32 v46, s8, v84, v51, v84
	v_fmac_f32_e32 v72, v88, v72
	v_fma_f32 v73, -v75, v48, 1.0
	v_div_scale_f32 v81, null, v51, v51, v86
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v82, null, v51, v51, v87
	v_div_fmas_f32 v0, v0, v47, v66
	v_fma_f32 v47, -v80, v74, v67
	v_mul_f32_e32 v67, v46, v72
	v_fmac_f32_e32 v48, v73, v48
	v_rcp_f32_e32 v73, v81
	v_div_scale_f32 v80, s9, v85, v51, v85
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v89, v82
	v_div_fmas_f32 v47, v47, v83, v74
	v_fma_f32 v74, -v70, v67, v46
	v_mul_f32_e32 v83, v80, v48
	v_div_fixup_f32 v45, v0, v51, v45
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v73, 1.0
	v_fmac_f32_e32 v67, v74, v72
	v_fma_f32 v0, -v75, v83, v80
	v_div_fixup_f32 v66, v47, v51, v94
	v_div_scale_f32 v47, s10, v86, v51, v86
	v_fmac_f32_e32 v73, v88, v73
	v_div_scale_f32 v74, null, v51, v51, v11
	v_fma_f32 v88, -v82, v89, 1.0
	v_fma_f32 v46, -v70, v67, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v83, v0, v48 :: v_dual_mul_f32 v0, v47, v73
	v_rcp_f32_e32 v90, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v89, v88, v89
	v_div_scale_f32 v88, s11, v87, v51, v87
	v_div_fmas_f32 v46, v46, v72, v67
	v_fma_f32 v67, -v75, v83, v80
	v_div_scale_f32 v80, null, v51, v51, v76
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v70, -v81, v0, v47
	v_mul_f32_e32 v72, v88, v89
	v_div_fmas_f32 v48, v67, v48, v83
	v_rcp_f32_e32 v83, v80
	v_fma_f32 v75, -v74, v90, 1.0
	v_fmac_f32_e32 v0, v70, v73
	v_fma_f32 v91, -v82, v72, v88
	v_div_fixup_f32 v67, v46, v51, v84
	v_div_fixup_f32 v70, v48, v51, v85
	v_fmac_f32_e32 v90, v75, v90
	v_div_scale_f32 v75, s8, v11, v51, v11
	v_fma_f32 v46, -v81, v0, v47
	v_fmac_f32_e32 v72, v91, v89
	v_fma_f32 v48, -v80, v83, 1.0
	v_div_scale_f32 v81, null, v51, v51, v77
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v47, v75, v90
	v_div_fmas_f32 v0, v46, v73, v0
	v_fma_f32 v46, -v82, v72, v88
	v_fmac_f32_e32 v83, v48, v83
	v_rcp_f32_e32 v48, v81
	v_div_scale_f32 v84, null, v51, v51, v78
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v73, -v74, v47, v75
	v_div_scale_f32 v82, s9, v76, v51, v76
	v_div_fmas_f32 v46, v46, v89, v72
	v_rcp_f32_e32 v72, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v73, v90
	v_mul_f32_e32 v73, v82, v83
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v85, -v81, v48, 1.0
	v_div_fixup_f32 v0, v0, v51, v86
	v_div_fixup_f32 v46, v46, v51, v87
	v_fma_f32 v74, -v74, v47, v75
	v_fma_f32 v75, -v80, v73, v82
	v_fmac_f32_e32 v48, v85, v48
	v_div_scale_f32 v85, s10, v77, v51, v77
	v_fma_f32 v86, -v84, v72, 1.0
	v_div_scale_f32 v87, null, v51, v51, v79
	v_div_scale_f32 v88, null, v51, v51, v10
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v73, v75, v83
	v_div_fmas_f32 v47, v74, v90, v47
	v_mul_f32_e32 v74, v85, v48
	v_fmac_f32_e32 v72, v86, v72
	v_rcp_f32_e32 v75, v87
	v_div_scale_f32 v86, s8, v78, v51, v78
	v_rcp_f32_e32 v89, v88
	v_div_fixup_f32 v11, v47, v51, v11
	v_fma_f32 v47, -v80, v73, v82
	v_fma_f32 v80, -v81, v74, v85
	v_mul_f32_e32 v82, v86, v72
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v87, v75, 1.0
	v_div_fmas_f32 v47, v47, v83, v73
	v_fmac_f32_e32 v74, v80, v48
	v_fma_f32 v73, -v84, v82, v86
	v_fma_f32 v83, -v88, v89, 1.0
	v_fmac_f32_e32 v75, v90, v75
	v_div_scale_f32 v80, s9, v79, v51, v79
	v_div_fixup_f32 v47, v47, v51, v76
	v_fma_f32 v76, -v81, v74, v85
	v_dual_fmac_f32 v82, v73, v72 :: v_dual_fmac_f32 v89, v83, v89
	v_div_scale_f32 v83, null, v51, v51, v8
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v73, v80, v75
	v_div_scale_f32 v81, s11, v10, v51, v10
	v_div_fmas_f32 v48, v76, v48, v74
	v_fma_f32 v74, -v84, v82, v86
	v_rcp_f32_e32 v84, v83
	v_div_scale_f32 v86, null, v51, v51, v9
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v76, -v87, v73, v80
	v_mul_f32_e32 v85, v81, v89
	v_div_fmas_f32 v72, v74, v72, v82
	v_rcp_f32_e32 v74, v86
	v_div_fixup_f32 v48, v48, v51, v77
	v_fmac_f32_e32 v73, v76, v75
	v_fma_f32 v76, -v88, v85, v81
	v_fma_f32 v82, -v83, v84, 1.0
	v_div_fixup_f32 v72, v72, v51, v78
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v77, -v87, v73, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v85, v76, v89 :: v_dual_fmac_f32 v84, v82, v84
	v_div_scale_f32 v76, s8, v8, v51, v8
	v_fma_f32 v78, -v86, v74, 1.0
	v_div_fmas_f32 v73, v77, v75, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v88, v85, v81
	v_mul_f32_e32 v77, v76, v84
	v_div_scale_f32 v80, s9, v9, v51, v9
	v_fmac_f32_e32 v74, v78, v74
	v_div_scale_f32 v78, null, v49, v49, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v83, v77, v76
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v87, null, v49, v49, v69
	v_rcp_f32_e32 v81, v78
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v77, v82, v84
	v_div_fmas_f32 v75, v75, v89, v85
	v_mul_f32_e32 v85, v80, v74
	v_div_fixup_f32 v73, v73, v51, v79
	v_rcp_f32_e32 v79, v87
	v_fma_f32 v76, -v83, v77, v76
	v_div_scale_f32 v83, null, v49, v49, v71
	v_div_fixup_f32 v10, v75, v51, v10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v78, v81, 1.0
	v_fma_f32 v75, -v86, v85, v80
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v89, null, v49, v49, v42
	v_fmac_f32_e32 v81, v82, v81
	v_rcp_f32_e32 v82, v83
	v_fmac_f32_e32 v85, v75, v74
	v_div_scale_f32 v75, s10, v68, v49, v68
	v_fma_f32 v88, -v87, v79, 1.0
	v_div_fmas_f32 v76, v76, v84, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v86, v85, v80
	v_mul_f32_e32 v80, v75, v81
	v_div_scale_f32 v84, s8, v69, v49, v69
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v83, v82, 1.0
	v_fmac_f32_e32 v79, v88, v79
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v78, v80, v75
	v_rcp_f32_e32 v91, v89
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s11, v71, v49, v71
	v_mul_f32_e32 v90, v84, v79
	v_div_fmas_f32 v74, v77, v74, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v80, v88, v81 :: v_dual_mul_f32 v85, v86, v82
	v_div_fixup_f32 v8, v76, v51, v8
	v_fma_f32 v77, -v87, v90, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v9, v74, v51, v9
	v_div_scale_f32 v76, null, v49, v49, v60
	v_fma_f32 v74, -v83, v85, v86
	v_fma_f32 v51, -v78, v80, v75
	v_fmac_f32_e32 v90, v77, v79
	v_fma_f32 v75, -v89, v91, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v85, v74, v82
	v_rcp_f32_e32 v74, v76
	v_fma_f32 v77, -v87, v90, v84
	v_fmac_f32_e32 v91, v75, v91
	v_div_scale_f32 v75, s9, v42, v49, v42
	v_div_fmas_f32 v51, v51, v81, v80
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v78, -v83, v85, v86
	v_div_fmas_f32 v77, v77, v79, v90
	v_mul_f32_e32 v79, v75, v91
	v_div_scale_f32 v80, null, v49, v49, v61
	v_fma_f32 v81, -v76, v74, 1.0
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v83, -v89, v79, v75
	v_div_fmas_f32 v78, v78, v82, v85
	v_rcp_f32_e32 v82, v80
	v_fmac_f32_e32 v74, v81, v74
	v_div_scale_f32 v81, s8, v60, v49, v60
	v_div_fixup_f32 v51, v51, v49, v68
	v_fmac_f32_e32 v79, v83, v91
	v_div_fixup_f32 v68, v77, v49, v69
	v_div_fixup_f32 v69, v78, v49, v71
	v_mul_f32_e32 v71, v81, v74
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v80, v82, 1.0
	v_fma_f32 v75, -v89, v79, v75
	v_div_scale_f32 v78, null, v49, v49, v62
	v_fma_f32 v83, -v76, v71, v81
	v_fmac_f32_e32 v82, v77, v82
	v_div_scale_f32 v77, s10, v61, v49, v61
	v_div_fmas_f32 v75, v75, v91, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v83, v74
	v_rcp_f32_e32 v84, v78
	v_mul_f32_e32 v79, v77, v82
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v42, v75, v49, v42
	v_fma_f32 v75, -v76, v71, v81
	v_div_scale_f32 v83, null, v49, v49, v63
	v_fma_f32 v76, -v80, v79, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v75, v74, v71
	v_div_scale_f32 v74, null, v49, v49, v7
	v_fma_f32 v81, -v78, v84, 1.0
	v_rcp_f32_e32 v85, v83
	v_fmac_f32_e32 v79, v76, v82
	v_rcp_f32_e32 v76, v74
	v_div_scale_f32 v75, s8, v62, v49, v62
	v_fmac_f32_e32 v84, v81, v84
	v_div_scale_f32 v81, null, v49, v49, v53
	v_div_fixup_f32 v60, v71, v49, v60
	v_fma_f32 v77, -v80, v79, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v83, v85, 1.0
	v_rcp_f32_e32 v87, v81
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v86, -v74, v76, 1.0
	v_mul_f32_e32 v80, v75, v84
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v85, v71, v85
	v_div_scale_f32 v71, s9, v63, v49, v63
	v_fmac_f32_e32 v76, v86, v76
	v_div_scale_f32 v86, null, v49, v49, v52
	v_div_fmas_f32 v77, v77, v82, v79
	v_fma_f32 v79, -v78, v80, v75
	v_mul_f32_e32 v82, v71, v85
	v_div_scale_f32 v88, s10, v7, v49, v7
	v_fma_f32 v89, -v81, v87, 1.0
	v_rcp_f32_e32 v90, v86
	v_fmac_f32_e32 v80, v79, v84
	v_fma_f32 v79, -v83, v82, v71
	v_mul_f32_e32 v91, v88, v76
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, s11, v53, v49, v53
	v_div_fixup_f32 v61, v77, v49, v61
	v_fma_f32 v75, -v78, v80, v75
	v_fmac_f32_e32 v82, v79, v85
	v_fma_f32 v77, -v74, v91, v88
	v_mul_f32_e32 v78, v89, v87
	v_fma_f32 v79, -v86, v90, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v71, -v83, v82, v71
	v_div_fmas_f32 v75, v75, v84, v80
	v_fmac_f32_e32 v91, v77, v76
	v_fma_f32 v77, -v81, v78, v89
	v_fmac_f32_e32 v90, v79, v90
	v_div_scale_f32 v79, s8, v52, v49, v52
	v_div_scale_f32 v80, null, v49, v49, v35
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v74, -v74, v91, v88
	v_div_fmas_f32 v71, v71, v85, v82
	v_dual_fmac_f32 v78, v77, v87 :: v_dual_mul_f32 v77, v79, v90
	v_rcp_f32_e32 v82, v80
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v62, v75, v49, v62
	v_div_fmas_f32 v74, v74, v76, v91
	v_fma_f32 v76, -v81, v78, v89
	v_fma_f32 v81, -v86, v77, v79
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v63, v71, v49, v63
	v_div_fixup_f32 v7, v74, v49, v7
	v_div_fmas_f32 v76, v76, v87, v78
	v_fmac_f32_e32 v77, v81, v90
	v_div_scale_f32 v74, null, v49, v49, v30
	v_fma_f32 v75, -v80, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v53, v76, v49, v53
	v_fma_f32 v71, -v86, v77, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v76, v74
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v82, v75, v82
	v_div_scale_f32 v75, null, v49, v49, v4
	v_div_fmas_f32 v71, v71, v90, v77
	v_div_scale_f32 v78, vcc_lo, v35, v49, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v79, v75
	v_div_scale_f32 v77, null, v49, v49, v5
	v_div_fixup_f32 v52, v71, v49, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v74, v76, 1.0
	v_mul_f32_e32 v83, v78, v82
	v_rcp_f32_e32 v81, v77
	v_div_scale_f32 v84, null, v49, v49, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v76, v71, v76
	v_div_scale_f32 v71, s8, v30, v49, v30
	v_fma_f32 v85, -v75, v79, 1.0
	v_fma_f32 v87, -v80, v83, v78
	v_rcp_f32_e32 v86, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v89, v71, v76
	v_fma_f32 v88, -v77, v81, 1.0
	v_fmac_f32_e32 v79, v85, v79
	v_div_scale_f32 v85, s9, v4, v49, v4
	v_fmac_f32_e32 v83, v87, v82
	v_fma_f32 v87, -v74, v89, v71
	v_fmac_f32_e32 v81, v88, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v91, v85, v79
	v_div_scale_f32 v88, s10, v5, v49, v5
	v_fma_f32 v78, -v80, v83, v78
	v_fmac_f32_e32 v89, v87, v76
	v_fma_f32 v80, -v75, v91, v85
	v_fma_f32 v90, -v84, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v82, v83
	v_fma_f32 v71, -v74, v89, v71
	v_fmac_f32_e32 v91, v80, v79
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v86, v90, v86
	v_div_fmas_f32 v71, v71, v76, v89
	v_fma_f32 v75, -v75, v91, v85
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v11, v11, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, s11, v6, v49, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v75, v75, v79, v91
	v_div_fixup_f32 v30, v71, v49, v30
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v73
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_cvt_i32_f32_e32 v79, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v92, v88, v81 :: v_dual_mul_f32 v93, v90, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_cvt_i32_f32_e32 v85, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v51, 15, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v77, v92, v88
	v_fma_f32 v74, -v84, v93, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v71, v71
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s8, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v92, v87, v81 :: v_dual_fmac_f32 v93, v74, v86
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v35, v78, v49, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v74, -v77, v92, v88
	v_fma_f32 v76, -v84, v93, v90
	v_div_fixup_f32 v4, v75, v49, v4
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v74, v81, v92
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v81, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v92, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v5, v74, v49, v5
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v53, 15, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v86, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v76, v49, v6
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v75, v15
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v54
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v59, v64
	v_rndne_f32_e32 v64, v65
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v65, v66
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v76, v14
	v_cvt_i32_f32_e32 v98, v6
	v_and_b32_e32 v6, 15, v21
	v_and_b32_e32 v14, 15, v49
	v_and_b32_e32 v15, 15, v40
	v_and_b32_e32 v40, 15, v75
	v_and_b32_e32 v49, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v199
	v_and_b32_e32 v75, 16, v199
	v_lshlrev_b32_e32 v21, 4, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v66, v67
	v_rndne_f32_e32 v67, v70
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v70, v72
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v5, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_cvt_i32_f32_e32 v91, v7
	v_and_b32_e32 v7, 15, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v23, 6, v75
	v_xor_b32_e32 v21, v21, v25
	v_lshlrev_b32_e32 v25, 6, v199
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v4, v4, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v86, v42
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v23
	v_and_or_b32 v22, 0x1b00, v25, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v72, v17
	v_cvt_i32_f32_e32 v73, v18
	v_cvt_i32_f32_e32 v74, v16
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v77, v13
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v80, v47
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v93, v52
	v_cvt_i32_f32_e32 v94, v35
	v_cvt_i32_f32_e32 v78, v46
	v_cvt_i32_f32_e32 v82, v10
	v_cvt_i32_f32_e32 v83, v8
	v_cvt_i32_f32_e32 v84, v9
	v_cvt_i32_f32_e32 v87, v60
	v_cvt_i32_f32_e32 v88, v61
	v_cvt_i32_f32_e32 v89, v62
	v_cvt_i32_f32_e32 v95, v30
	v_cvt_i32_f32_e32 v96, v4
	v_cvt_i32_f32_e32 v97, v5
	v_and_b32_e32 v4, 15, v32
	v_and_b32_e32 v5, 15, v27
	v_and_b32_e32 v8, 15, v37
	v_and_b32_e32 v9, 15, v36
	v_and_b32_e32 v10, 15, v29
	v_and_b32_e32 v11, 15, v28
	v_and_b32_e32 v17, 15, v31
	v_and_b32_e32 v27, 15, v50
	v_and_b32_e32 v28, 15, v41
	v_and_b32_e32 v29, 15, v33
	v_and_b32_e32 v30, 15, v34
	v_and_b32_e32 v31, 15, v54
	v_and_b32_e32 v32, 15, v55
	v_and_b32_e32 v33, 15, v43
	v_and_b32_e32 v34, 15, v39
	v_and_b32_e32 v39, 15, v44
	v_and_b32_e32 v43, 15, v59
	v_and_b32_e32 v44, 15, v64
	v_and_b32_e32 v45, 15, v45
	v_and_b32_e32 v46, 15, v65
	v_and_b32_e32 v59, 15, v85
	v_and_b32_e32 v60, 15, v68
	v_and_b32_e32 v61, 15, v69
	v_and_b32_e32 v62, 15, v86
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v21, v24
	v_xad_u32 v25, v22, v202, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v13, 15, v20
	v_and_b32_e32 v16, 15, v38
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v72
	v_and_b32_e32 v20, 15, v73
	v_and_b32_e32 v35, 15, v74
	v_and_b32_e32 v36, 15, v56
	v_and_b32_e32 v37, 15, v57
	v_and_b32_e32 v38, 15, v58
	v_and_b32_e32 v41, 15, v76
	v_and_b32_e32 v42, 15, v77
	v_and_b32_e32 v48, 15, v67
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v54, 15, v70
	v_and_b32_e32 v67, 15, v91
	v_and_b32_e32 v68, 15, v92
	v_and_b32_e32 v69, 15, v93
	v_and_b32_e32 v70, 15, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[4:7]
	ds_store_b128 v0, v[13:16] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v25
	ds_load_b128 v[13:16], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[27:30]
	ds_store_b128 v0, v[35:38] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v25
	ds_load_b128 v[27:30], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[43:46]
	ds_store_b128 v0, v[51:54] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v25
	ds_load_b128 v[43:46], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[59:62]
	ds_store_b128 v0, v[67:70] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v25
	ds_load_b128 v[59:62], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[8:11]
	ds_store_b128 v0, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v25
	ds_load_b128 v[17:20], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[31:34]
	ds_store_b128 v0, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v25
	ds_load_b128 v[39:42], v25 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_and_b32_e32 v50, 15, v78
	v_and_b32_e32 v55, 15, v71
	v_and_b32_e32 v56, 15, v82
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v90, v63
	v_and_b32_e32 v58, 15, v84
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v57, 15, v83
	v_and_b32_e32 v47, 15, v66
	v_and_b32_e32 v63, 15, v87
	v_and_b32_e32 v64, 15, v88
	v_and_b32_e32 v65, 15, v89
	v_and_b32_e32 v66, 15, v90
	v_and_b32_e32 v71, 15, v95
	v_and_b32_e32 v72, 15, v96
	v_and_b32_e32 v73, 15, v97
	v_and_b32_e32 v74, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[47:50]
	ds_store_b128 v0, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v25
	ds_load_b128 v[55:58], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[63:66]
	ds_store_b128 v0, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v25
	ds_load_b128 v[67:70], v25 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v25, v42, 4, v34
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v42, 3, v103
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v4, v13, 4, v4
	v_lshl_or_b32 v13, v15, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s34, v200
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v0, s41, 7, v42
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v15, v17, 4, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 16, v6
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v5, v14, 4, v5
	v_lshl_or_b32 v14, v16, 4, v7
	v_lshl_or_b32 v16, v18, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 32, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v19, 4, v10
	v_lshl_or_b32 v11, v20, 4, v11
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 48, v6
	v_mad_u64_u32 v[6:7], null, v6, s8, v[0:1]
	v_mad_u64_u32 v[7:8], null, v8, s8, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v18, v27, 4, v21
	v_lshl_or_b32 v21, v30, 4, v24
	v_lshl_or_b32 v24, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v10, s8, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v14.l
	v_and_b16 v0.h, 0xff, v13.l
	v_lshlrev_b16 v1.l, 8, v5.l
	v_and_b16 v2.l, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v11.l
	v_and_b16 v4.h, 0xff, v17.l
	v_lshlrev_b16 v5.l, 8, v16.l
	v_and_b16 v5.h, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v28, 4, v22
	v_lshl_or_b32 v20, v29, 4, v23
	v_lshl_or_b32 v22, v39, 4, v31
	v_lshl_or_b32 v23, v40, 4, v32
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_lshlrev_b16 v4.l, 8, v25.l
	v_and_b16 v4.h, 0xff, v24.l
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v43, 4, v35
	v_lshl_or_b32 v28, v44, 4, v36
	v_lshl_or_b32 v29, v45, 4, v37
	v_lshl_or_b32 v30, v46, 4, v38
	v_lshl_or_b32 v31, v55, 4, v47
	v_lshl_or_b32 v32, v56, 4, v48
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v69, 4, v65
	v_lshl_or_b32 v43, v70, 4, v66
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v21.l
	v_and_b16 v0.h, 0xff, v20.l
	v_lshlrev_b16 v1.l, 8, v19.l
	v_and_b16 v2.l, 0xff, v18.l
	v_lshlrev_b16 v5.l, 8, v23.l
	v_and_b16 v5.h, 0xff, v22.l
	buffer_store_b64 v[10:11], v6, s[8:11], 0 offen
	v_or_b16 v11.h, v4.h, v4.l
	v_lshlrev_b16 v4.l, 8, v34.l
	v_and_b16 v4.h, 0xff, v33.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v35, v59, 4, v51
	v_lshl_or_b32 v36, v60, 4, v52
	v_lshl_or_b32 v37, v61, 4, v53
	v_lshl_or_b32 v38, v62, 4, v54
	v_lshl_or_b32 v39, v67, 4, v63
	v_lshl_or_b32 v40, v68, 4, v64
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_or_b16 v11.l, v5.h, v5.l
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v0.l, 8, v30.l
	v_and_b16 v0.h, 0xff, v29.l
	v_lshlrev_b16 v1.l, 8, v28.l
	v_and_b16 v2.l, 0xff, v27.l
	v_lshlrev_b16 v5.l, 8, v32.l
	v_and_b16 v5.h, 0xff, v31.l
	v_or_b16 v7.h, v4.h, v4.l
	v_lshlrev_b16 v4.l, 8, v43.l
	v_and_b16 v4.h, 0xff, v41.l
	buffer_store_b64 v[10:11], v6, s[8:11], 0 offen
	v_or_b16 v6.h, v0.h, v0.l
	v_or_b16 v6.l, v2.l, v1.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v0.l, 8, v38.l
	v_and_b16 v0.h, 0xff, v37.l
	v_lshlrev_b16 v1.l, 8, v36.l
	v_and_b16 v2.l, 0xff, v35.l
	v_lshlrev_b16 v5.l, 8, v40.l
	v_and_b16 v5.h, 0xff, v39.l
	v_or_b16 v11.h, v4.h, v4.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 2, v75
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.l, v2.l, v1.l
	v_or_b16 v11.l, v5.h, v5.l
	v_dual_cndmask_b32 v0, 0x80000000, v9 :: v_dual_and_b32 v5, 2, v200
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[6:7], v8, s[8:11], 0 offen
	buffer_store_b64 v[10:11], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v42
	v_mov_b16_e32 v2.l, v26.h
	v_mov_b16_e32 v1.l, v12.h
	v_add3_u32 v4, v4, v5, v42
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
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v199
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s41, 1
	s_and_b32 vcc_lo, vcc_lo, s42
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp60:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 436
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
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 436
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28884
; TotalNumSgprs: 50
; NumVgprs: 256
; ScratchSize: 436
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 50
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 436
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 108
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
