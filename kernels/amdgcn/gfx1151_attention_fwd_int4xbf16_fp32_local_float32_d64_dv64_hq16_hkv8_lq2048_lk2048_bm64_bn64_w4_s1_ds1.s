	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s19, s[0:1], 0x84
	s_load_b32 s70, s[0:1], 0x60
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_and_b32_e32 v45, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v0
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x0
	s_load_b64 s[16:17], s[0:1], 0x7c
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s2, 6
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v4, 4, v45
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s18, v1
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s4, s18, s2
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v148, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v47, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v42, 0x60, v0
	v_lshlrev_b32_e32 v53, 2, v0
	v_and_b32_e32 v74, 15, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v6, v47, 30, v148
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[245:246], null, s70, v1, v[4:5]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s60, s70, v4
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s9, s9, 0xffff
	v_lshlrev_b32_e32 v6, 2, v6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s18, s17
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s18, s16
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s60
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[1:2], null, s70, s4, v[245:246]
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v8, 4, v6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s19
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s19
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s6, s6, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s2, 0x800
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s71, s6, 0x7fffffc0
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	s_lshr_b32 s7, s7, 26
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[2:5], v1, s[8:11], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v42
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s82, s5, s7
	s_mov_b32 s5, 0
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s82, s82, 63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v1, v1, v74
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s71, s82
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s18, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v7
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v33, v6, v2
	ds_bpermute_b32 v34, v6, v3
	ds_bpermute_b32 v36, v6, v4
	ds_bpermute_b32 v38, v6, v5
	ds_bpermute_b32 v37, v8, v2
	ds_bpermute_b32 v39, v8, v3
	ds_bpermute_b32 v40, v8, v4
	ds_bpermute_b32 v41, v8, v5
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v35, 2, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr35
.LBB0_3:                                ; %Flow179
	s_clause 0x1
	s_load_b64 s[80:81], s[0:1], 0x38
	s_load_b32 s69, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v75, 0x78, v0
	v_or_b32_e32 v244, 2, v148
	v_or_b32_e32 v243, 4, v148
	v_or_b32_e32 v242, 6, v148
	v_or_b32_e32 v241, 8, v148
	v_or_b32_e32 v240, 10, v148
	v_or_b32_e32 v239, 12, v148
	v_or_b32_e32 v238, 14, v148
	v_or_b32_e32 v237, 16, v148
	v_or_b32_e32 v236, 18, v148
	v_or_b32_e32 v235, 20, v148
	v_or_b32_e32 v234, 22, v148
	v_or_b32_e32 v116, 24, v148
	v_or_b32_e32 v157, 26, v148
	v_or_b32_e32 v158, 28, v148
	v_or_b32_e32 v159, 30, v148
	v_or_b32_e32 v160, 32, v148
	v_or_b32_e32 v161, 34, v148
	v_or_b32_e32 v162, 36, v148
	v_or_b32_e32 v163, 38, v148
	v_or_b32_e32 v140, 40, v148
	v_or_b32_e32 v149, 42, v148
	v_or_b32_e32 v164, 44, v148
	v_or_b32_e32 v117, 46, v148
	v_or_b32_e32 v131, 48, v148
	v_or_b32_e32 v192, 50, v148
	v_or_b32_e32 v173, 52, v148
	v_or_b32_e32 v230, 54, v148
	v_or_b32_e32 v228, 56, v148
	v_or_b32_e32 v227, 58, v148
	v_or_b32_e32 v233, 60, v148
	v_or_b32_e32 v229, 62, v148
	v_or_b32_e32 v63, s4, v1
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v121, v8
	v_mov_b32_e32 v119, v8
	v_mov_b32_e32 v120, v8
	v_mov_b32_e32 v118, v8
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v4, 1, v63
	s_mov_b32 s91, 0x31027000
	s_mov_b32 s90, 0x7ffffffe
	v_cmp_eq_u32_e32 vcc_lo, 0, v45
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v6, 0x80000000, v4, s2
	v_dual_mov_b32 v55, 0x7632 :: v_dual_and_b32 v44, 7, v0
	v_dual_mov_b32 v54, 0x5410 :: v_dual_and_b32 v35, 16, v0
	v_dual_mov_b32 v171, 0xff800000 :: v_dual_and_b32 v2, 12, v0
	v_bfe_i32 v52, v0, 3, 1
	s_clause 0x1
	s_load_b64 s[84:85], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x68
	v_dual_mov_b32 v156, 0xff800000 :: v_dual_lshlrev_b32 v1, 4, v0
	v_dual_mov_b32 v169, 0xff800000 :: v_dual_and_b32 v46, 24, v0
	v_dual_mov_b32 v175, 0xff800000 :: v_dual_and_b32 v48, 3, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s89, s9, 0xffff
	s_mov_b32 s88, s8
	v_dual_mov_b32 v10, v9 :: v_dual_and_b32 v7, 0x7c, v53
	buffer_load_u16 v45, v6, s[88:91], 0 offen
	v_bfe_i32 v6, v0, 5, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v35
	v_dual_mov_b32 v25, v9 :: v_dual_lshlrev_b32 v58, 4, v44
	v_dual_mov_b32 v16, v9 :: v_dual_lshlrev_b32 v59, 5, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v30, v9 :: v_dual_and_b32 v65, 0x2040, v6
	v_dual_mov_b32 v31, v9 :: v_dual_and_b32 v68, 0x410, v52
	v_mul_u32_u24_e32 v69, 0x90, v44
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v63, off offset:184
	scratch_store_b32 off, v53, off offset:200
	scratch_store_b32 off, v0, off offset:188
	v_dual_mov_b32 v11, v9 :: v_dual_lshlrev_b32 v50, 2, v42
	v_dual_mov_b32 v13, v9 :: v_dual_and_b32 v8, 4, v0
	v_lshrrev_b32_e32 v53, 3, v42
	v_cndmask_b32_e64 v124, v38, v41, s1
	v_xor_b32_e32 v76, v1, v46
	v_dual_mov_b32 v14, v9 :: v_dual_lshlrev_b32 v57, 1, v2
	v_dual_mov_b32 v27, v9 :: v_dual_and_b32 v60, 0x630, v1
	v_dual_mov_b32 v28, v9 :: v_dual_lshlrev_b32 v63, 5, v48
	v_lshl_or_b32 v42, v42, 4, v7
	v_cndmask_b32_e64 v123, v36, v40, s1
	v_cndmask_b32_e64 v126, v34, v39, s1
	v_cndmask_b32_e64 v128, v41, v38, s1
	v_cndmask_b32_e64 v127, v40, v36, s1
	v_cndmask_b32_e64 v130, v39, v34, s1
	v_cndmask_b32_e64 v34, 0x2040, 0, s1
	v_lshl_or_b32 v36, v48, 11, v59
	v_and_or_b32 v40, 0x1020, v52, v65
	v_xor_b32_e32 v41, v58, v75
	v_xor_b32_e32 v185, v69, v68
	v_bfe_i32 v4, v0, 2, 1
	v_dual_mov_b32 v170, 0xff800000 :: v_dual_lshlrev_b32 v5, 3, v0
	v_dual_mov_b32 v172, 0xff800000 :: v_dual_and_b32 v51, 8, v0
	v_dual_mov_b32 v174, 0xff800000 :: v_dual_and_b32 v49, 28, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v75
	v_dual_mov_b32 v15, v9 :: v_dual_lshlrev_b32 v122, 3, v44
	v_dual_mov_b32 v26, v9 :: v_dual_lshlrev_b32 v61, 6, v35
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s20, s3, 31
	v_cndmask_b32_e64 v3, 0x1020, 0, vcc_lo
	v_dual_mov_b32 v12, v9 :: v_dual_and_b32 v47, 0x80, v47
	v_lshl_or_b32 v66, v46, 1, v50
	v_lshl_add_u32 v67, v8, 9, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v125, v33, v37, s1
	v_cndmask_b32_e64 v129, v37, v33, s1
	v_xor_b32_e32 v33, 8, v76
	v_lshl_or_b32 v183, v74, 5, v57
	v_lshl_or_b32 v39, v46, 8, v58
	v_xor_b32_e32 v184, v42, v53
	v_cndmask_b32_e64 v42, 0x1054, v54, s1
	v_or3_b32 v187, v60, v34, v36
	v_xor_b32_e32 v34, v40, v63
	v_lshl_or_b32 v191, v44, 10, v41
	v_xor_b32_e32 v41, 16, v185
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s20, 28
	v_lshl_or_b32 v37, v51, 4, v61
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[51:52], null, s69, v0, v[122:123]
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v43, 3, v75
	v_and_or_b32 v62, 0x2040, v4, v3
	v_dual_mov_b32 v29, v9 :: v_dual_and_b32 v64, 0x310, v5
	v_dual_mov_b32 v20, v9 :: v_dual_add_nc_u32 v33, 0, v33
	v_dual_mov_b32 v6, v9 :: v_dual_add_nc_u32 v41, 0, v41
	v_xor_b32_e32 v36, 8, v183
	v_xor_b32_e32 v190, v39, v66
	v_lshl_or_b32 v39, v42, 8, v42
	v_xor_b32_e32 v42, 32, v185
	v_add3_u32 v34, v67, v47, v34
	v_xor_b32_e32 v47, 16, v187
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s0, -16
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v56, s18, v43
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s8
	v_dual_mov_b32 v2, v9 :: v_dual_add_nc_u32 v199, 0, v36
	v_mov_b32_e32 v8, v9
	v_mov_b32_e32 v121, v9
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s20, s3, 0x10007
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v76, off
	scratch_store_b64 off, v[51:52], off offset:4
	scratch_store_b32 off, v33, off offset:12
	v_lshl_or_b32 v38, v49, 7, v63
	v_cndmask_b32_e64 v46, 0x3276, v55, s1
	v_or3_b32 v188, v62, v37, v64
	v_xor_b32_e32 v37, 16, v183
	v_xor_b32_e32 v44, 48, v185
	v_xor_b32_e32 v36, 32, v187
	v_add_nc_u32_e32 v231, v34, v35
	v_add_nc_u32_e32 v34, 0, v47
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v41, off offset:16
	scratch_store_b32 off, v75, off offset:196
	v_add_nc_u32_e32 v41, 0, v42
	s_add_i32 s1, s3, s20
	v_dual_mov_b32 v5, v9 :: v_dual_add_nc_u32 v200, 0, v37
	s_bfe_i32 s1, s1, 0x80000
	v_mov_b32_e32 v118, v9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v71, 32, v56
	v_or3_b32 v189, v38, v50, v49
	v_xor_b32_e32 v38, 24, v183
	v_lshl_or_b32 v40, v46, 8, v46
	v_xor_b32_e32 v46, 64, v185
	v_xor_b32_e32 v37, 48, v187
	scratch_store_b32 off, v34, off offset:128 ; 4-byte Folded Spill
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_add_nc_u32 v34, 0, v36
	scratch_store_b32 off, v41, off offset:20 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v44
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s1, s1
	v_dual_mov_b32 v19, v9 :: v_dual_add_nc_u32 v48, s19, v71
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s1, s1, 10
	v_dual_mov_b32 v4, v9 :: v_dual_add_nc_u32 v201, 0, v38
	v_mov_b32_e32 v120, v9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v72, 48, v56
	v_xor_b32_e32 v49, 0x50, v185
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s102, s1, 0xfffff800
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s1, s12, 0x3fb8aa3b
	v_xor_b32_e32 v38, 64, v187
	scratch_store_b32 off, v34, off offset:132 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, 0, v37
	scratch_store_b32 off, v41, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v18, v9 :: v_dual_add_nc_u32 v41, 0, v46
	v_dual_mov_b32 v22, v9 :: v_dual_add_nc_u32 v51, s19, v72
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v197, s17, v48
	v_xor_b32_e32 v50, 0x60, v185
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v194, s16, v48
	v_xor_b32_e32 v48, 0x50, v187
	scratch_store_b32 off, v34, off offset:136 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, 0, v38
	scratch_store_b32 off, v41, off offset:28 ; 4-byte Folded Spill
	v_dual_mov_b32 v154, 0xff800000 :: v_dual_add_nc_u32 v41, 0, v49
	v_dual_mov_b32 v1, v9 :: v_dual_add_nc_u32 v198, s17, v51
	v_xor_b32_e32 v52, 0x70, v185
	v_subrev_nc_u32_e32 v195, s16, v51
	v_xor_b32_e32 v51, 0x60, v187
	scratch_store_b32 off, v34, off offset:140 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, 0, v48
	scratch_store_b32 off, v41, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v50
	v_xor_b32_e32 v33, 0x810, v184
	v_xor_b32_e32 v53, 0x820, v185
	v_xor_b32_e32 v67, 0x70, v187
	scratch_store_b32 off, v34, off offset:144 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, 0, v51
	scratch_store_b32 off, v41, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v52
	v_dual_mov_b32 v7, v9 :: v_dual_add_nc_u32 v202, 0, v33
	v_xor_b32_e32 v54, 0x830, v185
	v_xor_b32_e32 v33, 4, v189
	scratch_store_b32 off, v34, off offset:148 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, 0, v67
	scratch_store_b32 off, v41, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v53
	v_xor_b32_e32 v55, 0x810, v185
	v_xor_b32_e32 v75, 8, v189
	v_dual_mov_b32 v32, v9 :: v_dual_add_nc_u32 v33, 0, v33
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v73, s19, v56
	scratch_store_b32 off, v41, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v54
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v70, 16, v56
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v56
	v_xor_b32_e32 v56, 0x860, v185
	v_xor_b32_e32 v76, 12, v189
	scratch_store_b32 off, v33, off offset:156 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v75
	scratch_store_b32 off, v41, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v55
	v_xor_b32_e32 v57, 0x870, v185
	v_xor_b32_e32 v77, 16, v189
	scratch_store_b32 off, v33, off offset:160 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v76
	scratch_store_b32 off, v41, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v56
	v_xor_b32_e32 v58, 0x840, v185
	v_xor_b32_e32 v78, 20, v189
	scratch_store_b32 off, v33, off offset:164 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v77
	scratch_store_b32 off, v41, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v57
	v_xor_b32_e32 v59, 0x850, v185
	v_xor_b32_e32 v79, 24, v189
	scratch_store_b32 off, v33, off offset:168 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v78
	scratch_store_b32 off, v41, off offset:60 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v58
	v_xor_b32_e32 v60, 0x1040, v185
	v_xor_b32_e32 v80, 28, v189
	scratch_store_b32 off, v33, off offset:172 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v79
	scratch_store_b32 off, v41, off offset:64 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v59
	v_xor_b32_e32 v61, 0x1050, v185
	v_xor_b32_e32 v62, 0x1060, v185
	scratch_store_b32 off, v33, off offset:176 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v80
	scratch_store_b32 off, v41, off offset:68 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v60
	scratch_store_b32 off, v74, off offset:192 ; 4-byte Folded Spill
	v_xor_b32_e32 v63, 0x1070, v185
	v_xor_b32_e32 v64, 0x1010, v185
	v_xor_b32_e32 v65, 0x1020, v185
	scratch_store_b32 off, v41, off offset:72 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v61
	v_xor_b32_e32 v66, 0x1030, v185
	v_xor_b32_e32 v68, 0x1860, v185
	v_xor_b32_e32 v69, 0x1870, v185
	v_dual_mov_b32 v17, v9 :: v_dual_add_nc_u32 v0, s19, v70
	scratch_store_b32 off, v41, off offset:76 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v62
	v_xor_b32_e32 v70, 0x1840, v185
	v_xor_b32_e32 v71, 0x1850, v185
	v_xor_b32_e32 v72, 0x1820, v185
	v_dual_mov_b32 v21, v9 :: v_dual_add_nc_u32 v186, s17, v73
	scratch_store_b32 off, v41, off offset:80 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v63
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v132, s16, v73
	v_xor_b32_e32 v73, 0x1830, v185
	v_dual_mov_b32 v23, v9 :: v_dual_add_nc_u32 v196, s17, v0
	scratch_store_b32 off, v41, off offset:84 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v64
	v_subrev_nc_u32_e32 v193, s16, v0
	v_mul_lo_u32 v0, s15, v43
	v_xor_b32_e32 v74, 0x1810, v185
	v_dual_mov_b32 v24, v9 :: v_dual_and_b32 v39, 0x540054, v39
	scratch_store_b32 off, v41, off offset:88 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v65
	v_dual_mov_b32 v3, v9 :: v_dual_and_b32 v40, 0x760076, v40
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v34, off offset:152
	scratch_store_b32 off, v33, off offset:180
	scratch_store_b32 off, v41, off offset:92
	v_add_nc_u32_e32 v41, 0, v66
	v_mad_u64_u32 v[33:34], null, s15, 48, v[0:1]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v88, 1, v122
	v_or_b32_e32 v89, 2, v122
	scratch_store_b32 off, v41, off offset:96 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v68
	v_or_b32_e32 v90, 3, v122
	v_or_b32_e32 v91, 4, v122
	v_or_b32_e32 v92, 5, v122
	v_or_b32_e32 v93, 6, v122
	scratch_store_b32 off, v41, off offset:100 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v69
	v_or_b32_e32 v94, 7, v122
	v_xor_b32_e32 v43, 0x2040, v190
	v_xor_b32_e32 v81, 32, v188
	v_xor_b32_e32 v82, 64, v188
	scratch_store_b32 off, v41, off offset:104 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v70
	v_xor_b32_e32 v83, 0x60, v188
	v_xor_b32_e32 v84, 0x90, v191
	v_xor_b32_e32 v85, 0x120, v191
	v_xor_b32_e32 v86, 0x1b0, v191
	scratch_store_b32 off, v41, off offset:108 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v71
	v_xor_b32_e32 v87, 0x240, v191
	v_xor_b32_e32 v42, 0x360, v191
	v_xor_b32_e32 v44, 0x3f0, v191
	v_lshl_or_b32 v35, v39, 4, v39
	scratch_store_b32 off, v41, off offset:112 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v72
	v_lshl_or_b32 v39, v40, 4, v40
	v_lshl_add_u32 v34, s15, 4, v0
	v_lshl_add_u32 v36, s15, 5, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v165, v0, v122
	scratch_store_b32 off, v41, off offset:116 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v73
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s0, 4
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s14, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s8, s9, 14
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s9, s13, s9
	scratch_store_b32 off, v41, off offset:120 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, 0, v74
	v_dual_mov_b32 v119, v9 :: v_dual_add_nc_u32 v232, 0, v43
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s69, v122
	v_add_nc_u32_e32 v247, 0, v81
	scratch_store_b32 off, v41, off offset:124 ; 4-byte Folded Spill
	v_xor_b32_e32 v41, 0x2d0, v191
	v_add_nc_u32_e32 v248, 0, v82
	v_add_nc_u32_e32 v249, 0, v83
	v_add_nc_u32_e32 v250, 0, v84
	v_add_nc_u32_e32 v251, 0, v85
	v_add_nc_u32_e32 v252, 0, v86
	v_add_nc_u32_e32 v253, 0, v87
	v_add_nc_u32_e32 v254, 0, v41
	v_add_nc_u32_e32 v255, 0, v42
	v_add_nc_u32_e32 v168, 0, v44
	v_and_b32_e32 v166, 0x5040504, v35
	v_and_b32_e32 v167, 0x7060706, v39
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v45
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v176, v34, v122
	v_add_nc_u32_e32 v177, v34, v88
	v_add_nc_u32_e32 v178, v34, v89
	v_add_nc_u32_e32 v179, v34, v90
	v_add_nc_u32_e32 v180, v34, v91
	v_add_nc_u32_e32 v181, v34, v92
	v_add_nc_u32_e32 v182, v34, v93
	v_add_nc_u32_e32 v133, v34, v94
	v_add_nc_u32_e32 v134, v36, v122
	v_add_nc_u32_e32 v135, v36, v88
	v_add_nc_u32_e32 v136, v36, v89
	v_add_nc_u32_e32 v137, v36, v90
	v_add_nc_u32_e32 v138, v36, v91
	v_add_nc_u32_e32 v139, v36, v92
	v_add_nc_u32_e32 v141, v36, v93
	v_add_nc_u32_e32 v142, v36, v94
	v_add_nc_u32_e32 v143, v33, v122
	v_add_nc_u32_e32 v144, v33, v88
	v_add_nc_u32_e32 v145, v33, v89
	v_add_nc_u32_e32 v146, v33, v90
	v_add_nc_u32_e32 v147, v33, v91
	v_add_nc_u32_e32 v150, v33, v92
	v_add_nc_u32_e32 v151, v33, v93
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v153, s1, v0 :: v_dual_add_nc_u32 v152, v33, v94
	s_mov_b32 s72, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s12, s15, s18
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s103, s3, s9
	s_lshl_b32 s83, s69, 1
	s_mul_i32 s100, s69, 3
	s_mov_b32 s101, 0x76543210
	s_mov_b32 s73, s72
	s_mov_b32 s74, s72
	s_mov_b32 s75, s72
	s_mov_b32 s76, s72
	s_mov_b32 s77, s72
	s_mov_b32 s78, s72
	s_mov_b32 s79, s72
	s_mov_b32 s94, s90
	s_mov_b32 s95, s91
	s_mov_b32 s86, s90
	s_mov_b32 s87, s91
	s_and_b32 s85, s85, 0xffff
	s_and_b32 s97, s7, 0xffff
	s_mov_b32 s92, s10
	s_mov_b32 s96, s6
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s102, s102, s8
	s_mov_b32 s88, s4
	s_mov_b32 s89, s5
	s_mov_b32 s93, s11
	s_add_i32 s103, s103, s12
	s_mov_b32 s98, s90
	s_mov_b32 s99, s91
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s104, s71, s102
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s68, s103, s71
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[33:34], null, s104, s70, v[245:246]
	v_dual_mov_b32 v220, v158 :: v_dual_mov_b32 v213, v149
	v_dual_mov_b32 v218, v160 :: v_dual_mov_b32 v211, v117
	v_dual_mov_b32 v216, v162 :: v_dual_mov_b32 v209, v192
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v0, 0x80000000, v33, s60
	v_mov_b32_e32 v214, v140
	v_mov_b32_e32 v212, v164
	v_mov_b32_e32 v210, v131
	v_mov_b32_e32 v208, v173
	buffer_load_b128 v[33:36], v0, s[88:91], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v100, 0, v190
	.loc	1 881 25                        ; attention.py:881:25
                                        ; kill: def $vgpr245 killed $vgpr245 def $vgpr246
	v_dual_mov_b32 v222, v116 :: v_dual_mov_b32 v219, v159
	v_mov_b32_e32 v221, v157
	v_mov_b32_e32 v217, v161
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v215, v163 :: v_dual_add_nc_u32 v0, 0, v0
	.loc	1 823 32                        ; attention.py:823:32
	ds_store_b64 v0, v[33:34]
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v0, v[35:36]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s72 :: v_dual_add_nc_u32 v0, 0, v183
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v35, s74
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[49:52], v0 offset1:1
	ds_load_2addr_stride64_b64 v[80:83], v0 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[53:56], v199 offset1:1
	ds_load_2addr_stride64_b64 v[84:87], v199 offset0:2 offset1:3
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s71, v122
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[57:60], v200 offset1:1
	ds_load_2addr_stride64_b64 v[88:91], v200 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s73 :: v_dual_mov_b32 v37, s76
	v_dual_mov_b32 v36, s75 :: v_dual_mov_b32 v39, s78
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v0, v132
	v_cmp_ge_i32_e64 s8, v0, v193
	v_cmp_ge_i32_e64 s4, v0, v194
	v_cmp_ge_i32_e64 s1, v0, v195
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v0, v186
	v_cmp_le_i32_e64 s9, v0, v196
	v_cmp_le_i32_e64 s7, v0, v197
	v_cmp_le_i32_e64 s3, v0, v198
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 1, v122
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v38, s77
	v_mov_b32_e32 v40, s79
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[72:75], v201 offset1:1
	ds_load_2addr_stride64_b64 v[92:95], v201 offset0:2 offset1:3
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s5, s6
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s71, v0
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, vcc_lo, s5
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[129:130], v[33:40] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s8, s9
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v0, v132
	v_cmp_ge_i32_e64 s23, v0, v193
	v_cmp_ge_i32_e64 s14, v0, v194
	v_cmp_ge_i32_e64 s11, v0, v195
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s20, v0, v186
	v_cmp_le_i32_e64 s24, v0, v196
	v_cmp_le_i32_e64 s15, v0, v197
	v_cmp_le_i32_e64 s12, v0, v198
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 2, v122
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[53:54], v[127:128], v[41:48] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s19, s20
	s_and_b32 s9, s23, s24
	s_and_b32 s19, vcc_lo, s19
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s71, v0
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[57:58], v[125:126], v[41:48] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s23, vcc_lo, s9
	s_and_b32 s4, s4, s7
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v0, v132
	v_cmp_ge_i32_e64 s25, v0, v193
	v_cmp_ge_i32_e64 s18, v0, v194
	v_cmp_ge_i32_e64 s16, v0, v195
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v0, v186
	v_cmp_le_i32_e64 s26, v0, v196
	v_cmp_le_i32_e64 s27, v0, v197
	v_cmp_le_i32_e64 s17, v0, v198
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 3, v122
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[72:73], v[123:124], v[41:48] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s21, s22
	s_and_b32 s24, s25, s26
	s_and_b32 s6, vcc_lo, s6
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s71, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v73, v41
	v_cvt_f32_i32_e32 v72, v42
	v_cvt_f32_i32_e32 v71, v43
	v_cvt_f32_i32_e32 v70, v44
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s62, v0, v132
	v_cmp_ge_i32_e64 s53, v0, v193
	v_cmp_ge_i32_e64 s30, v0, v194
	v_cmp_ge_i32_e64 s28, v0, v195
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s63, v0, v186
	v_cmp_le_i32_e64 s54, v0, v196
	v_cmp_le_i32_e64 s31, v0, v197
	v_cmp_le_i32_e64 s29, v0, v198
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 4, v122
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v69, v45
	v_cvt_f32_i32_e32 v68, v46
	v_cvt_f32_i32_e32 v66, v47
	v_cvt_f32_i32_e32 v64, v48
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s71, v0
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[51:52], v[129:130], v[33:40] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s62, s63
	s_and_b32 s25, s53, s54
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v0, v132
	v_cmp_ge_i32_e64 s41, v0, v193
	v_cmp_ge_i32_e64 s35, v0, v194
	v_cmp_ge_i32_e64 s33, v0, v195
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s61, v0, v186
	v_cmp_le_i32_e64 s42, v0, v196
	v_cmp_le_i32_e64 s36, v0, v197
	v_cmp_le_i32_e64 s34, v0, v198
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 5, v122
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[55:56], v[127:128], v[41:48] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s10, s10, s61
	s_and_b32 s9, vcc_lo, s24
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s71, v0
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[59:60], v[125:126], v[41:48] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s25, vcc_lo, s25
	s_and_b32 s41, s41, s42
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s64, v0, v132
	v_cmp_ge_i32_e64 s55, v0, v193
	v_cmp_ge_i32_e64 s39, v0, v194
	v_cmp_ge_i32_e64 s37, v0, v195
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s65, v0, v186
	v_cmp_le_i32_e64 s56, v0, v196
	v_cmp_le_i32_e64 s40, v0, v197
	v_cmp_le_i32_e64 s38, v0, v198
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 6, v122
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[74:75], v[123:124], v[41:48] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s64, s65
	s_and_b32 s26, s55, s56
	s_and_b32 s21, vcc_lo, s21
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s71, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v67, v41
	v_cvt_f32_i32_e32 v65, v42
	v_cvt_f32_i32_e32 v63, v43
	v_cvt_f32_i32_e32 v62, v44
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v0, v132
	v_cmp_ge_i32_e64 s51, v0, v193
	v_cmp_ge_i32_e64 s45, v0, v194
	v_cmp_ge_i32_e64 s43, v0, v195
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s59, v0, v186
	v_cmp_le_i32_e64 s52, v0, v196
	v_cmp_le_i32_e64 s46, v0, v197
	v_cmp_le_i32_e64 s44, v0, v198
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 7, v122
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v61, v45
	v_cvt_f32_i32_e32 v60, v46
	v_cvt_f32_i32_e32 v58, v47
	v_cvt_f32_i32_e32 v56, v48
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[80:81], v[129:130], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[82:83], v[129:130], v[33:40] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s71, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[84:85], v[127:128], v[41:48] neg_lo:[1,1,0]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v33, 2, v165
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[74:81], v[86:87], v[127:128], v[74:81] neg_lo:[1,1,0]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v37, 7, v165
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s66, v0, v132
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s67, v0, v186
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v36, 5, v165
	v_add_nc_u32_e32 v35, 3, v165
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[88:89], v[125:126], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[90:91], v[125:126], v[74:81] neg_lo:[1,1,0]
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s57, v0, v193
	v_cmp_ge_i32_e64 s49, v0, v194
	v_cmp_ge_i32_e64 s47, v0, v195
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s58, v0, v196
	v_cmp_le_i32_e64 s50, v0, v197
	v_cmp_le_i32_e64 s48, v0, v198
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v0, s68, v165, 2
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v34, 1, v165
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v33, s68, v33, 2
	v_add_lshl_u32 v37, s68, v37, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s66, s67
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v36, s68, v36, 2
	v_add_lshl_u32 v35, s68, v35, 2
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[92:93], v[123:124], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[94:95], v[123:124], v[74:81] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	v_add_lshl_u32 v34, s68, v34, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, vcc_lo, s22
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s6
	v_cndmask_b32_e64 v37, 0x80000000, v37, s22
	v_cndmask_b32_e64 v36, 0x80000000, v36, s21
	v_cndmask_b32_e64 v35, 0x80000000, v35, s20
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v53, v45
	v_cvt_f32_i32_e32 v52, v46
	v_cvt_f32_i32_e32 v50, v47
	v_cvt_f32_i32_e32 v49, v75
	v_cvt_f32_i32_e32 v47, v76
	v_cvt_f32_i32_e32 v46, v77
	v_cvt_f32_i32_e32 v45, v78
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s19
	s_clause 0x5
	buffer_load_b32 v0, v0, s[84:87], 0 offen
	buffer_load_b32 v38, v33, s[84:87], 0 offen
	buffer_load_b32 v75, v37, s[84:87], 0 offen
	buffer_load_b32 v76, v36, s[84:87], 0 offen
	buffer_load_b32 v77, v35, s[84:87], 0 offen
	buffer_load_b32 v78, v34, s[84:87], 0 offen
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s13, s59
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v59, v41
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, vcc_lo, s13
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v41, s68, v133, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s53, s57, s58
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v40, s68, v181, 2
	v_add_lshl_u32 v39, s68, v179, 2
	v_add_lshl_u32 v37, s68, v177, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, vcc_lo, s26
	s_and_b32 s26, vcc_lo, s53
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v40, 0x80000000, v40, s24
	v_cndmask_b32_e64 v41, 0x80000000, v41, s26
	v_cndmask_b32_e64 v39, 0x80000000, v39, s25
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v55, v43
	v_cvt_f32_i32_e32 v54, v44
	v_cvt_f32_i32_e32 v44, v79
	v_cvt_f32_i32_e32 v43, v80
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v37, 0x80000000, v37, s23
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, vcc_lo, s41
	s_and_b32 s42, s51, s52
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v51, v74
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s42, vcc_lo, s42
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v74, s68, v136, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s14, s15
	s_and_b32 s15, s18, s27
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v84, s68, v138, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s35, s36
	s_and_b32 s7, vcc_lo, s4
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v86, s68, v141, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s30, s31
	s_and_b32 s31, s45, s46
	s_and_b32 s36, s11, s12
	s_and_b32 s12, vcc_lo, s15
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v85, s68, v139, 2
	v_add_lshl_u32 v87, s68, v142, 2
	v_add_lshl_u32 v88, s68, v143, 2
	v_add_lshl_u32 v89, s68, v144, 2
	v_add_lshl_u32 v90, s68, v145, 2
	v_add_lshl_u32 v91, s68, v146, 2
	v_add_lshl_u32 v92, s68, v147, 2
	v_add_lshl_u32 v93, s68, v150, 2
	v_add_lshl_u32 v94, s68, v151, 2
	v_add_lshl_u32 v95, s68, v152, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v57, v42
	v_cvt_f32_i32_e32 v42, v81
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s39, s40
	s_and_b32 s35, s49, s50
	s_and_b32 s1, s1, s3
	s_and_b32 s16, s16, s17
	s_and_b32 s28, s28, s29
	s_and_b32 s33, s33, s34
	s_and_b32 s38, s37, s38
	s_and_b32 s39, s43, s44
	s_and_b32 s40, s47, s48
	s_and_b32 s3, vcc_lo, s14
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v81, s68, v137, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, vcc_lo, s27
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v74, 0x80000000, v74, s12
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, vcc_lo, s31
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v84, 0x80000000, v84, s14
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, vcc_lo, s30
	s_and_b32 s35, vcc_lo, s35
	s_and_b32 s11, vcc_lo, s1
	s_and_b32 s36, vcc_lo, s36
	s_and_b32 s27, vcc_lo, s16
	s_and_b32 s37, vcc_lo, s28
	s_and_b32 s28, vcc_lo, s33
	s_and_b32 s38, vcc_lo, s38
	s_and_b32 s30, vcc_lo, s39
	s_and_b32 s39, vcc_lo, s40
	s_and_b32 s34, vcc_lo, s18
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v86, 0x80000000, v86, s17
	v_cndmask_b32_e64 v85, 0x80000000, v85, s29
	v_cndmask_b32_e64 v87, 0x80000000, v87, s35
	v_cndmask_b32_e64 v88, 0x80000000, v88, s11
	v_cndmask_b32_e64 v89, 0x80000000, v89, s36
	v_cndmask_b32_e64 v90, 0x80000000, v90, s27
	v_cndmask_b32_e64 v91, 0x80000000, v91, s37
	v_cndmask_b32_e64 v92, 0x80000000, v92, s28
	v_cndmask_b32_e64 v93, 0x80000000, v93, s38
	v_cndmask_b32_e64 v94, 0x80000000, v94, s30
	v_cndmask_b32_e64 v95, 0x80000000, v95, s39
	v_cndmask_b32_e64 v81, 0x80000000, v81, s34
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v50, v153, v50
	v_cvt_f32_i32_e32 v48, v48
	v_mul_f32_e32 v69, v153, v69
	v_mul_f32_e32 v73, v153, v73
	v_mul_f32_e32 v71, v153, v71
	v_mul_f32_e32 v63, v153, v63
	v_mul_f32_e32 v48, v153, v48
	v_mul_f32_e32 v61, v153, v61
	v_mul_f32_e32 v53, v153, v53
	v_mul_f32_e32 v47, v153, v47
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v33, 0xff800000, v0, s5
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v0, 4, v165
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v34, 0xff800000, v38, s6
	v_add_lshl_u32 v38, s68, v178, 2
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v33
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v0, s68, v0, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s59, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s10
	buffer_load_b32 v0, v0, s[84:87], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v35, 0xff800000, v0, s10
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v0, 6, v165
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v0, s68, v0, 2
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s4, s10, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s13
	buffer_load_b32 v0, v0, s[84:87], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v36, 0xff800000, v0, s13
	v_add_lshl_u32 v0, s68, v176, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v36
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s8
	s_clause 0x5
	buffer_load_b32 v0, v0, s[84:87], 0 offen
	buffer_load_b32 v38, v38, s[84:87], 0 offen
	buffer_load_b32 v79, v41, s[84:87], 0 offen
	buffer_load_b32 v80, v40, s[84:87], 0 offen
	buffer_load_b32 v82, v39, s[84:87], 0 offen
	buffer_load_b32 v83, v37, s[84:87], 0 offen
	v_add_lshl_u32 v41, s68, v135, 2
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s1, s13, s16
	s_and_b32 s16, s5, s15
	s_and_b32 s15, s6, s59
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v41, 0x80000000, v41, s3
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v37, 0xff800000, v0, s8
	v_add_lshl_u32 v0, s68, v180, 2
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v38, 0xff800000, v38, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v37
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s41
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s56, 0xff800000, v38
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s10, s8, s18
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	buffer_load_b32 v0, v0, s[84:87], 0 offen
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, s9, s56
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v39, 0xff800000, v0, s41
	v_add_lshl_u32 v0, s68, v182, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s61, 0xff800000, v39
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s42
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s6, s41, s61
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b32 v0, v0, s[84:87], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v40, 0xff800000, v0, s42
	v_add_lshl_u32 v0, s68, v134, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s62, 0xff800000, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s7
	s_clause 0xf
	buffer_load_b32 v96, v0, s[84:87], 0 offen
	buffer_load_b32 v97, v74, s[84:87], 0 offen
	buffer_load_b32 v84, v84, s[84:87], 0 offen
	buffer_load_b32 v86, v86, s[84:87], 0 offen
	buffer_load_b32 v88, v88, s[84:87], 0 offen
	buffer_load_b32 v90, v90, s[84:87], 0 offen
	buffer_load_b32 v92, v92, s[84:87], 0 offen
	buffer_load_b32 v94, v94, s[84:87], 0 offen
	buffer_load_b32 v87, v87, s[84:87], 0 offen
	buffer_load_b32 v85, v85, s[84:87], 0 offen
	buffer_load_b32 v98, v81, s[84:87], 0 offen
	buffer_load_b32 v99, v41, s[84:87], 0 offen
	buffer_load_b32 v95, v95, s[84:87], 0 offen
	buffer_load_b32 v93, v93, s[84:87], 0 offen
	buffer_load_b32 v91, v91, s[84:87], 0 offen
	buffer_load_b32 v89, v89, s[84:87], 0 offen
	v_or_b32_e32 v0, s102, v148
	v_or_b32_e32 v81, s102, v229
	v_or_b32_e32 v41, s102, v230
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s5, s42, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v0, v0, s71, 1
	v_add_lshl_u32 v81, v81, s71, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v41, v41, s71, 1
	s_clause 0x1
	buffer_load_u16 v104, v0, s[92:95], 0 offen
	buffer_load_u16 v81, v81, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v244
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v105, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v243
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v72, v153, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v106, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v242
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v107, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v241
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v70, v153, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v108, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v240
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v109, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v239
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v68, v153, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v110, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v238
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v111, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v112, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v236
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v113, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v235
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v66, v153, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v114, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v234
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v115, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v116
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v64, v153, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v116, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v157
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v157, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v158, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v159
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v159, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v160, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v161
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v161, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v162, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v163
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v55, v153, v55
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v163, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v140
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v60, v153, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v140, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v149
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v149, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v164
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v58, v153, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v164, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v117
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v117, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v131, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v192
	v_add_lshl_u32 v0, v0, s71, 1
	buffer_load_u16 v192, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, s102, v173
	buffer_load_u16 v173, v41, s[92:95], 0 offen
	v_or_b32_e32 v41, s102, v228
	v_add_lshl_u32 v0, v0, s71, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_add_lshl_u32 v41, v41, s71, 1
	s_clause 0x1
	buffer_load_u16 v0, v0, s[92:95], 0 offen
	buffer_load_u16 v203, v41, s[92:95], 0 offen
	v_or_b32_e32 v41, s102, v227
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v54, v153, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v41, v41, s71, 1
	buffer_load_u16 v74, v41, s[92:95], 0 offen
	v_or_b32_e32 v41, s102, v233
	v_add_lshl_u32 v41, v41, s71, 1
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s71, s71, 64
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v41, v41, s[92:95], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v100, v[33:36]
	ds_store_b128 v100, v[37:40] offset:512
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v78, s19
	v_cndmask_b32_e64 v34, 0xff800000, v77, s20
	v_cndmask_b32_e64 v35, 0xff800000, v76, s21
	v_cndmask_b32_e64 v36, 0xff800000, v75, s22
	v_cndmask_b32_e64 v37, 0xff800000, v83, s23
	v_cndmask_b32_e64 v38, 0xff800000, v82, s25
	v_cndmask_b32_e64 v39, 0xff800000, v80, s24
	v_cndmask_b32_e64 v40, 0xff800000, v79, s26
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v33
	v_cmp_neq_f32_e64 s48, 0xff800000, v34
	v_cmp_neq_f32_e64 s33, 0xff800000, v35
	v_cmp_neq_f32_e64 s53, 0xff800000, v36
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v232, v[33:36]
	ds_store_b128 v232, v[37:40] offset:512
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s40, 0xff800000, v37
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(47)
	v_cndmask_b32_e64 v33, 0xff800000, v96, s7
	s_waitcnt vmcnt(46)
	v_cndmask_b32_e64 v34, 0xff800000, v97, s12
	s_waitcnt vmcnt(45)
	v_cndmask_b32_e64 v35, 0xff800000, v84, s14
	s_waitcnt vmcnt(44)
	v_cndmask_b32_e64 v36, 0xff800000, v86, s17
	s_waitcnt vmcnt(43)
	v_cndmask_b32_e64 v37, 0xff800000, v88, s11
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s43, 0xff800000, v38
	v_cmp_neq_f32_e64 s46, 0xff800000, v39
	v_cmp_neq_f32_e64 s47, 0xff800000, v40
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(42)
	v_cndmask_b32_e64 v38, 0xff800000, v90, s27
	s_waitcnt vmcnt(41)
	v_cndmask_b32_e64 v39, 0xff800000, v92, s28
	s_waitcnt vmcnt(40)
	v_cndmask_b32_e64 v40, 0xff800000, v94, s30
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s63, 0xff800000, v33
	v_cmp_neq_f32_e64 s64, 0xff800000, v34
	v_cmp_neq_f32_e64 s67, 0xff800000, v35
	v_cmp_neq_f32_e64 s68, 0xff800000, v36
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v100, v[33:36] offset:1024
	ds_store_b128 v100, v[37:40] offset:1536
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s57, 0xff800000, v37
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(36)
	v_cndmask_b32_e64 v33, 0xff800000, v99, s3
	v_cndmask_b32_e64 v34, 0xff800000, v98, s34
	v_cndmask_b32_e64 v35, 0xff800000, v85, s29
	v_cndmask_b32_e64 v36, 0xff800000, v87, s35
	s_waitcnt vmcnt(32)
	v_cndmask_b32_e64 v37, 0xff800000, v89, s36
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s58, 0xff800000, v38
	v_cmp_neq_f32_e64 s65, 0xff800000, v39
	v_cmp_neq_f32_e64 s66, 0xff800000, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v38, 0xff800000, v91, s37
	v_cndmask_b32_e64 v39, 0xff800000, v93, s38
	v_cndmask_b32_e64 v40, 0xff800000, v95, s39
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v232, v[33:36] offset:1024
	ds_store_b128 v232, v[37:40] offset:1536
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s44, 0xff800000, v37
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v37, off, off offset:128
	scratch_load_b32 v75, off, off offset:132
	scratch_load_b32 v79, off, off offset:136
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s51, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v33, 0, v187
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s52, 0xff800000, v34
	v_cmp_neq_f32_e64 s54, 0xff800000, v35
	v_cmp_neq_f32_e64 s55, 0xff800000, v36
	v_cmp_neq_f32_e64 s45, 0xff800000, v38
	v_cmp_neq_f32_e64 s49, 0xff800000, v39
	v_cmp_neq_f32_e64 s50, 0xff800000, v40
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b128 v[33:36], v33
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v104, 16, v104
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s13, s17, s68
	s_and_b32 s14, s14, s67
	s_and_b32 s17, s12, s64
	s_and_b32 s18, s7, s63
	s_and_b32 s7, s30, s66
	s_and_b32 s8, s28, s65
	s_and_b32 s12, s11, s57
	s_and_b32 s11, s27, s58
	s_and_b32 s27, s22, s53
	s_and_b32 s28, s21, s33
	s_and_b32 s33, s19, s31
	s_and_b32 s31, s20, s48
	s_and_b32 s19, s26, s47
	s_and_b32 s20, s24, s46
	s_and_b32 s24, s23, s40
	s_and_b32 s23, s25, s43
	s_and_b32 s30, s29, s54
	s_and_b32 s29, s35, s55
	s_and_b32 s34, s34, s52
	s_and_b32 s35, s3, s51
	s_and_b32 s21, s39, s50
	s_and_b32 s22, s38, s49
	s_and_b32 s25, s37, s45
	s_and_b32 s26, s36, s44
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s71, s82
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v0
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(2)
	ds_load_b128 v[37:40], v37
	s_waitcnt vmcnt(1)
	ds_load_b128 v[75:78], v75
	s_waitcnt vmcnt(0)
	ds_load_b128 v[83:86], v79
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v34, 0x3fb8aa3b, v34 :: v_dual_mul_f32 v33, 0x3fb8aa3b, v33
	v_dual_mul_f32 v35, 0x3fb8aa3b, v35 :: v_dual_mul_f32 v36, 0x3fb8aa3b, v36
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v56, v153, v56
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v33, v73, v104
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v38, 0x3fb8aa3b, v38 :: v_dual_lshlrev_b32 v73, 16, v105
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v94, 0x3fb8aa3b, v77
	scratch_load_b32 v77, off, off offset:140 ; 4-byte Folded Reload
	v_mul_f32_e32 v91, 0x3fb8aa3b, v75
	v_mul_f32_e32 v75, 0x3fb8aa3b, v76
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v76, 0x3fb8aa3b, v84
	scratch_load_b32 v84, off, off offset:144 ; 4-byte Folded Reload
	v_dual_mul_f32 v88, 0x3fb8aa3b, v78 :: v_dual_mul_f32 v39, 0x3fb8aa3b, v39
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v34, v72, v73
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v37, 0x3fb8aa3b, v37 :: v_dual_lshlrev_b32 v72, 16, v106
	v_dual_mul_f32 v83, 0x3fb8aa3b, v83 :: v_dual_mul_f32 v40, 0x3fb8aa3b, v40
	v_mul_f32_e32 v85, 0x3fb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v35, v71, v72
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v71, 16, v107
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v36, v70, v71
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v70, 16, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v37, v69, v70
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v69, 16, v109
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v38, v68, v69
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v68, 16, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v39, v66, v68 :: v_dual_lshlrev_b32 v66, 16, v111
	v_fmac_f32_e32 v40, v64, v66
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v64, v153, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v66, 16, v112
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v91, v64, v66
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt vmcnt(1)
	ds_load_b128 v[77:80], v77
	s_waitcnt vmcnt(0)
	ds_load_b128 v[98:101], v84
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v82, 0x3fb8aa3b, v86 :: v_dual_mul_f32 v97, 0x3fb8aa3b, v79
	scratch_load_b32 v79, off, off offset:148 ; 4-byte Folded Reload
	v_mul_f32_e32 v95, 0x3fb8aa3b, v77
	v_mul_f32_e32 v77, 0x3fb8aa3b, v78
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v86, 0x3fb8aa3b, v98
	v_dual_mul_f32 v78, 0x3fb8aa3b, v99 :: v_dual_mul_f32 v89, 0x3fb8aa3b, v100
	v_mul_f32_e32 v84, 0x3fb8aa3b, v101
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v64, v153, v65
	v_dual_mul_f32 v62, v153, v62 :: v_dual_lshlrev_b32 v65, 16, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v75, v64, v65 :: v_dual_lshlrev_b32 v64, 16, v114
	v_dual_fmac_f32 v94, v63, v64 :: v_dual_lshlrev_b32 v63, 16, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v62, v63
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v62, 16, v116
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v83, v61, v62
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v61, 16, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v76, v60, v61
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v60, 16, v158
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v85, v58, v60
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_b128 v[98:101], v79
	scratch_load_b32 v79, off, off offset:152 ; 4-byte Folded Reload
	v_mul_f32_e32 v92, 0x3fb8aa3b, v80
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v96, 0x3fb8aa3b, v101
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v101, 0, 1, s4
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v98, 0x3fb8aa3b, v98
	s_waitcnt vmcnt(0)
	ds_load_b128 v[204:207], v79
	v_mul_f32_e32 v79, 0x3fb8aa3b, v99
	v_mul_f32_e32 v99, 0x3fb8aa3b, v100
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v100, 0, 1, s1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v99, v47, v0 :: v_dual_lshlrev_b32 v58, 16, v159
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v100.l, 8, v100.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v0, v153, v46
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v46, 16, v173
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v82, v56, v58
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v56, v153, v59
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v102.h, v101.l, v100.l
	v_cndmask_b32_e64 v100, 0, 1, s15
	v_cndmask_b32_e64 v101, 0, 1, s16
	v_dual_mov_b32 v173, v208 :: v_dual_lshlrev_b32 v58, 16, v160
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v96, v0, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v100.l, 8, v100.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v90, 0x3fb8aa3b, v204
	v_dual_mul_f32 v80, 0x3fb8aa3b, v205 :: v_dual_fmac_f32 v95, v56, v58
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v56, v153, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v102.l, v101.l, v100.l
	v_cndmask_b32_e64 v100, 0, 1, s5
	v_cndmask_b32_e64 v101, 0, 1, s6
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v57, 16, v161
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v0, v153, v45 :: v_dual_lshlrev_b32 v45, 16, v203
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v100.l, 8, v100.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v93, 0x3fb8aa3b, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v77, v56, v57 :: v_dual_lshlrev_b32 v56, 16, v162
	v_fmac_f32_e32 v90, v0, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_or_b16 v103.h, v101.l, v100.l
	v_cndmask_b32_e64 v100, 0, 1, s9
	v_cndmask_b32_e64 v101, 0, 1, s10
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v97, v55, v56
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v0, v153, v44 :: v_dual_lshlrev_b32 v55, 16, v163
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v100.l, 8, v100.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v87, 0x3fb8aa3b, v207 :: v_dual_lshlrev_b32 v44, 16, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v92, v54, v55
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_or_b16 v103.l, v101.l, v100.l
	v_cndmask_b32_e64 v100, 0, 1, s13
	v_cndmask_b32_e64 v101, 0, 1, s14
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v80, v0, v44
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v0, v153, v43
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v54, 16, v140
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v100.l, 8, v100.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v140, v214 :: v_dual_fmac_f32 v93, v0, v41
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v0, v153, v42
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v204.h, v101.l, v100.l
	v_cndmask_b32_e64 v100, 0, 1, s17
	v_cndmask_b32_e64 v101, 0, 1, s18
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v86, v53, v54 :: v_dual_lshlrev_b32 v41, 16, v81
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v53, 16, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v100.l, 8, v100.l
	v_mov_b32_e32 v149, v213
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v87, v0, v41
	scratch_load_b64 v[41:42], off, off offset:4 ; 8-byte Folded Reload
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v0, 0, v189
	v_or_b16 v204.l, v101.l, v100.l
	v_cndmask_b32_e64 v100, 0, 1, s7
	v_cndmask_b32_e64 v101, 0, 1, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v100.l, 8, v100.l
	v_or_b16 v100.h, v101.l, v100.l
	v_cndmask_b32_e64 v101, 0, 1, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v100.l, v101.l
	v_cndmask_b32_e64 v101, 0, 1, s12
	v_lshlrev_b16 v100.l, 8, v100.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v100.l, v101.l, v100.l
	v_add_nc_u32_e32 v101, 0, v184
	ds_store_2addr_b32 v101, v102, v103 offset1:32
	ds_store_2addr_b32 v101, v204, v100 offset0:64 offset1:96
	v_cndmask_b32_e64 v100, 0, 1, s27
	v_cndmask_b32_e64 v101, 0, 1, s28
	v_cndmask_b32_e64 v102, 0, 1, s20
	v_cndmask_b32_e64 v103, 0, 1, s30
	v_cndmask_b32_e64 v204, 0, 1, s22
	v_lshlrev_b16 v100.l, 8, v100.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v100.h, v101.l, v100.l
	v_cndmask_b32_e64 v101, 0, 1, s31
	v_mov_b16_e32 v100.l, v101.l
	v_cndmask_b32_e64 v101, 0, 1, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v100.l, 8, v100.l
	v_or_b16 v100.l, v101.l, v100.l
	v_cndmask_b32_e64 v101, 0, 1, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v101.l, 8, v101.l
	v_or_b16 v101.h, v102.l, v101.l
	v_cndmask_b32_e64 v102, 0, 1, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v101.l, v102.l
	v_cndmask_b32_e64 v102, 0, 1, s24
	v_lshlrev_b16 v101.l, 8, v101.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v101.l, v102.l, v101.l
	v_cndmask_b32_e64 v102, 0, 1, s29
	v_lshlrev_b16 v102.l, 8, v102.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v102.h, v103.l, v102.l
	v_cndmask_b32_e64 v103, 0, 1, s34
	v_mov_b16_e32 v102.l, v103.l
	v_cndmask_b32_e64 v103, 0, 1, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v102.l, 8, v102.l
	v_or_b16 v102.l, v103.l, v102.l
	v_cndmask_b32_e64 v103, 0, 1, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v103.l, 8, v103.l
	v_or_b16 v103.h, v204.l, v103.l
	v_cndmask_b32_e64 v204, 0, 1, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v103.l, v204.l
	v_cndmask_b32_e64 v204, 0, 1, s26
	v_lshlrev_b16 v103.l, 8, v103.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v103.l, v204.l, v103.l
	ds_store_2addr_b32 v202, v100, v101 offset1:32
	ds_store_2addr_b32 v202, v102, v103 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v45, off, off offset:156 ; 4-byte Folded Reload
	ds_load_b32 v0, v0
	s_waitcnt vmcnt(1)
	v_mad_u64_u32 v[41:42], null, s104, s69, v[41:42]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v42, 1, v41
	v_add_lshl_u32 v44, v41, s83, 1
	v_add_lshl_u32 v43, v41, s69, 1
	v_add_lshl_u32 v41, v41, s100, 1
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v46, v45
	scratch_load_b32 v45, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v52, v153, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v78, v52, v53
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v52, 16, v164
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v89, v50, v52 :: v_dual_lshlrev_b32 v50, 16, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v117, v211 :: v_dual_fmac_f32 v84, v48, v50
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v153, v51
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v50, 16, v131
	v_dual_mov_b32 v131, v210 :: v_dual_fmac_f32 v98, v48, v50
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v48, v153, v49 :: v_dual_lshlrev_b32 v49, 16, v192
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v192, v209 :: v_dual_fmac_f32 v79, v48, v49
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v49, v45
	scratch_load_b32 v45, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v48, 0x1000000, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s55, 0, v48
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, 0xff800000, v88, s55
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v50, v45
	scratch_load_b32 v45, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v164, v212 :: v_dual_and_b32 v55, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s54, 1, v55
	v_and_b32_e32 v55, 0x1000000, v50
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v113, 0xff800000, v83, s54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s52, 0, v55
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v116, 0xff800000, v82, s52
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v51, v45
	scratch_load_b32 v45, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v55, 1, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s51, 1, v55
	v_and_b32_e32 v55, 0x1000000, v51
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v105, 0xff800000, v95, s51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s49, 0, v55
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v108, 0xff800000, v92, s49
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v52, v45
	scratch_load_b32 v45, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v55, 1, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s47, 1, v55
	v_and_b32_e32 v55, 0x1000000, v52
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v109, 0xff800000, v86, s47
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s45, 0, v55
	s_waitcnt vmcnt(0)
	ds_load_b32 v53, v45
	scratch_load_b32 v45, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v54, v45
	v_and_b32_e32 v45, 0x10000, v0
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s61, 0, v45
	v_and_b32_e32 v45, 0x10000, v46
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v35, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s3, 0, v45
	v_and_b32_e32 v45, 0x10000, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v39, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s48, 0, v45
	v_and_b32_e32 v45, 0x10000, v50
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v47, 0xff800000, v94, s48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s44, 0, v45
	v_and_b32_e32 v45, 0x10000, v51
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v115, 0xff800000, v85, s44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s41, 0, v45
	v_and_b32_e32 v45, 0x10000, v52
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v112, 0xff800000, v84, s45
	v_cndmask_b32_e64 v107, 0xff800000, v97, s41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s38, 0, v45
	v_and_b32_e32 v45, 0x10000, v53
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, 0xff800000, v89, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s37, 0, v45
	v_and_b32_e32 v45, 0x10000, v54
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v99, 0xff800000, v99, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s36, 0, v45
	v_and_b32_e32 v45, 1, v0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v103, 0xff800000, v93, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s62, 1, v45
	v_and_b32_e32 v45, 0x1000000, v0
	v_lshrrev_b16 v0.l, 8, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v33, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s65, 0, v45
	v_and_b16 v0.l, 1, v0.l
	v_and_b32_e32 v45, 1, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v36, s65
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s67, 1, v0.l
	v_lshrrev_b16 v0.l, 8, v46.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s64, 1, v45
	v_and_b32_e32 v45, 0x1000000, v46
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v34, s67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	v_and_b32_e32 v55, 1, v53
	v_cmp_ne_u32_e64 s63, 0, v45
	v_and_b32_e32 v45, 1, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v37, s64
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s66, 1, v0.l
	v_lshrrev_b16 v0.l, 8, v49.l
	v_cmp_eq_u32_e64 s43, 1, v55
	v_and_b32_e32 v55, 0x1000000, v53
	v_cmp_eq_u32_e64 s56, 1, v45
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v40, s63
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v38, s66
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s42, 0, v55
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, 0xff800000, v91, s56
	v_cndmask_b32_e64 v97, 0xff800000, v98, s43
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s59, 1, v0.l
	v_lshrrev_b16 v0.l, 8, v50.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v100, 0xff800000, v96, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v55, 1, v54
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v50, 0x80000000, v44, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v46, 0xff800000, v75, s59
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v49, 0x80000000, v43, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s40, 1, v55
	v_and_b32_e32 v55, 0x1000000, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s58, 1, v0.l
	v_lshrrev_b16 v0.l, 8, v51.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v51, 0x80000000, v41, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s39, 0, v55
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v101, 0xff800000, v90, s40
	v_cndmask_b32_e64 v114, 0xff800000, v76, s58
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v104, 0xff800000, v87, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s57, 1, v0.l
	v_lshrrev_b16 v0.l, 8, v52.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v106, 0xff800000, v77, s57
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s53, 1, v0.l
	v_lshrrev_b16 v0.l, 8, v53.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v110, 0xff800000, v78, s53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	v_cmp_eq_u16_e64 s50, 1, v0.l
	v_lshrrev_b16 v0.l, 8, v54.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v98, 0xff800000, v79, s50
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s46, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v0, 0, v188
	ds_store_b128 v0, v[33:36]
	ds_store_b128 v0, v[105:108] offset:2048
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v0, 0x80000000, v42, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v102, 0xff800000, v80, s46
	ds_store_b128 v247, v[37:40]
	ds_store_b128 v247, v[109:112] offset:2048
	ds_store_b128 v248, v[45:48]
	ds_store_b128 v248, v[97:100] offset:2048
	ds_store_b128 v249, v[113:116]
	ds_store_b128 v249, v[101:104] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[41:44], v0, s[96:99], 0 offen
	buffer_load_b128 v[58:61], v50, s[96:99], 0 offen
	buffer_load_b128 v[50:53], v51, s[96:99], 0 offen
	buffer_load_b128 v[54:57], v49, s[96:99], 0 offen
	v_add_nc_u32_e32 v0, 0, v191
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[93:96], v231
	ds_load_b128 v[85:88], v231 offset:256
	ds_load_b128 v[89:92], v231 offset:1024
	ds_load_b128 v[81:84], v231 offset:1280
	ds_load_b128 v[77:80], v231 offset:512
	ds_load_b128 v[69:72], v231 offset:768
	ds_load_b128 v[73:76], v231 offset:1536
	ds_load_b128 v[65:68], v231 offset:1792
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v62.l, v41.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v63.l, v58.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v63.h, v50.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v62.h, v54.l
	v_mov_b16_e32 v54.l, v41.h
	v_mov_b16_e32 v50.l, v58.h
	v_mov_b16_e32 v41.l, v43.l
	v_mov_b16_e32 v41.h, v56.l
	ds_store_b64 v0, v[62:63]
	v_mov_b16_e32 v62.h, v55.l
	v_mov_b32_e32 v49, v54
	v_mov_b16_e32 v55.l, v42.h
	v_mov_b16_e32 v63.l, v59.l
	v_mov_b16_e32 v63.h, v51.l
	v_mov_b16_e32 v62.l, v42.l
	ds_store_b64 v250, v[49:50]
	ds_store_b64 v251, v[62:63]
	v_mov_b16_e32 v51.l, v59.h
	v_mov_b32_e32 v50, v55
	v_mov_b16_e32 v42.l, v60.l
	v_mov_b16_e32 v42.h, v52.l
	v_mov_b16_e32 v56.l, v43.h
	ds_store_b64 v252, v[50:51]
	ds_store_b64 v253, v[41:42]
	v_mov_b16_e32 v42.h, v53.l
	v_mov_b16_e32 v53.l, v61.h
	v_mov_b16_e32 v52.l, v60.h
	v_mov_b32_e32 v51, v56
	v_mov_b16_e32 v42.l, v61.l
	v_mov_b16_e32 v41.l, v44.l
	v_mov_b16_e32 v41.h, v57.l
	v_mov_b32_e32 v58, v53
	v_mov_b16_e32 v57.l, v44.h
	ds_store_b64 v254, v[51:52]
	ds_store_b64 v255, v[41:42]
	ds_store_b64 v168, v[57:58]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v0, v46, v47, v48
	v_max3_f32 v41, v113, v114, v115
	v_max3_f32 v42, v116, v105, v106
	v_max3_f32 v43, v97, v98, v99
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v0, v0, v41, v42
	v_max3_f32 v41, v107, v108, v109
	v_max3_f32 v42, v110, v111, v112
	v_max3_f32 v41, v41, v42, v43
	v_max_f32_e32 v42, v33, v34
	v_max3_f32 v43, v36, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v42, v42, v35, v43
	v_max3_f32 v43, v39, v40, v45
	v_max3_f32 v0, v42, v43, v0
	v_dual_max_f32 v42, v100, v101 :: v_dual_max_f32 v43, v103, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v42, v42, v102, v43
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v43, 0, v185
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v0, v0, v41, v42
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v42.h, 0
	ds_load_b128 v[53:56], v43
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v41, v0, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v41, v156, v0, v41
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v33, v41
	v_sub_f32_e32 v33, v34, v41
	v_sub_f32_e32 v35, v35, v41
	v_sub_f32_e32 v36, v36, v41
	v_sub_f32_e32 v37, v37, v41
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v38, v41
	v_sub_f32_e32 v39, v39, v41
	v_sub_f32_e32 v40, v40, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s62
	v_cndmask_b32_e64 v33, 0, v33, s67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s62, v0, v0
	v_mov_b16_e32 v42.l, v33.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s67, v33, v33
	v_and_b32_e32 v34, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v33, v33, v34, 0x7fff
	v_mov_b16_e32 v34.h, v42.h
	v_mov_b16_e32 v34.l, v0.h
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v0, v34, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v33.h, s67
	v_cndmask_b16 v34.l, 0x7fff, v0.h, s62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v0, v34, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v0, v34, v166
	v_perm_b32 v34, v0, v34, v167
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.h, v42.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s61
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s61, v0, v0
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v35, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s65
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s62, v35, v35
	v_and_b32_e32 v36, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v36, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v35.h, s62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v0, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v0, v166
	v_perm_b32 v36, v36, v0, v167
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.h, v42.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s64
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s61, v0, v0
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v37, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s66
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s62, v37, v37
	v_and_b32_e32 v38, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v38, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v0, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v38, v0, v166
	v_perm_b32 v38, v38, v0, v167
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.h, v42.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v39, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v156
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s63
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s61, v39, v39
	v_and_b32_e32 v40, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v40, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v39.h, s61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v0, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v40, v0, v166
	v_perm_b32 v40, v40, v0, v167
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v0, v156, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v0, v0
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v44, 0, v0, s3
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v44
	v_mul_f32_e32 v9, v9, v44
	v_mul_f32_e32 v10, v10, v44
	v_mul_f32_e32 v11, v11, v44
	v_mul_f32_e32 v12, v12, v44
	v_mul_f32_e32 v13, v13, v44
	v_mul_f32_e32 v15, v15, v44
	v_mul_f32_e32 v16, v16, v44
	v_mul_f32_e32 v25, v25, v44
	v_mul_f32_e32 v26, v26, v44
	v_mul_f32_e32 v27, v27, v44
	v_mul_f32_e32 v28, v28, v44
	v_mul_f32_e32 v29, v29, v44
	v_mul_f32_e32 v30, v30, v44
	v_mul_f32_e32 v31, v31, v44
	v_mul_f32_e32 v32, v32, v44
	v_mul_f32_e32 v17, v17, v44
	v_mul_f32_e32 v18, v18, v44
	v_mul_f32_e32 v19, v19, v44
	v_mul_f32_e32 v20, v20, v44
	v_mul_f32_e32 v21, v21, v44
	v_mul_f32_e32 v22, v22, v44
	v_mul_f32_e32 v23, v23, v44
	v_mul_f32_e32 v24, v24, v44
	v_mul_f32_e32 v1, v1, v44
	v_mul_f32_e32 v2, v2, v44
	v_mul_f32_e32 v3, v3, v44
	v_mul_f32_e32 v4, v4, v44
	v_mul_f32_e32 v5, v5, v44
	v_mul_f32_e32 v6, v6, v44
	v_mul_f32_e32 v7, v7, v44
	v_mul_f32_e32 v8, v8, v44
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[57:60], v0
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[156:159], v0
	ds_load_b128 v[49:52], v43 offset:2048
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[53:60], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[57:60], v0
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[61:64], v0
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[57:64], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[53:56], v0
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[207:210], v0
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[57:60], v0
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[61:64], v0
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[57:64], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[57:60], v0
	scratch_load_b32 v0, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[61:64], v0
	scratch_load_b32 v0, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[211:214], v0
	scratch_load_b32 v0, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[223:226], v0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v45, v41
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[57:64], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v46, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v42.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v47, v41
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v48, v41
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v113, v41
	v_sub_f32_e32 v38, v114, v41
	v_sub_f32_e32 v39, v115, v41
	v_sub_f32_e32 v40, v116, v41
	v_mov_b32_e32 v116, v222
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v68, v68
	v_max_f32_e32 v61, v72, v72
