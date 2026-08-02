	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s22, s[0:1], 0x84
	s_load_b32 s50, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshlrev_b32_e32 v2, 4, v0
	v_lshrrev_b32_e32 v32, 1, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x0
	s_load_b64 s[6:7], s[0:1], 0x7c
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s20, s2, 5
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v56, 16, v2
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s51, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s20, v32
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s20, s51
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v69, 16, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 0x200, v5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s21, 0, v69
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[57:58], null, s50, v32, v[56:57]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s5, s50, v56
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s20, s7
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s20, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s22
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, s50, s8, v[57:58]
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v4, 1, v0
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s9, s2, 32
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s22
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s9, s9, 0x200
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s10, s10, 0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s9, s9, 31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s11, s9, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s68, s10, 0x7fffffe0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s11, s11, 27
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[15:18], v1, s[12:15], 0 offen
	v_and_or_b32 v6, v4, 30, v3
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 15, v0
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s69, s9, s11
	s_mov_b32 s9, 0
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s69, s69, 31
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_lshlrev_b32_e32 v70, 2, v6
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v14, v32, 16, v1
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s68, s69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v72, 4, v70
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, s20, v14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v19
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v6, v70, v15
	ds_bpermute_b32 v7, v70, v16
	ds_bpermute_b32 v8, v70, v17
	ds_bpermute_b32 v10, v70, v18
	ds_bpermute_b32 v9, v72, v15
	ds_bpermute_b32 v11, v72, v16
	ds_bpermute_b32 v12, v72, v17
	ds_bpermute_b32 v13, v72, v18
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v15, 0x5410
	v_mov_b32_e32 v16, 0x7632
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v15, 0x1054, v15, s21
	v_cndmask_b32_e64 v16, 0x3276, v16, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v15, v15, 8, v15
	v_lshl_or_b32 v16, v16, 8, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v15, 0x540054, v15
	v_and_b32_e32 v16, 0x760076, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v15, v15, 4, v15
	v_lshl_or_b32 v16, v16, 4, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v67, 0x5040504, v15
	v_and_b32_e32 v68, 0x7060706, v16
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr68
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s39, s[0:1], 0x64
	v_or_b32_e32 v71, s8, v14
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_lshlrev_b32_e32 v14, 1, v71
	v_or_b32_e32 v85, s51, v3
	v_mov_b32_e32 v3, 0x5410
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x68
	v_dual_mov_b32 v36, 0x7632 :: v_dual_and_b32 v35, 7, v0
	v_dual_mov_b32 v38, 0x7531 :: v_dual_add_nc_u32 v5, s22, v5
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v61, v7, v11, s21
	v_cndmask_b32_e64 v60, v6, v9, s21
	v_cndmask_b32_e64 v65, v11, v7, s21
	v_cndmask_b32_e64 v64, v9, v6, s21
	v_dual_mov_b32 v133, 0xff800000 :: v_dual_and_b32 v6, 56, v0
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v7, 0x3f0, v2
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s53, s13, 0xffff
	s_mov_b32 s52, s12
	v_mov_b32_e32 v37, 0x6420
	buffer_load_u16 v33, v14, s[52:55], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v14, 1, v0
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v2, 48, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v58, v8, v12, s21
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v14
	v_lshlrev_b32_e32 v9, 3, v0
	v_cndmask_b32_e64 v62, v12, v8, s21
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v8, 24, v0
	v_dual_cndmask_b32 v42, 0x7632, v3 :: v_dual_lshlrev_b32 v39, 2, v32
	v_mov_b32_e32 v132, 0xff800000
	v_bfe_i32 v0, v0, 3, 1
	v_dual_mov_b32 v31, v24 :: v_dual_lshlrev_b32 v34, 3, v35
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v41, 1, v6
	v_dual_mov_b32 v26, v24 :: v_dual_lshlrev_b32 v43, 6, v14
	v_cndmask_b32_e64 v44, 0x1054, v3, s21
	v_cndmask_b32_e64 v45, 0x3276, v36, s21
	v_xor_b32_e32 v46, v2, v6
	v_dual_mov_b32 v28, v24 :: v_dual_and_b32 v47, 48, v9
	v_dual_mov_b32 v30, v24 :: v_dual_cndmask_b32 v37, 0x7531, v37
	v_dual_mov_b32 v21, v24 :: v_dual_cndmask_b32 v36, 0x5410, v36
	v_dual_mov_b32 v23, v24 :: v_dual_cndmask_b32 v38, 0x6420, v38
	v_lshl_or_b32 v42, v42, 8, v42
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v4, 24, v4
	s_add_i32 s0, s3, s0
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v87, s6, v5
	v_xor_b32_e32 v88, v7, v8
	v_dual_mov_b32 v19, v24 :: v_dual_and_b32 v48, 0x210, v0
	v_mov_b32_e32 v22, v24
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s6, s0, 3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s39, v34
	v_and_or_b32 v90, v39, 60, v43
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[66:67], null, s39, v41, v[34:35]
	v_lshl_or_b32 v34, v44, 8, v44
	v_lshl_or_b32 v39, v45, 8, v45
	v_lshl_or_b32 v91, v35, 9, v46
	v_lshl_or_b32 v35, v35, 6, v47
	v_and_b32_e32 v41, 0x760032, v42
	v_lshl_or_b32 v36, v36, 8, v36
	v_lshl_or_b32 v37, v37, 8, v37
	v_lshl_or_b32 v38, v38, 8, v38
	v_dual_mov_b32 v17, v24 :: v_dual_add_nc_u32 v86, s7, v5
	v_lshl_or_b32 v89, v1, 5, v4
	v_dual_mov_b32 v8, v24 :: v_dual_and_b32 v39, 0x760076, v39
	v_dual_mov_b32 v14, v24 :: v_dual_and_b32 v37, 0x750031, v37
	v_dual_mov_b32 v15, v24 :: v_dual_and_b32 v34, 0x540054, v34
	v_dual_mov_b32 v5, v24 :: v_dual_and_b32 v36, 0x760032, v36
	v_dual_mov_b32 v7, v24 :: v_dual_and_b32 v38, 0x750031, v38
	v_xor_b32_e32 v49, 8, v88
	v_xor_b32_e32 v98, v35, v48
	v_lshl_or_b32 v35, v41, 4, v41
	v_mul_lo_u32 v32, s19, v32
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v73, 7, v56
	v_or_b32_e32 v74, 6, v56
	v_or_b32_e32 v75, 5, v56
	v_or_b32_e32 v76, 4, v56
	v_or_b32_e32 v77, 11, v56
	v_or_b32_e32 v78, 10, v56
	v_or_b32_e32 v79, 9, v56
	v_or_b32_e32 v80, 8, v56
	v_or_b32_e32 v81, 15, v56
	v_or_b32_e32 v82, 14, v56
	v_or_b32_e32 v83, 13, v56
	v_or_b32_e32 v84, 12, v56
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v59, v10, v13, s21
	v_cndmask_b32_e64 v63, v13, v10, s21
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v99, 0, v49
	v_dual_mov_b32 v2, v24 :: v_dual_and_b32 v107, 0x7060302, v35
	v_xor_b32_e32 v50, 8, v89
	v_xor_b32_e32 v51, 16, v89
	v_xor_b32_e32 v52, 24, v89
	v_xor_b32_e32 v42, 0x90, v91
	v_xor_b32_e32 v43, 0x120, v91
	v_xor_b32_e32 v44, 0x1b0, v91
	v_lshl_or_b32 v34, v34, 4, v34
	v_lshl_or_b32 v39, v39, 4, v39
	v_xor_b32_e32 v41, 16, v98
	v_xor_b32_e32 v45, 32, v98
	v_xor_b32_e32 v46, 48, v98
	v_xor_b32_e32 v47, 0x420, v98
	v_xor_b32_e32 v48, 0x430, v98
	v_xor_b32_e32 v49, 0x410, v98
	v_lshl_or_b32 v35, v36, 4, v36
	v_lshl_or_b32 v36, v37, 4, v37
	v_lshl_or_b32 v37, v38, 4, v38
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s3, s16, 0x3fb8aa3b
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s1, s18, s1
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s6, s17, s6
	v_dual_mov_b32 v16, v24 :: v_dual_mov_b32 v93, v87
	v_dual_mov_b32 v18, v24 :: v_dual_mov_b32 v95, v86
	v_dual_mov_b32 v20, v24 :: v_dual_mov_b32 v97, v86
	v_dual_mov_b32 v9, v24 :: v_dual_mov_b32 v92, v87
	v_dual_mov_b32 v11, v24 :: v_dual_mov_b32 v94, v87
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v101, 0, v51
	v_dual_mov_b32 v13, v24 :: v_dual_mov_b32 v96, v86
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v105, 0, v43
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v100, 0, v50
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v102, 0, v52
	v_dual_mov_b32 v4, v24 :: v_dual_and_b32 v67, 0x5040504, v34
	v_dual_mov_b32 v6, v24 :: v_dual_add_nc_u32 v109, 0, v45
	v_dual_mov_b32 v40, v24 :: v_dual_add_nc_u32 v111, 0, v47
	v_xor_b32_e32 v103, 64, v90
	v_dual_mov_b32 v131, 0xff800000 :: v_dual_add_nc_u32 v104, 0, v42
	v_add_nc_u32_e32 v106, 0, v44
	v_and_b32_e32 v68, 0x7060706, v39
	v_add_nc_u32_e32 v108, 0, v41
	v_add_nc_u32_e32 v110, 0, v46
	v_add_nc_u32_e32 v112, 0, v48
	v_add_nc_u32_e32 v113, 0, v49
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v114, v32, v56
	v_add_nc_u32_e32 v116, v32, v75
	v_add_nc_u32_e32 v117, v32, v74
	v_add_nc_u32_e32 v118, v32, v73
	v_add_nc_u32_e32 v119, v32, v80
	v_add_nc_u32_e32 v120, v32, v79
	v_add_nc_u32_e32 v121, v32, v78
	v_add_nc_u32_e32 v122, v32, v77
	v_add_nc_u32_e32 v123, v32, v84
	v_add_nc_u32_e32 v124, v32, v83
	v_add_nc_u32_e32 v125, v32, v82
	v_add_nc_u32_e32 v126, v32, v81
	v_and_b32_e32 v127, 0x7060302, v35
	v_and_b32_e32 v128, 0x7050301, v36
	v_and_b32_e32 v129, 0x7050301, v37
	s_mov_b32 s40, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s7, s19, s20
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_i32 s73, s1, s6
	s_lshl_b32 s70, s39, 1
	s_mul_i32 s71, s39, 3
	s_mov_b32 s72, 0x76543210
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s66, s54
	s_mov_b32 s67, s55
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s65, s11, 0xffff
	s_mov_b32 s60, s14
	s_mov_b32 s64, s10
	s_mov_b32 s52, s8
	s_mov_b32 s53, s9
	s_mov_b32 s61, s15
	s_add_i32 s73, s73, s7
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v130, s3, v33 :: v_dual_add_nc_u32 v115, v32, v76
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s1, s68, s51
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v42, 0, v88
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[158:159], null, s1, s50, v[57:58]
	v_mad_u64_u32 v[159:160], null, s1, s39, v[66:67]
	v_mov_b32_e32 v149, v40
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v32, s40 :: v_dual_add_nc_u32 v43, 0, v89
	v_mov_b32_e32 v33, s41
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v158, 0x80000000, v158, s5
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s42 :: v_dual_mov_b32 v35, s43
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v162, 1, v159
	v_add_lshl_u32 v163, v159, s39, 1
	v_add_lshl_u32 v164, v159, s70, 1
	v_add_lshl_u32 v165, v159, s71, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[158:161], v158, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v36, s44 :: v_dual_mov_b32 v37, s45
	v_dual_mov_b32 v38, s46 :: v_dual_mov_b32 v39, s47
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v191, 0x80000000, v162, s0
	v_cndmask_b32_e64 v162, 0x80000000, v164, s0
	v_cndmask_b32_e64 v192, 0x80000000, v163, s0
	v_cndmask_b32_e64 v163, 0x80000000, v165, s0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v45, 1, v56
	v_or_b32_e32 v44, 2, v56
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v47, s68, v77
	v_or_b32_e32 v51, s68, v78
	v_or_b32_e32 v50, s68, v79
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v41, 3, v56
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v46, s68, v56
	v_or_b32_e32 v49, s68, v80
	v_or_b32_e32 v48, s68, v73
	v_or_b32_e32 v54, s68, v74
	v_or_b32_e32 v45, s68, v45
	v_or_b32_e32 v52, s68, v76
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v47, v94
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v47, v97
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v51, v93
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v51, v96
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v50, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v50, v95
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v44, s68, v44
	v_or_b32_e32 v53, s68, v75
	v_or_b32_e32 v55, s68, v81
	v_or_b32_e32 v134, s68, v82
	v_or_b32_e32 v135, s68, v83
	v_or_b32_e32 v136, s68, v84
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v133, v133, v133 :: v_dual_add_nc_u32 v40, 1, v114
	v_dual_max_f32 v153, v131, v131 :: v_dual_add_nc_u32 v190, 2, v114
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, s68, v41
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v46, v87
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v46, v86
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v49, v87
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s13, v49, v86
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v48, v94
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s15, v48, v97
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v54, v93
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s17, v54, v96
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s36, v45, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s37, v45, v95
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s20, v52, v87
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v52, v86
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s25, s73, s68
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v44, v93
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s35, v44, v96
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s10, s10, s11
	s_and_b32 s8, s8, s9
	s_and_b32 s6, s6, s7
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_add_lshl_u32 v46, s25, v121, 1
	v_add_lshl_u32 v47, s25, v122, 1
	v_add_lshl_u32 v51, s25, v115, 1
	v_add_lshl_u32 v50, s25, v116, 1
	v_add_lshl_u32 v49, s25, v117, 1
	v_add_lshl_u32 v48, s25, v118, 1
	v_add_lshl_u32 v54, s25, v123, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v53, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v53, v95
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v53, s25, v124, 1
	v_add_lshl_u32 v52, s25, v125, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v55, v94
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s24, v55, v97
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v55, s25, v126, 1
	v_add_lshl_u32 v40, s25, v40, 1
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s26, v134, v96
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v135, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s28, v135, v95
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v136, v87
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v136, v86
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v41, v94
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v41, v97
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s3, s12, s13
	s_and_b32 s11, s16, s17
	s_and_b32 s12, s14, s15
	s_and_b32 s15, s4, s10
	s_and_b32 s10, s4, s8
	s_and_b32 s8, s4, s6
	s_and_b32 s6, s36, s37
	s_and_b32 s7, s20, s22
	s_and_b32 s14, s4, s11
	s_and_b32 s11, s4, s6
	v_or_b32_e32 v148, 18, v85
	v_or_b32_e32 v150, 20, v85
	v_or_b32_e32 v151, 22, v85
	v_or_b32_e32 v152, 24, v85
	v_or_b32_e32 v154, 26, v85
	v_or_b32_e32 v155, 28, v85
	v_or_b32_e32 v156, 30, v85
	s_and_b32 s17, s4, s7
	s_and_b32 s7, s34, s35
	v_or_b32_e32 v140, 2, v85
	v_or_b32_e32 v141, 4, v85
	v_or_b32_e32 v142, 6, v85
	v_or_b32_e32 v143, 8, v85
	v_or_b32_e32 v144, 10, v85
	v_or_b32_e32 v145, 12, v85
	v_or_b32_e32 v146, 14, v85
	v_or_b32_e32 v147, 16, v85
	s_and_b32 s9, s18, s19
	s_and_b32 s19, s29, s30
	s_and_b32 s20, s27, s28
	s_and_b32 s23, s23, s24
	s_and_b32 s16, s4, s3
	s_and_b32 s13, s4, s12
	s_and_b32 s12, s31, s33
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v40, 0x80000000, v40, s11
	v_cndmask_b32_e64 v46, 0x80000000, v46, s10
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s4, s7
	s_and_b32 s1, s4, s1
	s_and_b32 s18, s4, s9
	s_and_b32 s3, s4, s19
	s_and_b32 s19, s4, s20
	s_and_b32 s20, s4, s23
	s_and_b32 s6, s4, s12
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v148, v148, s68, 1
	v_add_lshl_u32 v150, v150, s68, 1
	v_add_lshl_u32 v151, v151, s68, 1
	v_add_lshl_u32 v152, v152, s68, 1
	v_add_lshl_u32 v154, v154, s68, 1
	v_add_lshl_u32 v155, v155, s68, 1
	v_add_lshl_u32 v156, v156, s68, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v47, 0x80000000, v47, s8
	v_cndmask_b32_e64 v51, 0x80000000, v51, s17
	v_cndmask_b32_e64 v50, 0x80000000, v50, s18
	v_cndmask_b32_e64 v49, 0x80000000, v49, s14
	v_cndmask_b32_e64 v48, 0x80000000, v48, s13
	v_cndmask_b32_e64 v54, 0x80000000, v54, s3
	v_cndmask_b32_e64 v53, 0x80000000, v53, s19
	v_cndmask_b32_e64 v55, 0x80000000, v55, s20
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v138, s68, v85, 1
	v_add_lshl_u32 v140, v140, s68, 1
	v_add_lshl_u32 v141, v141, s68, 1
	v_add_lshl_u32 v142, v142, s68, 1
	v_add_lshl_u32 v143, v143, s68, 1
	v_add_lshl_u32 v144, v144, s68, 1
	v_add_lshl_u32 v145, v145, s68, 1
	v_add_lshl_u32 v146, v146, s68, 1
	v_add_lshl_u32 v147, v147, s68, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v139.l, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s68, s68, 32
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v41.l, v139.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v44.h, v139.l
	v_mov_b16_e64 v45.h, v139.l
	v_mov_b16_e64 v135.h, v139.l
	v_mov_b16_e64 v136.h, v139.l
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v42, v[158:159]
	ds_store_b64 v99, v[160:161]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[182:185], v43 offset1:1
	ds_load_2addr_stride64_b64 v[186:189], v100 offset1:1
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[178:181], v162, s[64:67], 0 offen
	buffer_load_b128 v[174:177], v163, s[64:67], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[182:183], v[64:65], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[184:185], v[64:65], v[32:39] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[32:35], v101 offset1:1
	ds_load_2addr_stride64_b64 v[36:39], v102 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[186:187], v[62:63], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[188:189], v[62:63], v[166:173] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[32:33], v[60:61], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[34:35], v[60:61], v[166:173] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[36:37], v[58:59], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[38:39], v[58:59], v[166:173] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[32:35], v192, s[64:67], 0 offen
	buffer_load_b128 v[36:39], v191, s[64:67], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v182, v158
	v_cvt_f32_i32_e32 v184, v160
	v_cvt_f32_i32_e32 v186, v162
	v_cvt_f32_i32_e32 v188, v173
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v173, s25, v190, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v187, v163
	v_cvt_f32_i32_e32 v183, v159
	v_cvt_f32_i32_e32 v185, v161
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v137, 0, v98
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v163.l, v181.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v163.h, v177.l
	v_mov_b16_e64 v177.l, v181.h
	v_mov_b16_e64 v43.l, v178.l
	v_mov_b16_e64 v43.h, v174.l
	v_mov_b16_e64 v174.l, v178.h
	v_mov_b16_e64 v159.h, v175.l
	v_mov_b16_e64 v175.l, v179.h
	v_mov_b16_e64 v159.l, v179.l
	v_mov_b16_e64 v161.h, v176.l
	v_mov_b16_e64 v176.l, v180.h
	v_mov_b16_e64 v161.l, v180.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v180.l, v139.l
	v_mov_b16_e64 v178.l, v139.l
	v_mov_b16_e64 v179.l, v139.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v42.h, v32.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v32.l, v36.h
	v_mov_b16_e32 v42.l, v36.l
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v36, 3, v114
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v158.h, v33.l
	v_mov_b16_e32 v33.l, v37.h
	v_mov_b16_e64 v158.l, v37.l
	v_mov_b16_e64 v160.h, v34.l
	v_mov_b16_e32 v34.l, v38.h
	v_mov_b16_e64 v160.l, v38.l
	v_mov_b16_e64 v162.l, v39.l
	v_mov_b16_e64 v162.h, v35.l
	v_mov_b16_e32 v35.l, v39.h
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v37, s25, v114, 1
	v_add_lshl_u32 v38, s25, v119, 1
	v_add_lshl_u32 v39, s25, v120, 1
	v_add_lshl_u32 v36, s25, v36, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v134, v93
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v134, 0x80000000, v173, s7
	v_cndmask_b32_e64 v38, 0x80000000, v38, s16
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	v_cndmask_b32_e64 v39, 0x80000000, v39, s15
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s25, s26
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s6
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s4, s22
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v157, 0, v91
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v52, 0x80000000, v52, s9
	s_clause 0xf
	buffer_load_u16 v40, v40, s[56:59], 0 offen
	buffer_load_u16 v46, v46, s[56:59], 0 offen
	buffer_load_u16 v38, v38, s[56:59], 0 offen
	buffer_load_u16 v134, v134, s[56:59], 0 offen
	buffer_load_u16 v37, v37, s[56:59], 0 offen
	buffer_load_u16 v36, v36, s[56:59], 0 offen
	buffer_load_u16 v39, v39, s[56:59], 0 offen
	buffer_load_u16 v47, v47, s[56:59], 0 offen
	buffer_load_u16 v50, v50, s[56:59], 0 offen
	buffer_load_u16 v52, v52, s[56:59], 0 offen
	buffer_load_u16 v54, v54, s[56:59], 0 offen
	buffer_load_u16 v49, v49, s[56:59], 0 offen
	buffer_load_u16 v51, v51, s[56:59], 0 offen
	buffer_load_u16 v48, v48, s[56:59], 0 offen
	buffer_load_u16 v53, v53, s[56:59], 0 offen
	buffer_load_u16 v55, v55, s[56:59], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v181, v147, s[60:63], 0 offen
	buffer_load_u16 v148, v148, s[60:63], 0 offen
	buffer_load_u16 v189, v138, s[60:63], 0 offen
	buffer_load_u16 v190, v140, s[60:63], 0 offen
	buffer_load_u16 v191, v143, s[60:63], 0 offen
	buffer_load_u16 v192, v144, s[60:63], 0 offen
	buffer_load_u16 v193, v141, s[60:63], 0 offen
	buffer_load_u16 v194, v145, s[60:63], 0 offen
	buffer_load_u16 v195, v146, s[60:63], 0 offen
	buffer_load_u16 v196, v142, s[60:63], 0 offen
	buffer_load_u16 v152, v152, s[60:63], 0 offen
	buffer_load_u16 v154, v154, s[60:63], 0 offen
	buffer_load_u16 v150, v150, s[60:63], 0 offen
	buffer_load_u16 v155, v155, s[60:63], 0 offen
	buffer_load_u16 v156, v156, s[60:63], 0 offen
	buffer_load_u16 v151, v151, s[60:63], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v173, v32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	s_waitcnt vmcnt(24)
	v_mov_b16_e64 v47.h, v139.l
	v_mov_b16_e64 v141.h, v139.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v157, v[42:43], v[173:174] offset1:8
	v_dual_mov_b32 v174, v33 :: v_dual_mul_f32 v157, v130, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v46.h, v139.l
	v_mov_b16_e64 v142.h, v139.l
	v_mov_b16_e64 v143.h, v139.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v104, v[158:159], v[174:175] offset1:8
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v159, v130, v170
	v_mul_f32_e32 v170, v130, v185
	v_mul_f32_e32 v158, v130, v187
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v144.h, v139.l
	v_mov_b16_e64 v134.h, v139.l
	v_mov_b16_e64 v138.h, v139.l
	v_mov_b16_e64 v140.h, v139.l
	v_mov_b16_e64 v145.h, v139.l
	v_mov_b16_e64 v146.h, v139.l
	v_mov_b16_e64 v147.h, v139.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v169, v130, v169
	v_mul_f32_e32 v168, v130, v168
	v_mul_f32_e32 v164, v130, v164
	v_mul_f32_e32 v165, v130, v165
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v175, v34
	ds_store_2addr_b64 v105, v[160:161], v[175:176] offset1:8
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v32.h, 0xff80, v40.l, s11
	v_cndmask_b16 v32.l, 0xff80, v37.l, s1
	v_cndmask_b16 v36.h, 0xff80, v36.l, s6
	v_cndmask_b16 v36.l, 0xff80, v134.l, s7
	v_cndmask_b16 v37.h, 0xff80, v39.l, s15
	v_cndmask_b16 v37.l, 0xff80, v38.l, s16
	v_cndmask_b16 v38.h, 0xff80, v47.l, s8
	v_cndmask_b16 v38.l, 0xff80, v46.l, s10
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v33, v36, v32, v107
	v_perm_b32 v43, v36, v32, v127
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v139.h, v32.l
	v_mov_b16_e64 v32.l, v139.l
	s_waitcnt vmcnt(23)
	v_cndmask_b16 v39.h, 0xff80, v50.l, s18
	s_waitcnt vmcnt(19)
	v_cndmask_b16 v39.l, 0xff80, v51.l, s17
	s_waitcnt vmcnt(18)
	v_cndmask_b16 v40.h, 0xff80, v48.l, s13
	v_cndmask_b16 v40.l, 0xff80, v49.l, s14
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v49, v38, v37, v107
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v32
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v32, v38, v37, v127
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v179.h, v38.l
	v_mov_b16_e64 v38.l, v139.l
	v_mov_b16_e64 v178.h, v36.l
	v_mov_b16_e64 v36.l, v139.l
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v50, v40, v39, v127
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v180.h, v40.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v38
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v38, v40, v39, v107
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v40.l, v139.l
	s_waitcnt vmcnt(17)
	v_cndmask_b16 v48.h, 0xff80, v53.l, s19
	v_cndmask_b16 v48.l, 0xff80, v54.l, s3
	s_waitcnt vmcnt(16)
	v_cndmask_b16 v42.h, 0xff80, v55.l, s20
	v_cndmask_b16 v42.l, 0xff80, v52.l, s9
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v36
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v36, v177
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v177, v70, v33
	ds_bpermute_b32 v185, v72, v43
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v40
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v40, v42, v48, v107
	v_perm_b32 v51, v42, v48, v127
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v41.h, v42.l
	v_mov_b16_e64 v42.l, v139.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v180
	v_cmp_neq_f32_e64 s30, 0xff800000, v139
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v139.h, v37.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s13, s13, s26
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s28, 0xff800000, v42
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v42, 0, 1, s13
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s29, 0xff800000, v41
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v37.l, v139.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v139
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s14, s14, s27
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v55, v130, v167
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v167, v130, v184 :: v_dual_lshlrev_b32 v154, 16, v154
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v184, 16, v195
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v54, v130, v166
	v_mul_f32_e32 v166, v130, v171
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v171, v130, v172 :: v_dual_lshlrev_b32 v150, 16, v150
	v_mul_f32_e32 v172, v130, v188
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v188, v70, v40
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v43, 0, 1, s14
	v_lshlrev_b16 v40.h, 8, v42.l
	s_and_b32 s9, s9, s29
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v37
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s16, s16, s33
	v_cndmask_b32_e64 v161, 0, 1, s9
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_bpermute_b32 v49, v70, v49
	ds_bpermute_b32 v186, v72, v32
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v106, v[162:163], v[35:36] offset1:8
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v163, 0, 1, s16
	v_or_b16 v161.h, v43.l, v40.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v43, v185, v177, s21
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s15, s15, s31
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v52, v130, v182 :: v_dual_lshlrev_b32 v173, 16, v189
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v162, 0, 1, s15
	v_mov_b16_e64 v47.l, v163.l
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v163, 16, v43
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v187, v70, v38
	ds_bpermute_b32 v50, v72, v50
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e64 v46.l, v162.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v162, v177, v185, s21
	v_mul_f32_e32 v163, 0x3fb8aa3b, v163
	ds_bpermute_b32 v51, v72, v51
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v43, 0xffff0000, v43
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v178
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v175, 16, v162
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v163, v52, v173 :: v_dual_and_b32 v162, 0xffff0000, v162
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v139.h, v39.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s8, s24
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v53, v130, v183 :: v_dual_lshlrev_b32 v174, 16, v190
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v178, 16, v181
	v_lshlrev_b32_e32 v148, 16, v148
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v38, 0, 1, s8
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v176, 0x3fb8aa3b, v43
	v_mul_f32_e32 v175, 0x3fb8aa3b, v175
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v52, v186, v49, s21
	v_mul_f32_e32 v162, 0x3fb8aa3b, v162
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v179
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v39.l, v139.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s6, s6, s12
	s_and_b32 s7, s7, s22
	s_and_b32 s12, s1, s30
	s_and_b32 s1, s20, s28
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v139
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v139.h, v48.l
	v_mov_b16_e64 v48.l, v139.l
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v179, 16, v191
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v160, 0, 1, s1
	v_mov_b16_e32 v40.l, v38.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v176, v53, v174
	v_dual_fmac_f32 v175, v54, v178 :: v_dual_fmac_f32 v162, v55, v148
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_cndmask_b32_e64 v49, v49, v186, s21
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v55, 16, v52
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s11, s11, s23
	s_and_b32 s10, s10, s25
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v39
	v_cmp_neq_f32_e64 s20, 0xff800000, v48
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v41, 0, 1, s10
	v_mov_b16_e64 v44.l, v160.l
	v_lshlrev_b16 v40.l, 8, v40.l
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v53, v50, v187, s21
	v_dual_mul_f32 v55, 0x3fb8aa3b, v55 :: v_dual_lshlrev_b32 v148, 16, v49
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v52, 0xffff0000, v52
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s17, s17, s22
	s_and_b32 s18, s18, s23
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v139
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s19, s19, s20
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v180, 16, v192
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v32, 0, 1, s6
	v_cndmask_b32_e64 v34, 0, 1, s11
	v_cndmask_b32_e64 v37, 0, 1, s12
	v_mov_b16_e64 v45.l, v161.l
	v_or_b16 v160.h, v41.l, v40.l
	v_cndmask_b32_e64 v41, 0, 1, s18
	v_lshlrev_b16 v40.l, 8, v46.l
	v_lshlrev_b16 v44.l, 8, v44.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v50, v187, v50, s21
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v54, v51, v188, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v139, 0, 1, s19
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v55, v157, v179
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v52, 0x3fb8aa3b, v52 :: v_dual_lshlrev_b32 v157, 16, v53
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_and_b32 s20, s3, s22
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v152, 16, v152
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s7
	v_mov_b16_e32 v35.l, v37.l
	v_lshlrev_b16 v32.l, 8, v32.l
	v_lshlrev_b16 v32.h, 8, v34.l
	v_cndmask_b32_e64 v42, 0, 1, s17
	v_or_b16 v160.l, v47.l, v40.l
	v_lshlrev_b16 v40.l, 8, v41.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v51, v188, v51, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v173.h, v45.l, v44.l
	v_cndmask_b32_e64 v174, 0, 1, s20
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v52, v158, v180 :: v_dual_and_b32 v49, 0xffff0000, v49
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v177, 16, v50
	v_lshlrev_b32_e32 v158, 16, v54
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e64 v44.l, v139.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v139, 0x3fb8aa3b, v148
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v181, 16, v193
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v48.h, v33.l, v32.l
	v_or_b16 v48.l, v35.l, v32.h
	v_or_b16 v161.l, v42.l, v40.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v139, v159, v152 :: v_dual_and_b32 v50, 0xffff0000, v50
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v49, 0x3fb8aa3b, v49 :: v_dual_lshlrev_b32 v178, 16, v51
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_mov_b16_e64 v45.l, v174.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v148, 0x3fb8aa3b, v157
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v51, 0xffff0000, v51
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v157, 0x3fb8aa3b, v177 :: v_dual_mul_f32 v50, 0x3fb8aa3b, v50
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v44.l, 8, v44.l
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v151, 16, v151
	v_lshlrev_b32_e32 v183, 16, v194
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v148, v167, v181 :: v_dual_lshlrev_b32 v155, 16, v155
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v174, 0x3fb8aa3b, v178 :: v_dual_mul_f32 v51, 0x3fb8aa3b, v51
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v157, v168, v150
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_or_b16 v173.l, v45.l, v44.l
	v_perm_b32 v150, v161, v48, v128
	v_perm_b32 v48, v161, v48, v129
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v50, v169, v151 :: v_dual_and_b32 v53, 0xffff0000, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v151, v173, v160, v128
	ds_bpermute_b32 v150, v70, v150
	ds_bpermute_b32 v48, v72, v48
	v_perm_b32 v152, v173, v160, v129
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v53, 0x3fb8aa3b, v53 :: v_dual_mul_f32 v158, 0x3fb8aa3b, v158
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v151, v70, v151
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v49, v166, v154
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v152, v72, v152
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v51, v172, v156 :: v_dual_and_b32 v54, 0xffff0000, v54
	v_fmac_f32_e32 v174, v171, v155
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v182, 16, v196
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v158, v164, v183
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s29, 0xff800000, v132
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v137
	ds_load_b128 v[36:39], v108
	ds_load_b128 v[40:43], v111
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s68, s69
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v154, v48, v150, s21
	v_cndmask_b32_e64 v48, v150, v48, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v150, 1, v154
	v_cndmask_b32_e64 v155, v152, v151, s21
	v_cndmask_b32_e64 v151, v151, v152, s21
	v_and_b32_e32 v156, 1, v48
	v_and_b32_e32 v152, 0x100, v154
	v_cmp_eq_u32_e64 s30, 1, v150
	v_and_b32_e32 v159, 0x100, v48
	v_and_b32_e32 v168, 0x1000000, v151
	v_cmp_eq_u32_e64 s25, 1, v156
	v_and_b32_e32 v167, 0x100, v151
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, 0xff800000, v163, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s33, 0, v152
	v_cmp_eq_u32_e64 s28, 0, v168
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, 0xff800000, v175, s25
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v161, 0x1000000, v154
	v_and_b32_e32 v154, 0x10000, v154
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v152, v176, 0xff800000, s33
	v_cndmask_b32_e64 v168, v51, 0xff800000, s28
	v_cndmask_b32_e64 v51, v150, v163, s21
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v54, 0x3fb8aa3b, v54
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s27, 0, v167
	v_and_b32_e32 v164, 1, v155
	v_and_b32_e32 v169, 0x1000000, v155
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v51, v103, v51
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v160, 0x1000000, v48
	v_and_b32_e32 v48, 0x10000, v48
	v_cmp_eq_u32_e64 s31, 0, v154
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v167, v49, 0xff800000, s27
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v150, v152
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s23, 0, v160
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v53, v170, v182 :: v_dual_fmac_f32 v54, v165, v184
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s3, 0, v48
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v154, v148, 0xff800000, s31
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v171, v50, 0xff800000, s23
	v_cndmask_b32_e64 v50, v163, v150, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s35, 1, v164
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v170, v157, 0xff800000, s3
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s38, 0, v169
	v_and_b32_e32 v166, 1, v151
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v50, v90, v50
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v165, 0x100, v155
	v_and_b32_e32 v155, 0x10000, v155
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, 0xff800000, v55, s35
	v_cndmask_b32_e64 v55, v154, v170, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s34, 0, v161
	v_cmp_eq_u32_e64 s24, 1, v166
	v_cmp_eq_u32_e64 s37, 0, v155
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v55, v103, v55
	v_cndmask_b32_e64 v157, v53, 0xff800000, s34
	v_cndmask_b32_e64 v166, 0xff800000, v139, s24
	v_cndmask_b32_e64 v155, v158, 0xff800000, s37
	v_cndmask_b32_e64 v158, v54, 0xff800000, s38
	v_cndmask_b32_e64 v54, v170, v154, s21
	v_cndmask_b32_e64 v139, v171, v157, s21
	v_cndmask_b32_e64 v169, v156, v166, s21
	v_cndmask_b32_e64 v148, v157, v171, s21
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v164, v155, v158, v163
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v54, v90, v54
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e32 v182, v51, v50, vcc_lo
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s36, 0, v165
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v165, v166, v156, s21
	ds_bpermute_b32 v176, v90, v139
	v_cndmask_b32_e64 v139, v168, v158, s21
	ds_bpermute_b32 v177, v103, v148
	v_cndmask_b32_e64 v148, v158, v168, s21
	s_waitcnt lgkmcnt(2)
	v_dual_cndmask_b32 v183, v50, v51 :: v_dual_cndmask_b32 v180, v55, v54
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s22, 0, v159
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v159, v52, 0xff800000, s36
	v_cndmask_b32_e32 v181, v54, v55, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v162, v162, 0xff800000, s22
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v161, v157, v156, v159
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v172, v167, v159, s21
	v_cndmask_b32_e64 v173, v159, v167, s21
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v185, v176, v177, vcc_lo
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v48, v162, v170, v171
	v_max3_f32 v49, v49, v154, v161
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v161, v103, v169
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v151, 0x10000, v151
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v52, v162, v152, s21
	v_cndmask_b32_e64 v53, v152, v162, s21
	ds_bpermute_b32 v169, v103, v173
	ds_bpermute_b32 v173, v103, v148
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s26, 0, v151
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v52, v90, v52
	ds_bpermute_b32 v53, v103, v53
	v_cndmask_b32_e32 v184, v177, v176, vcc_lo
	v_cndmask_b32_e64 v151, v174, 0xff800000, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v160, v166, v167, v151
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v174, v151, v155, s21
	v_cndmask_b32_e64 v175, v155, v151, s21
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v48, v48, v160, v168
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v160, v90, v165
	ds_bpermute_b32 v165, v90, v172
	ds_bpermute_b32 v172, v90, v139
	ds_bpermute_b32 v174, v90, v174
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v48, v49, v164, v48
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v175, v103, v175
	s_waitcnt lgkmcnt(5)
	v_dual_cndmask_b32 v178, v53, v52 :: v_dual_cndmask_b32 v179, v52, v53
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v49, v48, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v139, v132, v48, v49
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v50, v50
.Ltmp18:
	.loc	1 886 62                        ; attention.py:886:62
	s_waitcnt lgkmcnt(4)
	v_dual_sub_f32 v162, v162, v139 :: v_dual_cndmask_b32 v187, v160, v161
	v_sub_f32_e32 v166, v166, v139
	v_sub_f32_e32 v150, v150, v139
	v_sub_f32_e32 v170, v170, v139
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v162, v162
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v163, v163, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v166, v166
	v_exp_f32_e32 v150, v150
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v154, v154, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v170, v170
	v_exp_f32_e32 v163, v163
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	v_dual_cndmask_b32 v190, v175, v174 :: v_dual_sub_f32 v157, v157, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v154, v154
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v162, v162, 0, s22
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e32 v188, v169, v165, vcc_lo
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v166, 0, v166, s24
	v_cndmask_b32_e64 v150, 0, v150, s30
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v157, v157
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v134.l, v162.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v171, v171, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v145.l, v166.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v152, v152, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v45.l, v150.h
	v_and_b32_e32 v134, 1, v134
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v171, v171
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v145, 1, v145
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v152, v152
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v170, v170, 0, s3
	v_cndmask_b32_e64 v163, 0, v163, s25
.Ltmp19:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v48, v51, v51 :: v_dual_and_b32 v45, 1, v45
.Ltmp20:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v154, v154, 0, s31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v138.l, v170.h
	v_mov_b16_e64 v135.l, v163.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v171, v171, 0, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v150, v150
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, v152, 0, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v141.l, v154.h
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v50, v132, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v136.l, v171.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v167, v167, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v44.l, v152.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v159, v159, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v152, v152
	v_and_b32_e32 v136, 1, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v167, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v44, 1, v44
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v159, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v150, v150, v45, 0x7fff
	v_and_b32_e32 v138, 1, v138
	v_and_b32_e32 v135, 1, v135
	v_add3_u32 v152, v152, v44, 0x7fff
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v169, v165, v169, vcc_lo
	v_dual_cndmask_b32 v148, v173, v172 :: v_dual_cndmask_b32 v191, v174, v175
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v167, v167, 0, s27
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v189, v172, v173, vcc_lo
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v159, v159, 0, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v141, 1, v141
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v172, v50
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v140.l, v167.h
	v_cmp_o_f32_e64 s24, v170, v170
	v_mov_b16_e64 v46.l, v159.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v155, v155, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v138, v170, v138, 0x7fff
	v_and_b32_e32 v140, 1, v140
	v_cndmask_b16 v152.h, 0x7fff, v152.h, s30
	v_and_b32_e32 v46, 1, v46
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v155, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v152.l, 0x7fff, v150.h, s31
	v_add3_u32 v135, v163, v135, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, v157, 0, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s34, v154, v154
	v_add3_u32 v141, v154, v141, 0x7fff
	v_cmp_o_f32_e64 s22, v163, v163
	v_cmp_o_f32_e64 s23, v171, v171
	v_cmp_o_f32_e64 s25, v167, v167
	v_add3_u32 v136, v171, v136, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v155, v155, 0, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v140, v167, v140, 0x7fff
	v_cndmask_b16 v135.l, 0x7fff, v138.h, s24
	v_permlanex16_b32 v138, v152, s72, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v134, v162, v134, 0x7fff
	v_mov_b16_e64 v144.l, v155.h
	v_cndmask_b16 v150.l, 0x7fff, v141.h, s34
	v_cndmask_b16 v134.l, 0x7fff, v135.h, s22
	v_cndmask_b16 v135.h, 0x7fff, v136.h, s23
	v_cndmask_b16 v136.h, 0x7fff, v140.h, s25
	v_and_b32_e32 v144, 1, v144
	v_perm_b32 v140, v138, v152, v67
	v_perm_b32 v141, v138, v152, v68
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v138, 0, v172, s29
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v156, v156, v139
	v_dual_sub_f32 v151, v151, v139 :: v_dual_cndmask_b32 v186, v161, v160
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v48, v49, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp22:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v138
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v156, v156
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v179, v180, v181
	v_max3_f32 v51, v174, v175, v148
	v_max3_f32 v52, v187, v188, v169