.Ltmp10:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s56
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v62, v66, v71, v67
.Ltmp12:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v61, v60
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v42.l, v33.h
	v_cmp_o_f32_e64 s56, v33, v33
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v61, v69, v65, v70
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v34, 1, v34
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v60, v61, v62, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp18:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v0, v0, v34, 0x7fff
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v61, v60 :: v_dual_and_b32 v34, 1, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	v_add3_u32 v33, v33, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.h, 0x7fff, v33.h, s56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v34, v0, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v61
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v33, v34, v0, v166
	v_perm_b32 v34, v34, v0, v167
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.h, v42.h
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b32_dpp v61, v61 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v60, v60, v61 :: v_dual_and_b32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v61, v60
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v0, v0, v35, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
.Ltmp37:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v61
.Ltmp39:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v61, v172, v172
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v35.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s48, v35, v35
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v172, v61, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v36, 1, v42
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v70, v172
	v_sub_f32_e32 v66, v66, v172
	v_sub_f32_e32 v64, v72, v172
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v69, v172
	v_sub_f32_e32 v65, v65, v172
	v_sub_f32_e32 v63, v71, v172
	v_sub_f32_e32 v67, v67, v172
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.h, 0x7fff, v35.h, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v0, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v0, v166
	v_perm_b32 v36, v36, v0, v167
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.h, v42.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s54
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v37, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s58
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s48, v37, v37
	v_and_b32_e32 v38, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v38, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v0, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v38, v0, v166
	v_perm_b32 v38, v38, v0, v167
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.h, v42.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s44
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v39, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s52
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s44, v39, v39
	v_and_b32_e32 v40, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v40, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v39.h, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v0, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v40, v0, v166
	v_perm_b32 v40, v40, v0, v167
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[49:56], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[160:163], v0
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[156:163], v[33:40], v[9:16]
	v_dual_mov_b32 v160, v218 :: v_dual_mov_b32 v161, v217
	v_dual_mov_b32 v162, v216 :: v_dual_mov_b32 v163, v215
	v_mov_b32_e32 v157, v221
	v_dual_mov_b32 v159, v219 :: v_dual_mov_b32 v156, v41
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[44:47], v0
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v0
	scratch_load_b32 v0, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[52:55], v0
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[48:55], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[215:218], v0
	scratch_load_b32 v0, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[211:218], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v106, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v42.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v107, v41
	v_sub_f32_e32 v36, v108, v41
	v_sub_f32_e32 v37, v109, v41
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v110, v41
	v_sub_f32_e32 v39, v111, v41
	v_sub_f32_e32 v40, v112, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s57
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v42.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s44, v33, v33
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[52:55], v0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v105, v41
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s51
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v0, v34, 0x7fff
	v_and_b32_e32 v34, 1, v42
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v33, v33, v34, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v33.h, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v0, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v34, v0, v166
	v_perm_b32 v34, v34, v0, v167
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.h, v42.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v0.h
	v_mov_b32_e32 v158, v220
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v35, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s49
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s41, v35, v35
	v_and_b32_e32 v36, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v36, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v35.h, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v0, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v0, v166
	v_perm_b32 v36, v36, v0, v167
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.h, v42.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s47
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v37, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s53
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s41, v37, v37
	v_and_b32_e32 v38, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v38, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v0, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v38, v0, v166
	v_perm_b32 v38, v38, v0, v167
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.h, v42.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v39, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s45
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s38, v39, v39
	v_and_b32_e32 v40, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v40, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v39.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v0, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v40, v0, v166
	v_perm_b32 v40, v40, v0, v167
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v0
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[44:51], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[203:206], v0
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[44:47], v0
	scratch_load_b32 v0, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v0
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[44:51], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[44:47], v43 offset:4096
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v0
	scratch_load_b32 v0, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[219:222], v0
	ds_load_b128 v[105:108], v43 offset:6144
	scratch_load_b32 v0, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[44:51], v[33:40], v[17:24]
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v76, v76
.Ltmp41:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[56:59], v0
	scratch_load_b32 v0, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[52:59], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v98, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v42.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v99, v41
	v_sub_f32_e32 v36, v100, v41
	v_sub_f32_e32 v37, v101, v41
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v102, v41
	v_sub_f32_e32 v39, v103, v41
	v_sub_f32_e32 v40, v104, v41