.Ltmp24:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v151, v151
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v47.l, v157.h
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v48, v48, v178, v49
	v_max3_f32 v49, v176, v177, v186
	v_max3_f32 v50, v52, v51, v189
.Ltmp26:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v168, v168, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v156, s35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v162, v162
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v158, v158, v139 :: v_dual_mul_f32 v31, v31, v138
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v132, v48, v49, v50
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v142.l, v156.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, v151, 0, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v47, 1, v47
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v168, v168
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v162, v132
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v142, 1, v142
	v_mov_b16_e64 v147.l, v151.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v158, v158
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v138
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v162, v162 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v157, v157
	v_and_b32_e32 v147, 1, v147
	v_cmp_o_f32_e64 s35, v159, v159
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v168, v168, 0, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v151, v151
	v_add3_u32 v164, v157, v47, 0x7fff
	v_add3_u32 v147, v151, v147, 0x7fff
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v151, v162, v162
.Ltmp34:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, v158, 0, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v165, v159, v46, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[52:55], v108 offset:2048
	ds_load_b128 v[48:51], v137 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v166, v166
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v132, v132, v151
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.l, v158.h
	v_add3_u32 v145, v166, v145, 0x7fff
	v_cndmask_b16 v150.h, 0x7fff, v164.h, s33
	v_cndmask_b16 v166.h, 0x7fff, v165.h, s35
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v133, v133, v132
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[162:165], v137 offset:1024
	ds_load_b128 v[170:173], v137 offset:3072
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v24, v24, v138 :: v_dual_and_b32 v143, 1, v143
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v137, v178, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s36, v156, v156
	v_cmp_o_f32_e64 s37, v158, v158
	v_cmp_o_f32_e64 s38, v155, v155
	v_add3_u32 v142, v156, v142, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v143, v158, v143, 0x7fff
	v_add3_u32 v144, v155, v144, 0x7fff
	v_mov_b16_e64 v146.l, v168.h
	v_cndmask_b16 v166.l, 0x7fff, v142.h, s36
	v_cmp_o_f32_e64 s27, v168, v168
	v_cndmask_b16 v167.h, 0x7fff, v143.h, s37
	v_cndmask_b16 v167.l, 0x7fff, v144.h, s38
	v_cndmask_b16 v134.h, 0x7fff, v134.h, s3
	v_cndmask_b16 v136.l, 0x7fff, v145.h, s26
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v137, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v146, 1, v146
	v_cndmask_b16 v151.l, 0x7fff, v147.h, s28
	v_permlanex16_b32 v143, v150, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v145, v166, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v147, v167, s72, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v146, v168, v146, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v138
	v_mul_f32_e32 v26, v26, v138
	v_mul_f32_e32 v27, v27, v138
	v_mul_f32_e32 v30, v30, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v151.h, 0x7fff, v146.h, s27
	v_perm_b32 v142, v143, v150, v67
	v_perm_b32 v143, v143, v150, v68
	v_perm_b32 v144, v145, v166, v67
	v_perm_b32 v145, v145, v166, v68
	v_permlanex16_b32 v150, v134, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v152, v135, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v146, v147, v167, v67
	v_perm_b32 v147, v147, v167, v68
	v_permlanex16_b32 v166, v136, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v167, v187, v133
	v_dual_sub_f32 v168, v186, v133 :: v_dual_mul_f32 v9, v9, v138
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[32:39], v[140:147], v[24:31]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_perm_b32 v32, v150, v134, v67
	v_perm_b32 v33, v150, v134, v68
	v_perm_b32 v34, v152, v135, v67
	v_perm_b32 v35, v152, v135, v68
	v_perm_b32 v36, v166, v136, v67
	v_perm_b32 v37, v166, v136, v68
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v134, v153, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v39, v151, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v132, v183, v133
	v_sub_f32_e32 v135, v182, v133
	v_dual_sub_f32 v136, v179, v133 :: v_dual_mul_f32 v17, v17, v138
	v_dual_sub_f32 v150, v181, v133 :: v_dual_mul_f32 v19, v19, v138
	v_dual_sub_f32 v152, v180, v133 :: v_dual_mul_f32 v21, v21, v138
	v_sub_f32_e32 v153, v185, v133
	v_dual_sub_f32 v166, v184, v133 :: v_dual_mul_f32 v23, v23, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v38, v39, v151, v67
	v_perm_b32 v39, v39, v151, v68
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v135, v135
	v_exp_f32_e32 v136, v136
	v_exp_f32_e32 v150, v150
	v_exp_f32_e32 v151, v152
	v_exp_f32_e32 v152, v153
	v_exp_f32_e32 v153, v166
	v_exp_f32_e32 v166, v167
	v_exp_f32_e32 v167, v168
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v169, v169, v133
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v132, s11
	v_cndmask_b32_e64 v135, 0, v135, s12
	v_cndmask_b32_e64 v136, 0, v136, s6
	v_cndmask_b32_e64 v150, 0, v150, s18
	v_cndmask_b32_e64 v151, 0, v151, s17
	v_cndmask_b32_e64 v152, 0, v152, s13
	v_cndmask_b32_e64 v153, 0, v153, s14
	v_cndmask_b32_e64 v166, 0, v166, s15
	v_cndmask_b32_e64 v167, 0, v167, s16
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v174, v188, v133 :: v_dual_mul_f32 v11, v11, v138
.Ltmp37:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v132, v135, v132
	v_dual_add_f32 v135, v137, v136 :: v_dual_add_f32 v136, v151, v150
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v137, v153, v152 :: v_dual_add_f32 v150, v167, v166
.Ltmp38:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v152, v191, v133 :: v_dual_mul_f32 v13, v13, v138
	v_sub_f32_e32 v153, v190, v133
	v_dual_sub_f32 v166, v189, v133 :: v_dual_mul_f32 v15, v15, v138
	v_dual_sub_f32 v148, v148, v133 :: v_dual_mul_f32 v1, v1, v138
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v168, v169
	v_exp_f32_e32 v169, v174
	v_exp_f32_e32 v152, v152
	v_exp_f32_e32 v153, v153
	v_exp_f32_e32 v166, v166
	v_exp_f32_e32 v148, v148
.Ltmp39:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v132, v132, v135 :: v_dual_mul_f32 v5, v5, v138
	v_add_f32_e32 v135, v136, v137
.Ltmp40:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v168, 0, v168, s8
	v_cndmask_b32_e64 v169, 0, v169, s10
	v_cndmask_b32_e64 v152, 0, v152, s19
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v153, 0, v153, s20
	v_cndmask_b32_e64 v166, 0, v166, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v148, 0, v148, s9
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v151, v169, v168
.Ltmp42:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[154:157], v111 offset:2048
	ds_load_b128 v[44:47], v112
	ds_load_b128 v[158:161], v112 offset:2048
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v152, v153, v152
	v_add_f32_e32 v132, v132, v135
	v_add_f32_e32 v148, v148, v166
	v_dual_add_f32 v136, v150, v151 :: v_dual_mul_f32 v7, v7, v138
.Ltmp44:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[178:181], v109
	ds_load_b128 v[186:189], v109 offset:2048
	ds_load_b128 v[182:185], v110
	ds_load_b128 v[190:193], v110 offset:2048
	ds_load_b128 v[166:169], v113
	ds_load_b128 v[174:177], v113 offset:2048
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v152, v148
.Ltmp46:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v138
	v_mul_f32_e32 v18, v18, v138
	v_mul_f32_e32 v20, v20, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v22, v22, v138 :: v_dual_add_f32 v135, v136, v137
	v_mul_f32_e32 v8, v8, v138
	v_mul_f32_e32 v10, v10, v138
	v_mul_f32_e32 v12, v12, v138
	v_dual_mul_f32 v14, v14, v138 :: v_dual_add_f32 v135, v132, v135
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v132, v131, v134
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v0, v0, v138
	v_mul_f32_e32 v2, v2, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v4, v4, v138 :: v_dual_mov_b32 v137, v135
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v136, v132
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v138
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v131
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[40:47], v[140:147], v[16:23]
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v137, v137 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[48:55], v[140:147], v[8:15]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[154:161], v[140:147], v[0:7]
	v_dual_mov_b32 v132, v139 :: v_dual_mov_b32 v131, v134
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v135, v137
.Ltmp50:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v41, 0, v136, s1
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[178:185], v[32:39], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[162:169], v[32:39], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[186:193], v[32:39], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[170:177], v[32:39], v[0:7]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v40, v149, v41
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v40, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v6, v7
	v_mov_b32_e32 v5, v7
	v_mov_b32_e32 v4, v7
	v_mov_b32_e32 v3, v7
	v_mov_b32_e32 v2, v7
	v_mov_b32_e32 v1, v7
	v_mov_b32_e32 v0, v7
	v_mov_b32_e32 v15, v7
	v_mov_b32_e32 v14, v7
	v_mov_b32_e32 v13, v7
	v_mov_b32_e32 v12, v7
	v_mov_b32_e32 v11, v7
	v_mov_b32_e32 v10, v7
	v_mov_b32_e32 v9, v7
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v23, v7
	v_mov_b32_e32 v22, v7
	v_mov_b32_e32 v21, v7
	v_mov_b32_e32 v20, v7
	v_mov_b32_e32 v19, v7
	v_mov_b32_e32 v18, v7
	v_mov_b32_e32 v17, v7
	v_mov_b32_e32 v16, v7
	v_mov_b32_e32 v31, v7
	v_mov_b32_e32 v30, v7
	v_mov_b32_e32 v29, v7
	v_mov_b32_e32 v28, v7
	v_mov_b32_e32 v27, v7
	v_mov_b32_e32 v26, v7
	v_mov_b32_e32 v25, v7
	v_mov_b32_e32 v24, v7