.Ltmp42:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v80, v80
	v_max3_f32 v53, v74, v79, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v51, v52, v51
.Ltmp43:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s50
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v52, v77, v73, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v33.h
	v_cmp_o_f32_e64 s38, v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v51, v52, v53, v51
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v51, v51, v52
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_max_f32_e32 v51, v51, v52
.Ltmp51:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[109:112], v0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v97, v41
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v0, v34, 0x7fff
	v_and_b32_e32 v34, 1, v42
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v33, v33, v34, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v33.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v0, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v34, v0, v166
	v_perm_b32 v34, v34, v0, v167
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.h, v42.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v35, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v35, v35
	v_and_b32_e32 v36, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v36, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v35.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v0, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v0, v166
	v_perm_b32 v36, v36, v0, v167
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.h, v42.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s40
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v37, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s46
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v37, v37
	v_and_b32_e32 v38, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v38, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v0, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v38, v0, v166
	v_perm_b32 v38, v38, v0, v167
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.h, v42.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v39, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s36, v39, v39
	v_and_b32_e32 v40, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v40, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v39.h, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v0, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v40, v0, v166
	v_perm_b32 v40, v40, v0, v167
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v0, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[203:210], v[33:40], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[219:226], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[105:112], v[33:40], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[42:45], v0
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[46:49], v0
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v0, v92, v92
.Ltmp53:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[42:49], v[33:40], v[25:32]
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v84, v84
	v_max_f32_e32 v43, v88, v88
	v_max3_f32 v44, v82, v87, v83
	v_max_f32_e32 v33, v96, v96
	v_max3_f32 v34, v90, v95, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v43, v42
	v_max3_f32 v43, v85, v81, v86
	v_max_f32_e32 v0, v33, v0
	v_max3_f32 v33, v93, v89, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v42, v43, v44, v42
	v_max3_f32 v0, v33, v34, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_e32 v33, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v33, v33 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v0, v0, v33 :: v_dual_max_f32 v43, v43, v43
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v33, v0 :: v_dual_max_f32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v33, v33 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v0, v0, v33 :: v_dual_max_f32 v43, v43, v43
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v0, v0, v33
.Ltmp65:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v169, v169
	v_max_f32_e32 v169, v33, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v93, v169
	v_sub_f32_e32 v37, v89, v169
	v_sub_f32_e32 v36, v96, v169
	v_sub_f32_e32 v35, v95, v169
	v_sub_f32_e32 v39, v91, v169
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v37, 0, v37, s33
	v_cndmask_b32_e64 v35, 0, v35, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v33, v33, v37 :: v_dual_mov_b32 v52, v51
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	v_max_f32_e32 v42, v42, v43
.Ltmp69:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v43, v170, v170
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v52
.Ltmp71:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v52, v171, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v170, v43, v42 :: v_dual_max_f32 v171, v52, v51
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v34, v94, v169 :: v_dual_sub_f32 v43, v85, v170
	v_dual_sub_f32 v38, v90, v169 :: v_dual_sub_f32 v45, v87, v170
	v_dual_sub_f32 v40, v92, v169 :: v_dual_sub_f32 v47, v81, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v37, v38
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v77, v171
	v_sub_f32_e32 v56, v73, v171
	v_sub_f32_e32 v58, v75, v171
	v_dual_sub_f32 v46, v88, v170 :: v_dual_sub_f32 v53, v78, v171
	v_dual_sub_f32 v50, v84, v170 :: v_dual_sub_f32 v57, v74, v171
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s15
	v_cndmask_b32_e64 v37, 0, v37, s31
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v44, v86, v170 :: v_dual_sub_f32 v55, v80, v171
	v_dual_sub_f32 v48, v82, v170 :: v_dual_sub_f32 v59, v76, v171
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp72:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v37
.Ltmp73:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v39
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v49, v83, v170
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v50
	v_exp_f32_e32 v38, v59