.LBB0_7:                                ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	ds_bpermute_b32 v37, v70, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.h, 0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v33, 1, v69
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_mul_lo_u32 v32, s39, v71
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v38.h
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v36, 16, v33
	v_or_b32_e32 v35, 32, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s39, v33
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 48, v33
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s39, v36
	v_cmp_gt_i32_e64 s1, s39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s0, s39, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v40, null, v37, v37, v25
	v_div_scale_f32 v42, null, v37, v37, v24
	v_div_scale_f32 v44, null, v37, v37, v27
	v_rcp_f32_e32 v45, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v47, null, v37, v37, v26
	v_rcp_f32_e32 v51, v44
	v_div_scale_f32 v53, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v54, v47
	v_div_scale_f32 v41, vcc_lo, v25, v37, v25
	v_fma_f32 v52, -v40, v45, 1.0
	v_fma_f32 v55, -v42, v48, 1.0
	v_div_scale_f32 v43, s3, v24, v37, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v44, v51, 1.0
	v_dual_fmac_f32 v45, v52, v45 :: v_dual_fmac_f32 v48, v55, v48
	v_rcp_f32_e32 v55, v53
	v_div_scale_f32 v46, s7, v27, v37, v27
	v_div_scale_f32 v50, null, v37, v37, v29
	v_fma_f32 v59, -v47, v54, 1.0
	v_dual_mul_f32 v60, v43, v48 :: v_dual_fmac_f32 v51, v57, v51
	v_mul_f32_e32 v58, v41, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v56, v50
	v_fma_f32 v62, -v53, v55, 1.0
	v_fmac_f32_e32 v54, v59, v54
	v_fma_f32 v59, -v42, v60, v43
	v_mul_f32_e32 v63, v46, v51
	v_fma_f32 v57, -v40, v58, v41
	v_fmac_f32_e32 v55, v62, v55
	v_div_scale_f32 v49, s8, v26, v37, v26
	v_fmac_f32_e32 v60, v59, v48
	v_fma_f32 v59, -v44, v63, v46
	v_fmac_f32_e32 v58, v57, v45
	v_fma_f32 v61, -v50, v56, 1.0
	v_div_scale_f32 v52, s9, v29, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v59, v51
	v_fma_f32 v40, -v40, v58, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v61, v56
	v_mul_f32_e32 v57, v49, v54
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v40, v45, v58
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v25, v40, v37, v25
	v_mul_f32_e32 v40, v52, v56
	v_fma_f32 v41, -v47, v57, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v57, v41, v54
	v_fma_f32 v42, -v42, v60, v43
	v_fma_f32 v41, -v44, v63, v46
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, s10, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v48, v60
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v45, v43, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v42, v37, v24
	v_fma_f32 v42, -v47, v57, v49
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v24, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v24, v41, v51, v63
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v44.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v42, v54, v57
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v25, v25, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v24, v37, v27
	v_fma_f32 v41, -v50, v40, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v42, v37, v26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v27, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v40, v41, v56
	v_fma_f32 v27, -v53, v45, v43
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v39, v44, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v44, v44
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v50, v40, v52
	v_fmac_f32_e32 v45, v27, v55
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	v_mov_b16_e32 v41.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v42, v56, v40
	v_fma_f32 v42, -v53, v45, v43
	s_mov_b32 vcc_lo, s10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.l, v26.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v55, v45
	v_div_fixup_f32 v29, v40, v37, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v39.h, s3
	v_and_b32_e32 v39, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v43
	v_div_fixup_f32 v28, v42, v37, v28
	v_div_scale_f32 v42, null, v37, v37, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v39, v26, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v45, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v49, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v40, 1.0
	v_fmac_f32_e32 v40, v44, v40
	v_div_scale_f32 v44, s7, v30, v37, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v48, v44, v40
	v_fma_f32 v50, -v42, v48, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v48, v50, v40 :: v_dual_and_b32 v27, 1, v38
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v27, v25, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v25.h, 0x7fff, v27.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v27, -v43, v41, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v29, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v28.h
	v_mov_b16_e32 v29.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v27, v41
	v_div_scale_f32 v27, s3, v31, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v39.h, vcc_lo
	v_mov_b16_e32 v38.l, v26.h
	v_cmp_o_f32_e64 s8, v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v39, v27, v41
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v29, 1, v29
	v_and_b32_e32 v47, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v43, v39, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v28, v29, 0x7fff
	v_add3_u32 v47, v26, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v46, v41
	v_div_scale_f32 v46, null, v37, v37, v16
	v_fma_f32 v26, -v43, v39, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v27, v46
	v_fma_f32 v43, -v45, v49, 1.0
	v_div_fmas_f32 v26, v26, v41, v39
	v_fma_f32 v39, -v42, v48, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v49, v43, v49
	v_div_scale_f32 v41, s3, v17, v37, v17
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v42, -v46, v27, 1.0
	v_div_fmas_f32 v39, v39, v40, v48
	v_mul_f32_e32 v40, v41, v49
	v_div_fixup_f32 v31, v26, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v47.h, s8
	v_cmp_o_f32_e64 s8, v28, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v30, v39, v37, v30
	v_fma_f32 v39, -v45, v40, v41
	v_fmac_f32_e32 v27, v42, v27
	v_div_scale_f32 v42, s7, v16, v37, v16
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v39, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v43, v42, v27
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v31.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v45, v40, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v30.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v46, v43, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v38.h
	v_cndmask_b16 v26.l, 0x7fff, v29.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v41, v49, v40
	s_mov_b32 vcc_lo, s7
	v_dual_fmac_f32 v43, v28, v27 :: v_dual_and_b32 v28, 1, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v29, 1, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v40, v37, v17
	v_fma_f32 v41, -v46, v43, v42
	v_div_scale_f32 v42, null, v37, v37, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v31, v28, 0x7fff
	v_add3_u32 v29, v30, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v41, v27, v43
	v_rcp_f32_e32 v39, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v21
	v_div_fixup_f32 v16, v27, v37, v16
	v_div_scale_f32 v27, null, v37, v37, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v16, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v27
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v16.h, 0x7fff, v28.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v42, v39, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v30.h, v38.h
	v_and_b32_e32 v45, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v28, v39
	v_div_scale_f32 v28, s3, v19, v37, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v27, v40, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.l, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v29, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v30, v28, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v45, v17, v45, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, s7, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v44, -v42, v30, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v17, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v46, v41, v40
	v_fmac_f32_e32 v30, v44, v39
	v_div_scale_f32 v44, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v27, v46, v41
	v_fma_f32 v17, -v42, v30, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v28, v44
	v_fma_f32 v42, -v43, v47, 1.0
	v_fmac_f32_e32 v46, v48, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v39, v30
	v_div_scale_f32 v30, s3, v21, v37, v21
	v_fma_f32 v27, -v27, v46, v41
	v_fmac_f32_e32 v47, v42, v47
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v44, v28, 1.0
	v_div_fixup_f32 v19, v17, v37, v19
	v_div_fmas_f32 v27, v27, v40, v46
	v_mul_f32_e32 v40, v30, v47
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v31, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v39, v28
	v_div_scale_f32 v39, s7, v20, v37, v20
	v_div_fixup_f32 v18, v27, v37, v18
	v_fma_f32 v27, -v43, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v45.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v39, v28
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	v_cndmask_b32_e64 v42, 0, v18, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v27, v47
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v31, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v18, -v44, v41, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v43, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.l, v42.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v18, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.h, v38.h
	v_cndmask_b16 v17.l, 0x7fff, v29.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v30, v30, v47, v40
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v31, -v44, v41, v39
	v_div_scale_f32 v39, null, v37, v37, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v18, 1, v38
	v_and_b32_e32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v28, v31, v28, v41
	v_rcp_f32_e32 v29, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v18, v19, v18, 0x7fff
	v_add3_u32 v19, v42, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v20, v28, v37, v20
	v_div_scale_f32 v28, null, v37, v37, v22
	v_div_fixup_f32 v21, v30, v37, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	v_fma_f32 v30, -v39, v29, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_mov_b16_e32 v31.h, v38.h
	v_mov_b16_e32 v31.l, v20.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, s3, v23, v37, v23
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v41, null, v37, v37, v9
	v_fmac_f32_e32 v27, v40, v27
	v_div_scale_f32 v40, s7, v22, v37, v22
	v_fma_f32 v42, -v39, v31, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v38
	v_add3_u32 v44, v20, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v19, v40, v27
	v_rcp_f32_e32 v45, v41
	v_fmac_f32_e32 v31, v42, v29
	v_div_scale_f32 v42, null, v37, v37, v8
	v_fma_f32 v46, -v28, v19, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v43, v21, v43, 0x7fff
	v_cmp_o_f32_e64 s8, v21, v21
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v39, v31, v30
	v_rcp_f32_e32 v30, v42
	v_fmac_f32_e32 v19, v46, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v41, v45, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v21, v21, v29, v31
	v_fma_f32 v28, -v28, v19, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v39, v45
	v_div_scale_f32 v29, s3, v9, v37, v9
	v_fma_f32 v31, -v42, v30, 1.0
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v21, v21, v37, v23
	v_div_fmas_f32 v19, v28, v27, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v27, v29, v45 :: v_dual_fmac_f32 v30, v31, v30
	v_div_scale_f32 v28, s7, v8, v37, v8
	v_div_fixup_f32 v22, v19, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v41, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v43.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v28, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v20, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v23, v45
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v20, -v42, v31, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v41, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v22.h
	v_and_b32_e32 v20, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v29, v45, v27
	v_div_scale_f32 v29, null, v37, v37, v11
	v_fma_f32 v28, -v42, v31, v28
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v20, v21, v20, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v9, v27, v37, v9
	v_div_fmas_f32 v28, v28, v30, v31
	v_rcp_f32_e32 v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v21, v22, v23, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v28, v37, v8
	v_div_scale_f32 v28, null, v37, v37, v10
	v_div_scale_f32 v39, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v8, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v20.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_mov_b16_e32 v22.l, v23.h
	v_mov_b16_e32 v22.h, v38.h
	v_mov_b16_e32 v38.l, v9.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v20, v30
	v_div_scale_f32 v20, s3, v11, v37, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v21.h, vcc_lo
	v_and_b32_e32 v21, 1, v22
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v22, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v31, v27
	v_div_scale_f32 v31, s7, v10, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v29, v22, v20
	v_rcp_f32_e32 v43, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v44.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v31, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v41, v9, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v22, v40, v30
	v_div_scale_f32 v40, null, v37, v37, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v28, v42, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v29, v22, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v20, v40
	v_fma_f32 v29, -v39, v43, 1.0
	v_fmac_f32_e32 v42, v44, v27
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v23, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v9, v9, v30, v22
	v_fmac_f32_e32 v43, v29, v43
	v_fma_f32 v22, -v28, v42, v31
	v_div_scale_f32 v28, s3, v13, v37, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v40, v20, 1.0
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v9, v9, v37, v11
	v_div_fmas_f32 v22, v22, v27, v42
	v_dual_mul_f32 v27, v28, v43 :: v_dual_fmac_f32 v20, v29, v20
	v_div_scale_f32 v29, s7, v12, v37, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v22, v37, v10
	v_fma_f32 v22, -v39, v27, v28
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v30, v29, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.h, 0x7fff, v41.h, s8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v22, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v40, v30, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v23, v23
	v_mov_b16_e32 v23.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v39, v27, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v22, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v9.h
	v_cndmask_b16 v11.l, 0x7fff, v21.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v28, v43, v27
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v28, -v40, v30, v29
	v_div_scale_f32 v29, null, v37, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v23
	v_and_b32_e32 v22, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v20, v28, v20, v30
	v_rcp_f32_e32 v23, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v13, v27, v37, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v9, v22, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v20, v37, v12
	v_div_scale_f32 v20, null, v37, v37, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v10, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v27, -v29, v23, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v13, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e32 v13.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v23, v27, v23
	v_div_scale_f32 v27, s3, v15, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.l, 0x7fff, v9.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v20, v21, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v30, null, v37, v37, v1
	v_fmac_f32_e32 v21, v28, v21
	v_div_scale_f32 v28, s7, v14, v37, v14
	v_fma_f32 v31, -v29, v13, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v40, v28, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v31, v23
	v_div_scale_f32 v31, null, v37, v37, v0
	v_fma_f32 v42, -v20, v40, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v10, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v29, v13, v27
	v_rcp_f32_e32 v27, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v29, -v30, v41, 1.0
	v_fmac_f32_e32 v40, v42, v21
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v12, v9, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v10, v10, v23, v13
	v_fmac_f32_e32 v41, v29, v41
	v_fma_f32 v13, -v20, v40, v28
	v_div_scale_f32 v20, s3, v1, v37, v1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v23, -v31, v27, 1.0
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v10, v10, v37, v15
	v_div_fmas_f32 v13, v13, v21, v40
	v_mul_f32_e32 v21, v20, v41
	v_fmac_f32_e32 v27, v23, v27
	v_div_scale_f32 v23, s7, v0, v37, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v13, v37, v14
	v_fma_f32 v15, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v14.h, 0x7fff, v39.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v23, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v12, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v21, v15, v41
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v12, -v31, v28, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v15.l, v13.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v15.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v12, v27
	v_div_scale_f32 v29, null, v37, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v20, v20, v41, v21
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v21, -v31, v28, v23
	v_div_scale_f32 v23, null, v37, v37, v3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v10.h
	v_cndmask_b16 v14.l, 0x7fff, v9.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v21, v21, v27, v28
	v_rcp_f32_e32 v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v15
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v15, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v12, 1, v38
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v20, v37, v1
	v_div_fixup_f32 v0, v21, v37, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v13, v9, 0x7fff
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v23, v27, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v15, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v10, v27
	v_div_scale_f32 v10, vcc_lo, v3, v37, v3
	v_fmac_f32_e32 v15, v20, v15
	v_div_scale_f32 v20, s3, v2, v37, v2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v10, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v20, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.h, v38.h
	v_and_b32_e32 v30, 1, v38
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v23, v13, v10
	v_fma_f32 v31, -v29, v28, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v30, v1, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v9, v27
	v_fmac_f32_e32 v28, v31, v15
	v_div_scale_f32 v1, null, v37, v37, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v0, v21, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v30.h, s7
	v_cmp_o_f32_e64 s7, v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v0, -v23, v13, v10
	v_fma_f32 v10, -v29, v28, v20
	v_rcp_f32_e32 v20, v1
	v_div_scale_f32 v23, null, v37, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v27, v13
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v27, null, v37, v37, v6
	v_rcp_f32_e32 v13, v23
	v_div_fmas_f32 v10, v10, v15, v28
	v_div_fixup_f32 v0, v0, v37, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v1, v20, 1.0
	v_div_scale_f32 v3, null, v37, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v10, v37, v2
	v_fmac_f32_e32 v20, v15, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v21, v3
	v_fma_f32 v15, -v23, v13, 1.0
	v_div_scale_f32 v10, vcc_lo, v5, v37, v5
	v_div_scale_f32 v29, s3, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v13, v15, v13
	v_rcp_f32_e32 v15, v27
	v_mul_f32_e32 v28, v10, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v3, v21, 1.0
	v_mul_f32_e32 v40, v29, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v1, v28, v10
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v30, v21
	v_div_scale_f32 v30, s7, v7, v37, v7
	v_fma_f32 v41, -v27, v15, 1.0
	v_fmac_f32_e32 v28, v39, v20
	v_fma_f32 v39, -v23, v40, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v30, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v15, v41, v15
	v_div_scale_f32 v41, s8, v6, v37, v6
	v_fma_f32 v1, -v1, v28, v10
	v_fmac_f32_e32 v40, v39, v13
	v_fma_f32 v10, -v3, v42, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v39, v41, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v1, v1, v20, v28
	v_fma_f32 v20, -v23, v40, v29
	v_fmac_f32_e32 v42, v10, v21
	v_fma_f32 v23, -v27, v39, v41
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v1, v1, v37, v5
	v_div_fmas_f32 v10, v20, v13, v40
	v_fma_f32 v3, -v3, v42, v30
	v_fmac_f32_e32 v39, v23, v15
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v10, v37, v4
	v_div_fmas_f32 v3, v3, v21, v42
	v_fma_f32 v5, -v27, v39, v41
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v13, 1, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v5, v5, v15, v39
	v_div_fixup_f32 v3, v3, v37, v7
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v10, v2, v13, 0x7fff
	v_add3_u32 v13, v0, v43, 0x7fff
	v_mov_b16_e32 v38.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v5, v37, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v38.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v3, s6
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v3, 1, v38
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v7.h, v38.h
	v_mov_b16_e32 v38.l, v0.h
	v_mov_b16_e32 v7.l, v5.h
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v2, v4, v6, 0x7fff
	v_add3_u32 v3, v1, v3, 0x7fff
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v38
	v_cmp_o_f32_e64 s3, v1, v1
	v_cmp_o_f32_e64 s6, v4, v4
	v_cmp_o_f32_e64 s7, v0, v0
	v_add3_u32 v1, v5, v6, 0x7fff
	v_add3_u32 v4, v0, v7, 0x7fff
	v_cmp_o_f32_e64 s8, v5, v5
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s6
	v_cndmask_b16 v13.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s8
	v_cndmask_b32_e64 v4, v16, v25, s21
	v_cndmask_b32_e64 v5, v25, v16, s21
	v_cndmask_b32_e64 v16, v0, v9, s21
	v_cndmask_b32_e64 v0, v9, v0, s21
	v_cndmask_b32_e64 v3, v24, v26, s21
	v_cndmask_b32_e64 v6, v19, v17, s21
	v_cndmask_b32_e64 v7, v17, v19, s21
	v_cndmask_b32_e64 v10, v8, v18, s21
	v_cndmask_b32_e64 v8, v18, v8, s21
	v_cndmask_b32_e64 v15, v14, v11, s21
	v_cndmask_b32_e64 v11, v11, v14, s21
	v_cndmask_b32_e64 v14, v12, v22, s21
	v_cndmask_b32_e64 v12, v22, v12, s21
	v_cndmask_b32_e64 v17, v2, v13, s21
	v_cndmask_b32_e64 v2, v13, v2, s21
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v1, v26, v24, s21
	v_permlanex16_b32 v13, v0, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v11, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v2, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v13, v16, v67
	v_perm_b32 v13, v13, v16, v68
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v16, v32, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v1, v67
	v_perm_b32 v1, v3, v1, v68
	v_perm_b32 v2, v5, v4, v67
	v_perm_b32 v3, v5, v4, v68
	v_perm_b32 v4, v7, v6, v67
	v_perm_b32 v5, v7, v6, v68
	v_perm_b32 v6, v8, v10, v67
	v_perm_b32 v7, v8, v10, v68
	v_perm_b32 v8, v9, v15, v67
	v_perm_b32 v9, v9, v15, v68
	v_perm_b32 v10, v11, v14, v67
	v_perm_b32 v11, v11, v14, v68
	v_perm_b32 v14, v18, v17, v67
	v_perm_b32 v15, v18, v17, v68
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v32, v36, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v32, v35, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v32, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[48:51], 0 offen
	buffer_store_b128 v[4:7], v17, s[48:51], 0 offen
	buffer_store_b128 v[8:11], v18, s[48:51], 0 offen
	buffer_store_b128 v[12:15], v19, s[48:51], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp51:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 197
		.amdhsa_next_free_sgpr 74
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 197
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 74
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13420
; TotalNumSgprs: 76
; NumVgprs: 197
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 76
; NumVGPRsForWavesPerEU: 197
; Occupancy: 7
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
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     76
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     197
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