.Ltmp74:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp75:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v175
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s28
	v_cndmask_b32_e64 v39, 0, v39, s19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v38, 0, v38, s29
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v37
.Ltmp77:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s27
.Ltmp78:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_add_f32 v34, v35, v36 :: v_dual_mov_b32 v35, v118
.Ltmp79:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v57
	v_exp_f32_e32 v37, v58
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
.Ltmp82:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v37, 0, v37, s30
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v54, v79, v171 :: v_dual_add_f32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v118, v33, v34
.Ltmp89:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v52
	v_exp_f32_e32 v34, v56
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v34, 0, v34, s35
.Ltmp90:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp91:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s17
.Ltmp92:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v36
.Ltmp93:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp95:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v37
.Ltmp97:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v55
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp98:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp99:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v49
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v36, v37
.Ltmp101:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v172
	v_mov_b32_e32 v36, v119
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp102:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp103:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s20
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp104:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
.Ltmp105:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v119, v33, v34
.Ltmp113:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v43
	v_exp_f32_e32 v34, v47
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v34, 0, v34, s24
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp115:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s9
.Ltmp116:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v37
.Ltmp117:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp119:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp121:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v46
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp122:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp123:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v67
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v34, v37, v38 :: v_dual_mov_b32 v37, v120
.Ltmp125:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s22
.Ltmp126:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
.Ltmp128:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v120, v33, v34
.Ltmp135:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v61
	v_exp_f32_e32 v34, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s12
	v_cndmask_b32_e64 v34, 0, v34, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp136:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp137:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v62
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp138:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v38
.Ltmp139:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v63
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s8
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp143:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s7
.Ltmp144:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v34, v38, v39
	v_mov_b32_e32 v38, v121
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v121, v33, v34
.Ltmp151:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v175, v175
	v_max_f32_e32 v0, v33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v33, v175, v0
	v_mov_b32_e32 v175, v0
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v33, 0, v33, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v174
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v118, v35, v33 :: v_dual_max_f32 v33, v174, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v33, v42
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v34, v174, v33
	v_mov_b32_e32 v174, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v34, v34
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v34, 0, v34, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v120, v37, v34
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v155, v155
	v_max_f32_e32 v34, v34, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v35, v155, v34
	v_mov_b32_e32 v155, v34
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v35, 0, v35, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v154
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v119, v36, v35
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v154, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v60
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v36, v154, v35
	v_mov_b32_e32 v154, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v36, v36
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v36, 0, v36, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v121, v38, v36
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v35, off, off offset:200
	scratch_load_b32 v63, off, off offset:184
	scratch_load_b32 v0, off, off offset:188
	scratch_load_b32 v74, off, off offset:192
	scratch_load_b32 v75, off, off offset:196
.LBB0_7:                                ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(2)
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v33, 0x80, v35
	s_waitcnt vmcnt(1)
	v_lshl_add_u32 v34, v74, 3, 0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, 0, v75
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s81, s81, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	ds_store_2addr_b64 v35, v[118:119], v[120:121] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v9
	v_div_scale_f32 v35, null, v0, v0, v10
	v_div_scale_f32 v37, null, v0, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v39, null, v0, v0, v12
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v13
	v_div_scale_f32 v43, null, v0, v0, v14
	v_rcp_f32_e32 v48, v39
	v_rcp_f32_e32 v49, v41
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v34, vcc_lo, v9, v0, v9
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s0, v10, v0, v10
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s1, v11, v0, v11
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_scale_f32 v40, s3, v12, v0, v12
	v_fma_f32 v59, -v43, v50, 1.0
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_mul_f32 v55, v36, v46
	v_mul_f32_e32 v56, v38, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v50, v59, v50
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s4, v13, v0, v13
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v15
	v_mul_f32_e32 v62, v42, v49
	v_fma_f32 v61, -v39, v57, v40
	v_dual_fmac_f32 v55, v59, v46 :: v_dual_fmac_f32 v56, v60, v47
	v_fma_f32 v33, -v33, v54, v34
	v_rcp_f32_e32 v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v61, v48
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v56, v38
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v51, s5, v14, v0, v14
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_scale_f32 v52, null, v0, v0, v16
	v_div_fixup_f32 v10, v34, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v51, v50 :: v_dual_fmac_f32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_div_fixup_f32 v12, v33, v0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v33, -v43, v34, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v11, v35, v0, v11
	v_div_scale_f32 v35, s1, v15, v0, v15
	v_fmac_f32_e32 v34, v33, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v37, 1.0
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v33, v35, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s3, v16, v0, v16
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v25, v0, v25
	v_fmac_f32_e32 v62, v58, v49
	v_div_scale_f32 v47, null, v0, v0, v28
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	v_div_fixup_f32 v13, v39, v0, v13
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v34, v0, v14
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_div_scale_f32 v42, null, v0, v0, v27
	v_mul_f32_e32 v35, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v36, v35, v45
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v44, s1, v26, v0, v26
	v_div_fmas_f32 v34, v34, v37, v43
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v38, v40 :: v_dual_mul_f32 v38, v44, v41
	v_div_fixup_f32 v15, v33, v0, v15
	v_div_fixup_f32 v16, v34, v0, v16
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v42, v39, 1.0
	v_fma_f32 v34, -v46, v38, v44
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v36, s3, v27, v0, v27
	v_dual_fmac_f32 v39, v43, v39 :: v_dual_fmac_f32 v38, v34, v41
	v_fma_f32 v43, -v47, v37, 1.0
	v_div_scale_f32 v45, null, v0, v0, v29
	v_div_fmas_f32 v33, v33, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v36, v39 :: v_dual_fmac_f32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v40, s4, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v43
	v_div_fixup_f32 v25, v33, v0, v25
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v46, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v44, v39
	v_fma_f32 v44, -v43, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v35, v49, v35 :: v_dual_fmac_f32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_fma_f32 v38, -v47, v46, v40
	v_div_scale_f32 v41, s1, v29, v0, v29
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v36
	v_fmac_f32_e32 v46, v38, v37
	v_mul_f32_e32 v36, v41, v35
	v_div_scale_f32 v38, s5, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v39, v34
	v_div_scale_f32 v42, null, v0, v0, v31
	v_fma_f32 v39, -v45, v36, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v38, v48
	v_fma_f32 v34, -v47, v46, v40
	v_rcp_f32_e32 v40, v42
	v_div_scale_f32 v47, null, v0, v0, v32
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v39, -v43, v44, v38
	v_div_fixup_f32 v27, v33, v0, v27
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_fmac_f32_e32 v44, v39, v48
	v_div_fmas_f32 v34, v34, v37, v46
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v35, -v43, v44, v38
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_scale_f32 v45, null, v0, v0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s3, v31, v0, v31
	v_fma_f32 v39, -v47, v37, 1.0
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v38, null, v0, v0, v17
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	v_fmac_f32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v41, v38
	v_mul_f32_e32 v36, v34, v40
	v_div_scale_f32 v39, s1, v32, v0, v32
	v_div_fixup_f32 v29, v33, v0, v29
	v_div_scale_f32 v48, null, v0, v0, v20
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v35, v46, v35 :: v_dual_fmac_f32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v43, v41
	v_div_fmas_f32 v34, v34, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v18, v0, v18
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	v_fma_f32 v46, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v19, v0, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v17, v0, v17
	v_fma_f32 v36, -v47, v44, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v33, v41
	v_div_fmas_f32 v36, v36, v37, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v32, v36, v0, v32
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v21
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v20, v0, v20
	v_fma_f32 v38, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v39, v36, v50 :: v_dual_fmac_f32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v17, v33, v0, v17
	v_fma_f32 v38, -v42, v44, v46
	v_div_scale_f32 v40, null, v0, v0, v22
	v_div_fixup_f32 v18, v35, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v19, v38, v0, v19
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v21, v0, v21
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v24
	v_div_fixup_f32 v20, v36, v0, v20
	v_div_scale_f32 v35, s4, v22, v0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_scale_f32 v34, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v21, v33, v0, v21
	v_fma_f32 v33, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v36, s1, v23, v0, v23
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v24, v0, v24
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v0, v2
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_fma_f32 v46, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_rcp_f32_e32 v50, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v35, v0, v22
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v38, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	v_fma_f32 v33, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v36, v37
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v23, v35, v0, v23
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fixup_f32 v24, v33, v0, v24
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	v_div_fixup_f32 v1, v34, v0, v1
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	v_rcp_f32_e32 v39, v35
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v0, v0, v7
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v33, -v34, v36, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v43, v38, v42
	v_mul_f32_e32 v49, v33, v36
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_fma_f32 v47, -v40, v43, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v52, v48, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v40, v43, v38
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v40, -v35, v51, v45
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s69, v148
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v9, s0
	v_cndmask_b32_e64 v9, 0, v10, s0
	v_cndmask_b32_e64 v10, 0, v11, s0
	v_cndmask_b32_e64 v11, 0, v12, s0
	v_cndmask_b32_e64 v12, 0, v13, s0
	v_cndmask_b32_e64 v13, 0, v14, s0
	v_cndmask_b32_e64 v14, 0, v15, s0
	v_cndmask_b32_e64 v15, 0, v16, s0
	v_cndmask_b32_e64 v16, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s69, v63
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s69, v237
	v_cmp_gt_i32_e64 s1, s69, v160
	v_cmp_gt_i32_e64 s3, s69, v131
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v148, 2
	v_add_lshl_u32 v34, v32, v244, 2
	v_add_lshl_u32 v35, v32, v243, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v8, v33, s[80:83], 0 offen
	buffer_store_b32 v9, v34, s[80:83], 0 offen
	buffer_store_b32 v10, v35, s[80:83], 0 offen
	v_add_lshl_u32 v8, v32, v242, 2
	v_add_lshl_u32 v9, v32, v241, 2
	v_add_lshl_u32 v10, v32, v240, 2
	v_add_lshl_u32 v33, v32, v239, 2
	v_add_lshl_u32 v34, v32, v238, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x4
	buffer_store_b32 v11, v8, s[80:83], 0 offen
	buffer_store_b32 v12, v9, s[80:83], 0 offen
	buffer_store_b32 v13, v10, s[80:83], 0 offen
	buffer_store_b32 v14, v33, s[80:83], 0 offen
	buffer_store_b32 v15, v34, s[80:83], 0 offen
	v_add_lshl_u32 v8, v32, v237, 2
	v_add_lshl_u32 v9, v32, v236, 2
	v_add_lshl_u32 v10, v32, v235, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v32, v234, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_add_lshl_u32 v12, v32, v116, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v8, s[80:83], 0 offen
	buffer_store_b32 v25, v9, s[80:83], 0 offen
	buffer_store_b32 v26, v10, s[80:83], 0 offen
	v_add_lshl_u32 v9, v32, v157, 2
	v_add_lshl_u32 v10, v32, v158, 2
	v_cndmask_b32_e32 v8, 0x80000000, v12, vcc_lo
	buffer_store_b32 v27, v11, s[80:83], 0 offen
	v_add_lshl_u32 v11, v32, v159, 2
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	buffer_store_b32 v28, v8, s[80:83], 0 offen
	v_add_lshl_u32 v8, v32, v160, 2
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v29, v9, s[80:83], 0 offen
	v_add_lshl_u32 v9, v32, v161, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v30, v10, s[80:83], 0 offen
	buffer_store_b32 v31, v11, s[80:83], 0 offen
	buffer_store_b32 v17, v8, s[80:83], 0 offen
	v_add_lshl_u32 v8, v32, v162, 2
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_add_lshl_u32 v10, v32, v163, 2
	v_add_lshl_u32 v11, v32, v140, 2
	v_add_lshl_u32 v12, v32, v149, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v18, v9, s[80:83], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v10 :: v_dual_cndmask_b32 v10, 0x80000000, v11
	v_cndmask_b32_e32 v11, 0x80000000, v12, vcc_lo
	buffer_store_b32 v19, v8, s[80:83], 0 offen
	v_add_lshl_u32 v8, v32, v164, 2
	s_clause 0x2
	buffer_store_b32 v20, v9, s[80:83], 0 offen
	buffer_store_b32 v21, v10, s[80:83], 0 offen
	buffer_store_b32 v22, v11, s[80:83], 0 offen
	v_add_lshl_u32 v9, v32, v117, 2
	v_add_lshl_u32 v10, v32, v131, 2
	v_add_lshl_u32 v11, v32, v192, 2
	v_add_lshl_u32 v12, v32, v173, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v23, v8, s[80:83], 0 offen
	buffer_store_b32 v24, v9, s[80:83], 0 offen
	buffer_store_b32 v1, v10, s[80:83], 0 offen
	buffer_store_b32 v2, v11, s[80:83], 0 offen
	buffer_store_b32 v3, v12, s[80:83], 0 offen
	v_add_lshl_u32 v1, v32, v230, 2
	v_add_lshl_u32 v2, v32, v228, 2
	v_add_lshl_u32 v3, v32, v227, 2
	v_add_lshl_u32 v8, v32, v233, 2
	v_add_lshl_u32 v9, v32, v229, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[80:83], 0 offen
	buffer_store_b32 v5, v2, s[80:83], 0 offen
	buffer_store_b32 v6, v3, s[80:83], 0 offen
	buffer_store_b32 v7, v8, s[80:83], 0 offen
	buffer_store_b32 v0, v9, s[80:83], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp152:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 208
		.amdhsa_kernarg_size 152
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 208
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19964
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 208
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.byte	5                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
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
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 208
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 51
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
