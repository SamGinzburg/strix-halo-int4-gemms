	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[84:87], s[0:1], 0x60
	v_dual_mov_b32 v42, 0x5410 :: v_dual_and_b32 v1, 1, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b256 s[68:75], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v178, 0xff800000 :: v_dual_lshlrev_b32 v1, 4, v1
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s6, v2
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s7, s6, s2
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v38, 0x60, v0
	v_dual_mov_b32 v43, 0x7632 :: v_dual_and_b32 v68, 15, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	s_mov_b32 s95, 0x31027000
	s_mov_b32 s94, 0x7ffffffe
	v_dual_mov_b32 v20, v17 :: v_dual_and_b32 v69, 16, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[81:82], null, s84, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s84, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s93, s69, 0xffff
	s_mov_b32 s92, s68
	s_clause 0x1
	s_load_b64 s[96:97], s[0:1], 0x20
	s_load_b128 s[88:91], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s84, s7, v[81:82]
	v_dual_mov_b32 v28, v17 :: v_dual_lshlrev_b32 v63, 2, v0
	v_dual_mov_b32 v12, v17 :: v_dual_and_b32 v39, 0x78, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v40, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v38
	v_dual_mov_b32 v18, v17 :: v_dual_and_b32 v41, 7, v0
	v_bfe_u32 v45, v0, 4, 1
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[33:36], v1, s[92:95], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v2, v68
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s93, s75, 0xffff
	s_mov_b32 s92, s74
	v_dual_mov_b32 v22, v17 :: v_dual_lshlrev_b32 v47, 1, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v2, s7, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	v_dual_mov_b32 v26, v17 :: v_dual_and_b32 v49, 12, v0
	v_mov_b32_e32 v179, 0xff800000
	.loc	1 756 22                        ; attention.py:756:22
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v2, off
	scratch_store_b32 off, v39, off offset:16
	scratch_store_b32 off, v63, off offset:12
	scratch_store_b32 off, v68, off offset:8
	scratch_store_b32 off, v69, off offset:4
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	v_bfe_i32 v54, v0, 2, 1
	v_bfe_i32 v57, v0, 5, 1
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v6, v17 :: v_dual_and_b32 v63, 0x7c, v63
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	v_dual_mov_b32 v101, 0xff800000 :: v_dual_and_b32 v48, 24, v0
	s_sub_i32 s3, s3, s1
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v37, v1, s[92:95], 0 offen
	.loc	1 773 86                        ; attention.py:773:86
	v_bfe_i32 v46, v0, 0, 1
	v_dual_mov_b32 v24, v17 :: v_dual_lshlrev_b32 v103, 4, v0
	v_dual_mov_b32 v19, v17 :: v_dual_and_b32 v50, 3, v0
	v_dual_mov_b32 v10, v17 :: v_dual_and_b32 v55, 8, v0
	v_bfe_i32 v56, v0, 3, 1
	v_dual_mov_b32 v23, v17 :: v_dual_lshlrev_b32 v60, 1, v49
	v_dual_mov_b32 v31, v17 :: v_dual_and_b32 v54, 0x2040, v54
	v_dual_mov_b32 v9, v17 :: v_dual_lshlrev_b32 v66, 6, v69
	v_dual_mov_b32 v14, v17 :: v_dual_lshlrev_b32 v39, 3, v41
	v_dual_mov_b32 v16, v17 :: v_dual_lshlrev_b32 v41, 4, v41
	v_dual_mov_b32 v2, v17 :: v_dual_lshlrev_b32 v61, 2, v38
	v_dual_mov_b32 v82, v17 :: v_dual_and_b32 v57, 0x2040, v57
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v58, s6, v40
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v59, v47, 30, v45
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s1, s3, 0x10007
	v_lshrrev_b32_e32 v64, 3, v38
	v_lshl_or_b32 v38, v38, 4, v63
	s_add_i32 s8, s3, s1
	v_dual_mov_b32 v32, v17 :: v_dual_and_b32 v53, 4, v0
	v_mov_b32_e32 v11, v17
	v_dual_mov_b32 v8, v17 :: v_dual_lshlrev_b32 v65, 5, v50
	v_xor_b32_e32 v105, v103, v48
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, 0x800, v58
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v58, 2, v59
	v_lshl_or_b32 v107, v68, 5, v60
	v_lshl_or_b32 v41, v48, 8, v41
	v_lshl_or_b32 v48, v48, 1, v61
	v_and_or_b32 v46, 0x1020, v46, v54
	v_lshl_or_b32 v54, v55, 4, v66
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s8, s8, 0x80000
	v_and_or_b32 v55, 0x1020, v56, v57
	s_sext_i32_i16 s8, s8
	v_xor_b32_e32 v110, v38, v64
	v_mul_lo_u32 v38, s5, v40
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 4
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s8, s8, 10
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v44, v0, 4, 1
	v_dual_mov_b32 v4, v17 :: v_dual_lshlrev_b32 v49, 5, v49
	v_dual_mov_b32 v84, v17 :: v_dual_and_b32 v47, 0x80, v47
	v_lshl_add_u32 v53, v53, 9, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v56, 4, v58
	v_xor_b32_e32 v63, 24, v107
	v_xor_b32_e32 v108, v41, v48
	v_xor_b32_e32 v41, v55, v65
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s7, s0, 14
	s_and_b32 s8, s8, 0xfffff800
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s9, s86, 0x3fb8aa3b
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s86, s8, s7
	v_dual_mov_b32 v25, v17 :: v_dual_and_b32 v62, 0x630, v103
	v_dual_mov_b32 v27, v17 :: v_dual_and_b32 v44, 0x2040, v44
	v_dual_mov_b32 v15, v17 :: v_dual_add_nc_u32 v116, 0, v63
	v_dual_mov_b32 v1, v17 :: v_dual_add_nc_u32 v118, v39, v38
	v_lshl_or_b32 v49, v50, 11, v49
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[86:87], null, s85, v40, v[39:40]
	v_add3_u32 v47, v53, v47, v41
	v_or_b32_e32 v117, s86, v45
	v_lshl_add_u32 v45, s5, 4, v38
	v_lshl_add_u32 v63, s5, 5, v38
	v_mad_u64_u32 v[40:41], null, s5, 48, v[38:39]
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s0, s87, s0
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s4, s4, s3
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v67, 4, v39
	v_or3_b32 v109, v62, v44, v49
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s87, s4, s0
	v_xor_b32_e32 v44, 0x2040, v108
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v69
	v_dual_mov_b32 v30, v17 :: v_dual_and_b32 v51, 28, v0
	v_dual_mov_b32 v21, v17 :: v_dual_lshlrev_b32 v52, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v119, 0, v44
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v170, v39, v45
	v_add_nc_u32_e32 v172, v67, v45
	v_cndmask_b32_e64 v42, 0x1054, v42, s0
	v_cndmask_b32_e64 v43, 0x3276, v43, s0
	v_dual_mov_b32 v29, v17 :: v_dual_and_b32 v52, 0x310, v52
	v_xor_b32_e32 v59, 8, v105
	v_lshl_or_b32 v50, v51, 7, v65
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s3, s85, v39
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v171, v39, v63
	v_add_nc_u32_e32 v174, v39, v40
	v_add_nc_u32_e32 v175, v67, v40
	v_lshl_or_b32 v39, v42, 8, v42
	v_lshl_or_b32 v40, v43, 8, v43
	v_mad_u64_u32 v[87:88], null, s85, 48, v[86:87]
	v_xor_b32_e32 v57, 8, v107
	v_xor_b32_e32 v60, 16, v107
	v_or3_b32 v111, v50, v61, v51
	v_or3_b32 v112, v46, v54, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v13, v17 :: v_dual_add_nc_u32 v114, 0, v57
	v_lshl_add_u32 v106, v68, 1, 0
	v_xor_b32_e32 v46, 16, v109
	v_xor_b32_e32 v48, 32, v109
	v_xor_b32_e32 v49, 48, v109
	v_xor_b32_e32 v50, 64, v109
	v_xor_b32_e32 v51, 0x50, v109
	v_xor_b32_e32 v52, 0x60, v109
	v_xor_b32_e32 v54, 0x70, v109
	v_xor_b32_e32 v55, 0x810, v110
	v_xor_b32_e32 v61, 8, v111
	v_xor_b32_e32 v62, 12, v111
	v_xor_b32_e32 v64, 16, v111
	v_xor_b32_e32 v65, 20, v111
	v_xor_b32_e32 v53, 24, v111
	v_xor_b32_e32 v66, 28, v111
	v_xor_b32_e32 v68, 32, v112
	v_add_nc_u32_e32 v115, 0, v60
	v_xor_b32_e32 v57, 64, v112
	v_xor_b32_e32 v60, 0x60, v112
	v_dual_mov_b32 v180, 0xff800000 :: v_dual_mov_b32 v181, 0xff800000
	v_dual_mov_b32 v182, 0xff800000 :: v_dual_mov_b32 v183, 0xff800000
	v_dual_mov_b32 v184, 0xff800000 :: v_dual_mov_b32 v185, 0xff800000
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v120, 0, v46
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v122, 0, v49
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v124, 0, v51
	v_dual_mov_b32 v83, v17 :: v_dual_add_nc_u32 v126, 0, v54
	v_add_nc_u32_e32 v121, 0, v48
	v_add_nc_u32_e32 v123, 0, v50
	v_add_nc_u32_e32 v125, 0, v52
	v_add_nc_u32_e32 v127, 0, v55
	v_add_nc_u32_e32 v129, 0, v61
	v_add_nc_u32_e32 v130, 0, v62
	v_add_nc_u32_e32 v131, 0, v64
	v_add_nc_u32_e32 v132, 0, v65
	v_add_nc_u32_e32 v133, 0, v53
	v_add_nc_u32_e32 v134, 0, v66
	v_add_nc_u32_e32 v135, 0, v68
	v_add_nc_u32_e32 v136, 0, v57
	v_add_nc_u32_e32 v137, 0, v60
	v_add_nc_u32_e32 v138, v47, v69
	v_or_b32_e32 v143, 10, v117
	v_or_b32_e32 v144, 12, v117
	v_or_b32_e32 v145, 14, v117
	v_or_b32_e32 v146, 16, v117
	v_or_b32_e32 v147, 18, v117
	v_or_b32_e32 v148, 20, v117
	v_or_b32_e32 v149, 22, v117
	v_or_b32_e32 v150, 24, v117
	v_or_b32_e32 v151, 26, v117
	v_or_b32_e32 v152, 28, v117
	v_or_b32_e32 v153, 30, v117
	v_or_b32_e32 v154, 32, v117
	v_or_b32_e32 v155, 34, v117
	v_or_b32_e32 v156, 36, v117
	v_or_b32_e32 v157, 38, v117
	v_or_b32_e32 v158, 40, v117
	v_or_b32_e32 v159, 42, v117
	v_or_b32_e32 v160, 44, v117
	v_or_b32_e32 v161, 46, v117
	v_or_b32_e32 v162, 48, v117
	v_or_b32_e32 v163, 50, v117
	v_or_b32_e32 v164, 52, v117
	v_or_b32_e32 v165, 54, v117
	v_or_b32_e32 v166, 56, v117
	v_or_b32_e32 v167, 58, v117
	v_or_b32_e32 v168, 60, v117
	v_or_b32_e32 v169, 62, v117
	v_add_nc_u32_e32 v173, v67, v63
	v_add_nc_u32_e32 v177, 4, v118
	s_mov_b32 s76, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s5, s6
	s_and_b32 s71, s71, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s89, s89, 0xffff
	s_mov_b32 s69, 0x76543210
	s_mov_b32 s77, s76
	s_mov_b32 s78, s76
	s_mov_b32 s79, s76
	s_mov_b32 s80, s76
	s_mov_b32 s81, s76
	s_mov_b32 s82, s76
	s_mov_b32 s83, s76
	s_mov_b32 s98, s94
	s_mov_b32 s99, s95
	s_mov_b32 s102, s94
	s_mov_b32 s103, s95
	s_mov_b32 s104, s76
	s_and_b32 s97, s97, 0xffff
	s_and_b32 s73, s73, 0xffff
	s_mov_b32 s100, s88
	s_mov_b32 s101, s89
	s_add_i32 s87, s87, s6
	s_mov_b32 s74, s94
	s_mov_b32 s75, s95
	s_mov_b32 s92, s70
	s_mov_b32 s93, s71
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v38, v58, v33
	ds_bpermute_b32 v33, v56, v33
	ds_bpermute_b32 v41, v58, v34
	ds_bpermute_b32 v34, v56, v34
	ds_bpermute_b32 v44, v58, v35
	ds_bpermute_b32 v35, v56, v35
	ds_bpermute_b32 v45, v58, v36
	ds_bpermute_b32 v36, v56, v36
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v88, v33, v38, s0
	v_cndmask_b32_e64 v90, v38, v33, s0
	v_and_b32_e32 v33, 0x540054, v39
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v89, v34, v41, s0
	v_cndmask_b32_e64 v91, v41, v34, s0
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v92, v35, v44, s0
	v_cndmask_b32_e64 v94, v44, v35, s0
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	v_add_nc_u32_e32 v113, 0, v59
	v_xor_b32_e32 v59, 4, v111
	v_lshl_or_b32 v33, v33, 4, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v85, v17 :: v_dual_mul_f32 v176, s9, v37
	v_and_b32_e32 v37, 0x760076, v40
	v_add_nc_u32_e32 v128, 0, v59
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v93, v36, v45, s0
	v_cndmask_b32_e64 v95, v45, v36, s0
	v_and_b32_e32 v97, 0x5040504, v33
	v_lshl_or_b32 v34, v37, 4, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v98, 0x7060706, v34
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s39, s104, s86
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s4, s87, s104
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[72:73], null, s39, s84, v[81:82]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v73, s4, v118, 2
	v_add_lshl_u32 v74, s4, v177, 2
	v_add_lshl_u32 v75, s4, v170, 2
	v_add_lshl_u32 v76, s4, v172, 2
	v_add_lshl_u32 v77, s4, v171, 2
	v_cndmask_b32_e64 v186, 0x80000000, v73, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v187, 0x80000000, v74, s1
	v_cndmask_b32_e64 v188, 0x80000000, v75, s1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s76 :: v_dual_add_nc_u32 v42, 0, v105
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[72:75], v72, s[92:95], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v78, s4, v173, 2
	v_add_lshl_u32 v79, s4, v174, 2
	v_add_lshl_u32 v80, s4, v175, 2
	v_cndmask_b32_e64 v76, 0x80000000, v76, s1
	v_cndmask_b32_e64 v77, 0x80000000, v77, s1
	v_cndmask_b32_e64 v78, 0x80000000, v78, s1
	v_cndmask_b32_e64 v79, 0x80000000, v79, s1
	v_cndmask_b32_e64 v80, 0x80000000, v80, s1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s77 :: v_dual_add_nc_u32 v41, 0, v107
	v_dual_mov_b32 v35, s78 :: v_dual_mov_b32 v36, s79
	v_dual_mov_b32 v37, s80 :: v_dual_mov_b32 v38, s81
	v_dual_mov_b32 v39, s82 :: v_dual_mov_b32 v40, s83
	.loc	1 838 37                        ; attention.py:838:37
	v_or_b32_e32 v44, 2, v117
	v_or_b32_e32 v45, 4, v117
	v_or_b32_e32 v46, 6, v117
	v_or_b32_e32 v47, 8, v117
	v_add_lshl_u32 v43, s104, v117, 1
	v_add_lshl_u32 v44, s104, v44, 1
	v_add_lshl_u32 v45, s104, v45, 1
	v_add_lshl_u32 v46, s104, v46, 1
	v_add_lshl_u32 v47, s104, v47, 1
	v_add_lshl_u32 v69, s104, v164, 1
	v_add_lshl_u32 v70, s104, v165, 1
	v_add_lshl_u32 v71, s104, v166, 1
	v_add_lshl_u32 v48, s104, v143, 1
	v_add_lshl_u32 v49, s104, v144, 1
	v_add_lshl_u32 v50, s104, v145, 1
	v_add_lshl_u32 v51, s104, v146, 1
	v_add_lshl_u32 v52, s104, v147, 1
	v_add_lshl_u32 v53, s104, v148, 1
	v_add_lshl_u32 v54, s104, v149, 1
	v_add_lshl_u32 v55, s104, v150, 1
	v_add_lshl_u32 v56, s104, v151, 1
	v_add_lshl_u32 v57, s104, v152, 1
	v_add_lshl_u32 v58, s104, v153, 1
	v_add_lshl_u32 v59, s104, v154, 1
	v_add_lshl_u32 v60, s104, v155, 1
	v_add_lshl_u32 v61, s104, v156, 1
	v_add_lshl_u32 v62, s104, v157, 1
	v_add_lshl_u32 v63, s104, v158, 1
	v_add_lshl_u32 v64, s104, v159, 1
	v_add_lshl_u32 v65, s104, v160, 1
	v_add_lshl_u32 v66, s104, v161, 1
	v_add_lshl_u32 v67, s104, v162, 1
	v_add_lshl_u32 v68, s104, v163, 1
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s39, s39, s85
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v42, v[72:73]
	ds_store_b64 v113, v[74:75]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x7
	buffer_load_b128 v[210:213], v186, s[100:103], 0 offen
	buffer_load_b128 v[214:217], v187, s[100:103], 0 offen
	buffer_load_b128 v[218:221], v188, s[100:103], 0 offen
	buffer_load_b128 v[222:225], v76, s[100:103], 0 offen
	buffer_load_b128 v[226:229], v77, s[100:103], 0 offen
	buffer_load_b128 v[230:233], v78, s[100:103], 0 offen
	buffer_load_b128 v[234:237], v79, s[100:103], 0 offen
	buffer_load_b128 v[238:241], v80, s[100:103], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[192:195], v41 offset1:1
	ds_load_2addr_stride64_b64 v[242:245], v41 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[246:249], v114 offset1:1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v41, s104, v167, 1
	v_add_lshl_u32 v42, s104, v168, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[192:193], v[88:89], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[194:195], v[88:89], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[194:201], v[242:243], v[88:89], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[202:209], v[244:245], v[88:89], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v114 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v115 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[246:247], v[92:93], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[248:249], v[92:93], v[186:193] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[194:201], v[33:34], v[92:93], v[194:201] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[202:209], v[35:36], v[92:93], v[202:209] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v115 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[37:38], v[90:91], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[39:40], v[90:91], v[186:193] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[37:40], v116 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[194:201], v[33:34], v[90:91], v[194:201] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[202:209], v[35:36], v[90:91], v[202:209] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v116 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[37:38], v[94:95], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[39:40], v[94:95], v[186:193] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v80, v72
	v_cvt_f32_i32_e32 v242, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v243, v74
	v_cvt_f32_i32_e32 v244, v75
	v_cvt_f32_i32_e32 v245, v76
	v_cvt_f32_i32_e32 v246, v77
	v_cvt_f32_i32_e32 v247, v78
	v_cvt_f32_i32_e32 v248, v79
	v_cvt_f32_i32_e32 v249, v186
	v_cvt_f32_i32_e32 v250, v187
	v_cvt_f32_i32_e32 v251, v188
	v_cvt_f32_i32_e32 v252, v189
	v_cvt_f32_i32_e32 v253, v190
	v_cvt_f32_i32_e32 v254, v191
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[194:201], v[33:34], v[94:95], v[194:201] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[202:209], v[35:36], v[94:95], v[202:209] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v255, v192
	v_cvt_f32_i32_e32 v104, v193
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v96, v194
	v_cvt_f32_i32_e32 v102, v195
	v_cvt_f32_i32_e32 v99, v196
	v_cvt_f32_i32_e32 v139, v198
	v_cvt_f32_i32_e32 v140, v199
	v_cvt_f32_i32_e32 v141, v200
	v_cvt_f32_i32_e32 v142, v201
	v_cvt_f32_i32_e32 v100, v197
	v_cvt_f32_i32_e32 v203, v203
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v204, v204
	v_cvt_f32_i32_e32 v205, v205
	v_cvt_f32_i32_e32 v209, v209
	v_cvt_f32_i32_e32 v206, v206
	v_cvt_f32_i32_e32 v202, v202
	v_cvt_f32_i32_e32 v207, v207
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v37, 0xff800000, v210, s1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v210, s104, v169, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v213, s1
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v36, 0xff800000, v217, s1
	v_cndmask_b32_e64 v35, 0xff800000, v215, s1
	v_cndmask_b32_e64 v40, 0xff800000, v216, s1
	v_cndmask_b32_e64 v39, 0xff800000, v214, s1
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v73, 0xff800000, v221, s1
	v_cndmask_b32_e64 v72, 0xff800000, v219, s1
	v_cndmask_b32_e64 v77, 0xff800000, v220, s1
	v_cndmask_b32_e64 v76, 0xff800000, v218, s1
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v75, 0xff800000, v225, s1
	v_cndmask_b32_e64 v74, 0xff800000, v223, s1
	v_cndmask_b32_e64 v79, 0xff800000, v224, s1
	v_cndmask_b32_e64 v78, 0xff800000, v222, s1
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v187, 0xff800000, v229, s1
	v_cndmask_b32_e64 v186, 0xff800000, v227, s1
	v_cndmask_b32_e64 v191, 0xff800000, v228, s1
	v_cndmask_b32_e64 v190, 0xff800000, v226, s1
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v189, 0xff800000, v233, s1
	v_cndmask_b32_e64 v188, 0xff800000, v231, s1
	v_cndmask_b32_e64 v193, 0xff800000, v232, s1
	v_cndmask_b32_e64 v192, 0xff800000, v230, s1
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v195, 0xff800000, v237, s1
	v_cndmask_b32_e64 v194, 0xff800000, v235, s1
	v_cndmask_b32_e64 v199, 0xff800000, v236, s1
	v_cndmask_b32_e64 v198, 0xff800000, v234, s1
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v196, 0xff800000, v239, s1
	v_cndmask_b32_e64 v201, 0xff800000, v240, s1
	v_cndmask_b32_e64 v200, 0xff800000, v238, s1
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v213, v43, s[96:99], 0 offen
	buffer_load_u16 v214, v44, s[96:99], 0 offen
	buffer_load_u16 v215, v45, s[96:99], 0 offen
	buffer_load_u16 v216, v46, s[96:99], 0 offen
	buffer_load_u16 v217, v47, s[96:99], 0 offen
	buffer_load_u16 v218, v48, s[96:99], 0 offen
	buffer_load_u16 v219, v49, s[96:99], 0 offen
	buffer_load_u16 v220, v50, s[96:99], 0 offen
	buffer_load_u16 v221, v51, s[96:99], 0 offen
	buffer_load_u16 v222, v52, s[96:99], 0 offen
	buffer_load_u16 v223, v53, s[96:99], 0 offen
	buffer_load_u16 v224, v54, s[96:99], 0 offen
	buffer_load_u16 v225, v55, s[96:99], 0 offen
	buffer_load_u16 v226, v56, s[96:99], 0 offen
	buffer_load_u16 v227, v57, s[96:99], 0 offen
	buffer_load_u16 v228, v58, s[96:99], 0 offen
	buffer_load_u16 v229, v59, s[96:99], 0 offen
	buffer_load_u16 v230, v60, s[96:99], 0 offen
	buffer_load_u16 v231, v61, s[96:99], 0 offen
	buffer_load_u16 v232, v62, s[96:99], 0 offen
	buffer_load_u16 v233, v63, s[96:99], 0 offen
	buffer_load_u16 v234, v64, s[96:99], 0 offen
	buffer_load_u16 v235, v65, s[96:99], 0 offen
	buffer_load_u16 v236, v66, s[96:99], 0 offen
	buffer_load_u16 v237, v67, s[96:99], 0 offen
	buffer_load_u16 v238, v68, s[96:99], 0 offen
	buffer_load_u16 v69, v69, s[96:99], 0 offen
	buffer_load_u16 v70, v70, s[96:99], 0 offen
	buffer_load_u16 v71, v71, s[96:99], 0 offen
	buffer_load_u16 v239, v41, s[96:99], 0 offen
	buffer_load_u16 v240, v42, s[96:99], 0 offen
	buffer_load_u16 v210, v210, s[96:99], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v211, s1
	v_cndmask_b32_e64 v38, 0xff800000, v212, s1
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v211, 0, v108
	v_add_nc_u32_e32 v212, 0, v109
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v197, 0xff800000, v241, s1
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v37
	v_cmp_neq_f32_e64 s6, 0xff800000, v38
	v_cmp_neq_f32_e64 s5, 0xff800000, v39
	v_cmp_neq_f32_e64 s4, 0xff800000, v40
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v211, v[37:40]
	ds_store_b128 v211, v[76:79] offset:512
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v33
	v_cmp_neq_f32_e64 s23, 0xff800000, v34
	v_cmp_neq_f32_e64 s21, 0xff800000, v35
	v_cmp_neq_f32_e64 s20, 0xff800000, v36
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v119, v[33:36]
	ds_store_b128 v119, v[72:75] offset:512
	ds_store_b128 v211, v[190:193] offset:1024
	ds_store_b128 v211, v[198:201] offset:1536
	ds_store_b128 v119, v[186:189] offset:1024
	ds_store_b128 v119, v[194:197] offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v212
	ds_load_b128 v[37:40], v120
	ds_load_b128 v[41:44], v121
	ds_load_b128 v[45:48], v122
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s4, s1, s4
	s_and_b32 s5, s1, s5
	v_cndmask_b32_e64 v65, 0, 1, s4
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v72
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v66, 0, 1, s5
	s_and_b32 s6, s1, s6
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v73
	v_cmp_neq_f32_e64 s28, 0xff800000, v74
	v_cmp_neq_f32_e64 s12, 0xff800000, v79
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, s1, s7
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s29, 0xff800000, v75
	v_cmp_neq_f32_e64 s30, 0xff800000, v186
	v_cmp_neq_f32_e64 s34, 0xff800000, v187
	v_cmp_neq_f32_e64 s8, 0xff800000, v78
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, s1, s12
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v76
	v_cmp_neq_f32_e64 s11, 0xff800000, v77
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v72, 0x3fb8aa3b, v33
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v33.l, v65.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v73, 0x3fb8aa3b, v34 :: v_dual_mul_f32 v74, 0x3fb8aa3b, v35
	v_mul_f32_e32 v75, 0x3fb8aa3b, v36
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v35, 0, 1, s6
	v_mov_b16_e32 v34.l, v66.l
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v186, 0x3fb8aa3b, v41 :: v_dual_mul_f32 v187, 0x3fb8aa3b, v42
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v36, 0, 1, s9
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v76, 0x3fb8aa3b, v37 :: v_dual_mul_f32 v77, 0x3fb8aa3b, v38
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v42.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v38, 0, 1, s7
	v_mov_b16_e32 v34.l, v36.l
	s_and_b32 s8, s1, s8
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v188
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_dual_mul_f32 v78, 0x3fb8aa3b, v39 :: v_dual_mul_f32 v79, 0x3fb8aa3b, v40
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v39, 0x3fb8aa3b, v44 :: v_dual_mul_f32 v188, 0x3fb8aa3b, v46
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v46, 0, 1, s8
	v_or_b16 v42.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v38.l
	s_and_b32 s11, s1, s11
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v193
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v35, 0, 1, s11
	v_mov_b16_e32 v34.l, v46.l
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s12, s1, s10
	s_and_b32 s10, s1, s16
	v_cndmask_b32_e64 v36, 0, 1, s12
	v_cndmask_b32_e64 v46, 0, 1, s10
	v_or_b16 v38.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v191
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v34.l, v36.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v192
	v_cmp_neq_f32_e64 s15, 0xff800000, v190
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s14, s1, s14
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v201
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s13, s1, s13
	v_cndmask_b32_e64 v35, 0, 1, s14
	v_or_b16 v38.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v46.l
	v_cndmask_b32_e64 v34, 0, 1, s13
	s_and_b32 s16, s1, s15
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v200
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s15, s1, s24
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v199
	v_cmp_neq_f32_e64 s19, 0xff800000, v198
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s17, s1, s17
	s_and_b32 s20, s1, s20
	v_or_b16 v36.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v34, 0, 1, s16
	s_and_b32 s18, s1, s18
	s_and_b32 s19, s1, s19
	s_and_b32 s21, s1, s21
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s24, s1, s23
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_load_b128 v[49:52], v123
	ds_load_b128 v[53:56], v124
	ds_load_b128 v[57:60], v125
	ds_load_b128 v[61:64], v126
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s25, s1, s22
	s_and_b32 s22, s1, s29
	v_or_b16 v36.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s15
	v_cndmask_b32_e64 v34, 0, 1, s17
	s_and_b32 s23, s1, s28
	s_and_b32 s28, s1, s27
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v189
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s29, s1, s26
	s_and_b32 s27, s1, s31
	s_and_b32 s31, s1, s30
	s_and_b32 s26, s1, s38
	v_or_b16 v35.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s18
	v_cndmask_b32_e64 v34, 0, 1, s19
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v189, 0x3fb8aa3b, v50
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s30, s1, s34
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v37, 0x3fb8aa3b, v43 :: v_dual_mul_f32 v40, 0x3fb8aa3b, v45
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v45, 0x3fb8aa3b, v51 :: v_dual_mul_f32 v190, 0x3fb8aa3b, v54
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v196
	v_cmp_neq_f32_e64 s36, 0xff800000, v197
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_or_b16 v35.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s20
	v_cndmask_b32_e64 v34, 0, 1, s21
	s_and_b32 s34, s1, s33
	s_and_b32 s33, s1, s36
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s35, 0xff800000, v194
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v195
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_dual_mul_f32 v41, 0x3fb8aa3b, v47 :: v_dual_mul_f32 v44, 0x3fb8aa3b, v49
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s36, s1, s35
	v_or_b16 v46.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s24
	v_cndmask_b32_e64 v34, 0, 1, s25
	s_and_b32 s35, s1, s37
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v47, 0x3fb8aa3b, v52 :: v_dual_mul_f32 v58, 0x3fb8aa3b, v58
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v52, 0x3fb8aa3b, v57 :: v_dual_mul_f32 v191, 0x3fb8aa3b, v62
	v_mul_f32_e32 v49, 0x3fb8aa3b, v55
	v_dual_mul_f32 v43, 0x3fb8aa3b, v48 :: v_dual_mul_f32 v48, 0x3fb8aa3b, v53
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v46.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s22
	v_cndmask_b32_e64 v34, 0, 1, s23
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v53, 0x3fb8aa3b, v59 :: v_dual_mul_f32 v192, 0x3fb8aa3b, v64
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v198, v176, v203
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v203, v176, v208
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v51, 0x3fb8aa3b, v56 :: v_dual_mul_f32 v62, 0x3fb8aa3b, v63
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v50.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s28
	v_cndmask_b32_e64 v34, 0, 1, s29
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v56, 0x3fb8aa3b, v61
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v196, v176, v255
	v_mul_f32_e32 v99, v176, v99
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v140, v176, v140
	v_mul_f32_e32 v199, v176, v204
	v_mul_f32_e32 v200, v176, v205
	v_mul_f32_e32 v204, v176, v209
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v50.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s26
	v_cndmask_b32_e64 v34, 0, 1, s27
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v193, v176, v252
	v_mul_f32_e32 v102, v176, v102
	v_mul_f32_e32 v194, v176, v253
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v195, v176, v254
	v_mul_f32_e32 v104, v176, v104
	v_mul_f32_e32 v100, v176, v100
	v_mul_f32_e32 v139, v176, v139
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v54.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s30
	v_cndmask_b32_e64 v34, 0, 1, s31
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v141, v176, v141
	v_mul_f32_e32 v142, v176, v142
	v_mul_f32_e32 v197, v176, v202
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v202, v176, v207
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v65, s39, v86, 1
	v_add_lshl_u32 v68, s39, v87, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v96, v176, v96
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v54.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s33
	v_cndmask_b32_e64 v34, 0, 1, s34
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v64, v176, v250
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v33.h, v34.l, v33.l
	v_cndmask_b32_e64 v34, 0, 1, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v33.l, v34.l
	v_cndmask_b32_e64 v34, 0, 1, s36
	v_lshlrev_b16 v33.l, 8, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v33.l, v34.l, v33.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v176, v80
	s_waitcnt vmcnt(31)
	v_dual_mul_f32 v80, v176, v251 :: v_dual_lshlrev_b32 v57, 16, v213
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v55, 0x3fb8aa3b, v60
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(29)
	v_dual_mul_f32 v60, v176, v244 :: v_dual_lshlrev_b32 v59, 16, v215
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(28)
	v_dual_fmac_f32 v72, v34, v57 :: v_dual_lshlrev_b32 v61, 16, v216
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v176, v242
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v57, 16, v214
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v208, 16, v221
	v_lshlrev_b32_e32 v63, 16, v217
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v75, v60, v61
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v60, s85, 5, v86
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v73, v34, v57 :: v_dual_add_nc_u32 v34, 0, v110
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v57, v176, v243
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_2addr_b32 v34, v42, v38 offset1:32
	ds_store_2addr_b32 v34, v36, v35 offset0:64 offset1:96
	ds_store_2addr_b32 v127, v46, v50 offset1:32
	ds_store_2addr_b32 v127, v54, v33 offset0:64 offset1:96
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v74, v57, v59
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v57, 0, v111
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v46, v134
	ds_load_b32 v50, v57
	ds_load_b32 v54, v128
	ds_load_b32 v38, v132
	ds_load_b32 v42, v133
	ds_load_b32 v36, v129
	ds_load_b32 v34, v130
	ds_load_b32 v35, v131
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v59, s85, 4, v86
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v61, v176, v245
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v205, 16, v218
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v209, 16, v222
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v222, 16, v234
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v66, s39, v59, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v59, v176, v246 :: v_dual_lshlrev_b32 v212, 16, v224
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v67, s39, v60, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v60, v176, v247
	v_dual_mul_f32 v201, v176, v206 :: v_dual_lshlrev_b32 v206, 16, v219
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v76, v61, v63 :: v_dual_mul_f32 v63, v176, v249
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v216, 16, v228
	v_lshlrev_b32_e32 v218, 16, v230
	v_lshlrev_b32_e32 v219, 16, v231
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v77, v59, v205 :: v_dual_fmac_f32 v190, v140, v222
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt lgkmcnt(6)
	v_dual_mul_f32 v61, v176, v248 :: v_dual_and_b32 v140, 1, v50
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v214, 16, v226
	v_lshlrev_b32_e32 v207, 16, v220
	v_lshlrev_b32_e32 v211, 16, v223
	v_lshlrev_b32_e32 v215, 16, v227
	v_lshlrev_b32_e32 v220, 16, v232
	v_lshlrev_b32_e32 v221, 16, v233
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v223, 16, v235
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v224, 16, v236
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v226, 16, v238
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v70, 16, v70
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v71, 16, v71
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v78, v60, v206 :: v_dual_lshlrev_b32 v227, 16, v239
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v210, 16, v210
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v186, v63, v208 :: v_dual_fmac_f32 v189, v102, v218
	v_fmac_f32_e32 v56, v201, v71
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v45, v99, v219 :: v_dual_fmac_f32 v192, v204, v210
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(2)
	v_and_b32_e32 v57, 0x1000000, v36
	v_and_b32_e32 v99, 1, v38
	v_and_b32_e32 v102, 1, v42
	v_cmp_eq_u32_e64 s67, 1, v140
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v213, 16, v225
	v_lshlrev_b32_e32 v217, 16, v229
	v_lshlrev_b32_e32 v225, 16, v237
	v_lshlrev_b32_e32 v69, 16, v69
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v79, v61, v207 :: v_dual_lshlrev_b32 v228, 16, v240
	v_fmac_f32_e32 v40, v194, v213
	v_dual_fmac_f32 v187, v64, v209 :: v_dual_fmac_f32 v188, v195, v214
	v_dual_fmac_f32 v37, v80, v211 :: v_dual_fmac_f32 v48, v139, v221
	v_dual_fmac_f32 v41, v196, v215 :: v_dual_fmac_f32 v52, v197, v225
	v_dual_fmac_f32 v43, v104, v216 :: v_dual_fmac_f32 v58, v198, v226
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v47, v100, v220 :: v_dual_and_b32 v60, 1, v35
	v_dual_fmac_f32 v49, v141, v223 :: v_dual_fmac_f32 v62, v203, v228
	v_dual_fmac_f32 v51, v142, v224 :: v_dual_and_b32 v64, 0x1000000, v34
	v_dual_fmac_f32 v55, v200, v70 :: v_dual_and_b32 v80, 0x10000, v35
	v_dual_fmac_f32 v191, v202, v227 :: v_dual_and_b32 v100, 0x1000000, v38
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v63, 1, v34
	v_and_b32_e32 v71, 0x10000, v42
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v140, v184, v184 :: v_dual_and_b32 v139, 0x10000, v54
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v141, 0x1000000, v50
	v_and_b32_e32 v142, 1, v54
	v_and_b32_e32 v196, 1, v46
	v_and_b32_e32 v198, 0x1000000, v46
	v_cmp_eq_u32_e64 s46, 1, v99
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v99, v179, v179
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s48, 1, v102
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v102, v181, v181
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s39, 0, v57
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v57, 0xff800000, v72, s67
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v61, 0x10000, v36
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v39, v193, v212 :: v_dual_fmac_f32 v44, v96, v217
	v_dual_fmac_f32 v53, v199, v69 :: v_dual_and_b32 v70, 0x10000, v38
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v33.l, 8, v35.l
	v_and_b32_e32 v96, 0x1000000, v35
	v_lshrrev_b16 v35.l, 8, v42.l
	v_lshrrev_b16 v35.h, 8, v50.l
	v_cmp_ne_u32_e64 s38, 0, v61
	v_cmp_ne_u32_e64 s42, 0, v64
	v_cmp_ne_u32_e64 s44, 0, v80
	v_cmp_ne_u32_e64 s43, 0, v100
	v_cmp_ne_u32_e64 s49, 0, v71
	v_cmp_ne_u32_e64 s65, 0, v139
	v_cmp_ne_u32_e64 s51, 0, v198
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v100, v180, v180
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s41, 1, v63
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v139, v183, v183
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s64, 1, v142
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v142, v101, v101
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s63, 0, v141
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v141, v185, v185
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s52, 1, v196
	v_lshrrev_b16 v33.h, 8, v36.l
	v_and_b32_e32 v104, 0x10000, v50
	v_and_b32_e32 v193, 0x1000000, v54
	v_and_b32_e32 v194, 1, v36
	v_lshrrev_b16 v36.l, 8, v54.l
	v_lshrrev_b16 v36.h, 8, v46.l
	v_and_b16 v50.l, 1, v35.l
	v_and_b16 v54.l, 1, v35.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v37, s38
	v_cndmask_b32_e64 v37, 0xff800000, v40, s41
	v_cndmask_b32_e64 v40, 0xff800000, v43, s42
	v_cndmask_b32_e64 v43, 0xff800000, v45, s44
	v_cndmask_b32_e64 v45, 0xff800000, v48, s46
	v_cndmask_b32_e64 v48, 0xff800000, v51, s43
	v_cndmask_b32_e64 v51, 0xff800000, v53, s49
	v_cndmask_b32_e64 v53, 0xff800000, v56, s52
	v_cndmask_b32_e64 v56, 0xff800000, v192, s51
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v59, 0x10000, v34
	v_lshrrev_b16 v34.l, 8, v34.l
	v_lshrrev_b16 v34.h, 8, v38.l
	v_and_b32_e32 v195, 0x1000000, v42
	v_and_b32_e32 v197, 0x10000, v46
	v_and_b16 v42.l, 1, v33.l
	v_and_b16 v38.l, 1, v33.h
	v_and_b16 v38.h, 1, v34.l
	v_and_b16 v54.h, 1, v36.l
	v_and_b16 v69.l, 1, v36.h
	v_and_b16 v46.l, 1, v34.h
	v_cmp_ne_u32_e64 s40, 0, v59
	v_cmp_eq_u32_e64 s45, 1, v60
	v_cmp_ne_u32_e64 s37, 0, v96
	v_cmp_ne_u32_e64 s47, 0, v70
	v_cmp_ne_u32_e64 s50, 0, v195
	v_cmp_ne_u32_e64 s53, 0, v197
	v_cmp_eq_u16_e64 s61, 1, v38.l
	v_cmp_eq_u16_e64 s60, 1, v38.h
	v_cmp_eq_u16_e64 s59, 1, v42.l
	v_cmp_eq_u16_e64 s55, 1, v50.l
	v_cmp_eq_u16_e64 s68, 1, v54.l
	v_cmp_eq_u16_e64 s62, 1, v54.h
	v_cmp_eq_u16_e64 s58, 1, v69.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v39, s39
	v_cndmask_b32_e64 v39, 0xff800000, v41, s40
	v_cndmask_b32_e64 v41, 0xff800000, v44, s45
	v_cndmask_b32_e64 v44, 0xff800000, v47, s37
	v_cndmask_b32_e64 v47, 0xff800000, v49, s47
	v_cndmask_b32_e64 v49, 0xff800000, v52, s48
	v_cndmask_b32_e64 v60, 0xff800000, v75, s63
	v_cndmask_b32_e64 v61, 0xff800000, v76, s64
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s56, 0, v193
	v_cmp_eq_u32_e64 s57, 1, v194
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v52, 0xff800000, v55, s50
	v_cndmask_b32_e64 v55, 0xff800000, v62, s53
	v_cndmask_b32_e64 v34, 0xff800000, v187, s61
	v_cndmask_b32_e64 v38, 0xff800000, v188, s60
	v_cndmask_b32_e64 v42, 0xff800000, v189, s59
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s54, 1, v46.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v50, 0xff800000, v58, s55
	v_cndmask_b32_e64 v58, 0xff800000, v73, s68
	v_cndmask_b32_e64 v62, 0xff800000, v77, s62
	v_cndmask_b32_e64 v54, 0xff800000, v191, s58
	v_mov_b32_e32 v191, v84
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s66, 0, v104
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v63, 0xff800000, v78, s65
	v_cndmask_b32_e64 v64, 0xff800000, v79, s56
	v_cndmask_b32_e64 v33, 0xff800000, v186, s57
	v_cndmask_b32_e64 v46, 0xff800000, v190, s54
	v_cndmask_b32_e64 v59, 0xff800000, v74, s66
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v69, v52, v53 :: v_dual_max_f32 v72, v55, v56
	v_max3_f32 v73, v34, v35, v36
	v_max3_f32 v74, v37, v38, v39
	v_max3_f32 v75, v40, v41, v42
	v_max_f32_e32 v76, v57, v58
	v_max3_f32 v77, v60, v61, v62
	v_max3_f32 v70, v43, v44, v45
	v_max3_f32 v71, v63, v64, v33
	v_max3_f32 v78, v46, v47, v48
	v_max3_f32 v79, v49, v50, v51
	v_max3_f32 v69, v69, v54, v72
	v_max3_f32 v72, v73, v74, v75
	v_max3_f32 v73, v76, v59, v77
.Ltmp2:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v197.h, 0
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v70, v70, v78, v79
.Ltmp4:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v104, v182, v182
	v_mov_b32_e32 v190, v82
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v71, v73, v71, v72
	v_dual_mov_b32 v188, v83 :: v_dual_mov_b32 v187, v85
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v69, v71, v70, v69
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v181.h, v197.h
	v_mov_b16_e64 v182.h, v197.h
	v_mov_b16_e64 v226.h, v197.h
	v_mov_b16_e64 v78.h, v197.h
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v69, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v80.h, v197.h
	v_mov_b16_e64 v179.h, v197.h
	v_mov_b16_e64 v180.h, v197.h
	v_mov_b16_e64 v192.h, v197.h
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v186, v178, v69, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v195.h, v197.h
	v_mov_b16_e64 v79.h, v197.h
	v_mov_b16_e64 v227.h, v197.h
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v74, 0x80000000, v67, s3
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v59, v186
	v_sub_f32_e32 v69, v58, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v193.h, v197.h
	v_mov_b16_e64 v228.h, v197.h
	v_mov_b16_e64 v196.h, v197.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v69, v69
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v189, 0, v103
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v194.h, v197.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v71, s66
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v71, v178, v186
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cmp_neq_f32_e64 s66, 0xff800000, v178
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v69, s68
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v178, 0x80000000, v68, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v78.l, v77.h
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v197.l, v70.h
	v_and_b32_e32 v78, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v230, v77, v78, 0x7fff
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v73, 0, v71, s66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v57, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v71, 1, v197
	v_cmp_o_f32_e64 s66, v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v73
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v71, v70, v71, 0x7fff
	v_mov_b16_e64 v70.h, v197.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v73
	v_mul_f32_e32 v32, v32, v73
	v_mul_f32_e32 v12, v12, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v96.h, 0x7fff, v71.h, s66
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v73
	v_mul_f32_e32 v16, v16, v73
	v_mul_f32_e32 v2, v2, v73
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s67
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v73
	v_mul_f32_e32 v24, v24, v73
	v_mul_f32_e32 v26, v26, v73
	v_mul_f32_e32 v28, v28, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v70.l, v69.h
	v_cmp_o_f32_e64 s66, v69, v69
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v73
	v_mul_f32_e32 v21, v21, v73
	v_mul_f32_e32 v22, v22, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v70, 1, v70
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v73
	v_mul_f32_e32 v17, v17, v73
	v_mul_f32_e32 v19, v19, v73
	v_mul_f32_e32 v20, v20, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v70, v69, v70, 0x7fff
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v69, 0, v112
	ds_store_b128 v69, v[57:60]
	ds_store_b128 v69, v[41:44] offset:2048
	ds_store_b128 v135, v[61:64]
	ds_store_b128 v135, v[45:48] offset:2048
	ds_store_b128 v136, v[33:36]
	ds_store_b128 v136, v[49:52] offset:2048
	ds_store_b128 v137, v[37:40]
	ds_store_b128 v137, v[53:56] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[82:85], v138 offset:1024
	ds_load_b128 v[198:201], v138
	ds_load_b128 v[202:205], v138 offset:1280
	ds_load_b128 v[206:209], v138 offset:256
	ds_load_b128 v[210:213], v138 offset:512
	ds_load_b128 v[214:217], v138 offset:768
	ds_load_b128 v[218:221], v138 offset:1536
	ds_load_b128 v[222:225], v138 offset:1792
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v186
	v_sub_f32_e32 v36, v36, v186
	v_sub_f32_e32 v40, v40, v186
	v_sub_f32_e32 v42, v42, v186
	v_sub_f32_e32 v37, v37, v186
	v_sub_f32_e32 v39, v39, v186
	v_sub_f32_e32 v43, v43, v186
	v_sub_f32_e32 v45, v45, v186
	v_sub_f32_e32 v47, v47, v186
	v_sub_f32_e32 v49, v49, v186
	v_sub_f32_e32 v51, v51, v186
	v_sub_f32_e32 v63, v63, v186
	v_sub_f32_e32 v33, v33, v186
	v_sub_f32_e32 v35, v35, v186
	v_sub_f32_e32 v41, v41, v186
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(7)
	v_max_f32_e32 v57, v85, v85
	s_waitcnt lgkmcnt(6)
	v_max_f32_e32 v58, v201, v201
	v_max3_f32 v59, v198, v82, v199
.Ltmp12:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v64, v186
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v75, v83, v200, v84
	s_waitcnt lgkmcnt(5)
	v_max_f32_e32 v76, v205, v205
	s_waitcnt lgkmcnt(4)
	v_max_f32_e32 v229, v209, v209
	v_max_f32_e32 v57, v58, v57
	v_max3_f32 v58, v206, v202, v207
.Ltmp14:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v39, v39
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v76, v229, v76
	v_max3_f32 v57, v59, v75, v57
	v_max3_f32 v59, v203, v208, v204
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v75, v221, v221
	v_dual_max_f32 v229, v213, v213 :: v_dual_sub_f32 v38, v38, v186
.Ltmp16:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v58, v58, v59, v76
	v_max3_f32 v59, v210, v218, v211
	v_max3_f32 v76, v219, v212, v220
	v_max_f32_e32 v75, v229, v75
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v229, v225, v225
.Ltmp18:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v49, v49
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v59, v59, v76, v75
	v_dual_max_f32 v75, v217, v217 :: v_dual_sub_f32 v44, v44, v186
	v_max3_f32 v76, v214, v222, v215
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v75, v75, v229
	v_max3_f32 v229, v223, v216, v224
.Ltmp22:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v52, v186
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v35, v35
.Ltmp23:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v75, v76, v229, v75
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v76, v57
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v61, v61, v186
	v_dual_sub_f32 v48, v48, v186 :: v_dual_mov_b32 v229, v58
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp26:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v76, v76 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v53, v53, v186
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v73
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s41
.Ltmp28:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v76, v76, v76
.Ltmp29:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s40
	v_cndmask_b32_e64 v231, 0, v42, s59
	v_cndmask_b32_e64 v42, 0, v43, s44
	v_cndmask_b32_e64 v43, 0, v45, s46
	v_cndmask_b32_e64 v45, 0, v47, s47
	v_cndmask_b32_e64 v47, 0, v49, s48
	v_cndmask_b32_e64 v49, 0, v51, s49
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v61, v61
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v55, v55, v186 :: v_dual_mul_f32 v8, v8, v73
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v73
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v229, v229 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v63, 0, v63, s65
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s57
	v_cndmask_b32_e64 v35, 0, v35, s38
	v_cndmask_b32_e64 v41, 0, v41, s45
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v181.l, v37.h
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v57, v57, v76 :: v_dual_mov_b32 v76, v75
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v182.l, v39.h
	v_mov_b16_e64 v226.l, v49.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v46, v186
	v_sub_f32_e32 v50, v50, v186
	v_dual_sub_f32 v54, v54, v186 :: v_dual_mul_f32 v23, v23, v73
	v_dual_sub_f32 v56, v56, v186 :: v_dual_mul_f32 v25, v25, v73
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v73
	v_mul_f32_e32 v13, v13, v73
	v_mul_f32_e32 v3, v3, v73
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v76, v76 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v73
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v229, v229, v229
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v80.l, v63.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v73
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v55
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v235, 0, v52, s50
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v179.l, v33.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v180.l, v35.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v192.l, v41.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v195.l, v45.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v7, v7, v73 :: v_dual_and_b32 v52, 1, v182
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v73, v59 :: v_dual_and_b32 v182, 1, v226
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v229
.Ltmp40:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v60, v60, v186
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v61, 0, v61, s64
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v50, v50
.Ltmp41:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v73, v73 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v53, s52
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v60, v60
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v79.l, v61.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v96.l, 0x7fff, v70.h, s66
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v70, 0x80000000, v66, s3
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v76, v76, v76
.Ltmp44:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v55, s53
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v227.l, v51.h
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v73, v73, v73 :: v_dual_and_b32 v80, 1, v80
.Ltmp46:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v232, 0, v46, s54
	v_cndmask_b32_e64 v234, 0, v50, s55
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v46, 1, v179
	v_and_b32_e32 v50, 1, v181
	v_and_b32_e32 v79, 1, v79
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[72:75], 0 offen
	buffer_load_b128 v[69:72], v70, s[72:75], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v193.l, v42.h
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v229, v75, v76
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v228.l, v53.h
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v73
.Ltmp50:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[73:76], v74, s[72:75], 0 offen
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v60, 0, v60, s63
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s63, v77, v77
	v_cmp_o_f32_e64 s64, v61, v61
	v_cmp_o_f32_e64 s65, v63, v63
	v_add3_u32 v63, v63, v80, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v44, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s37, v33, v33
	v_add3_u32 v33, v33, v46, 0x7fff
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v46, v57
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v61, v61, v79, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[77:80], v178, s[72:75], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v196.l, v47.h
	v_cmp_o_f32_e64 s52, v37, v37
	v_add3_u32 v37, v37, v50, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v62, v186
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v56, v56
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v197.l, v60.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v62, v62
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v236, 0, v54, s58
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v54, 1, v192
	v_and_b32_e32 v192, 1, v228
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v50, v59 :: v_dual_and_b32 v181, 1, v196
.Ltmp54:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v233, 0, v48, s43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s55, v41, v41
	v_mov_b16_e64 v194.l, v43.h
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v62, s62
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v48, 1, v180
	v_add3_u32 v41, v41, v54, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v50, v50
.Ltmp58:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s56
	v_cndmask_b32_e64 v237, 0, v56, s51
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s46, v35, v35
	v_and_b32_e32 v56, 1, v193
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v59, v50
.Ltmp60:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v54, 1, v197
	v_and_b32_e32 v179, 1, v194
	v_add3_u32 v35, v35, v48, 0x7fff
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v48, v58
	v_mov_b32_e32 v59, v50
.Ltmp62:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v197.l, v62.h
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v46 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s61
.Ltmp65:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v59 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s56, v42, v42
	v_and_b32_e32 v180, 1, v195
	v_add3_u32 v42, v42, v56, 0x7fff
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v48, v48 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v59, v59, v59 :: v_dual_and_b32 v56, 1, v197
.Ltmp69:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v197.l, v64.h
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
.Ltmp71:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s62, v53, v53
	v_add3_u32 v53, v53, v192, 0x7fff
	v_add3_u32 v54, v60, v54, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s48, v62, v62
	v_cmp_o_f32_e64 s58, v45, v45
	v_add3_u32 v45, v45, v180, 0x7fff
	v_cndmask_b16 v53.l, 0x7fff, v41.h, s55
	v_cndmask_b16 v54.l, 0x7fff, v42.h, s56
	v_add3_u32 v41, v62, v56, 0x7fff
	v_and_b32_e32 v42, 1, v197
	v_mov_b16_e64 v197.l, v34.h
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v56, v57, v46
	v_max_f32_e32 v50, v50, v59
	v_max_f32_e32 v48, v48, v48
.Ltmp73:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s60
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s47, v60, v60
	v_cmp_o_f32_e64 s49, v64, v64
	v_cmp_o_f32_e64 s54, v39, v39
	v_cmp_o_f32_e64 s59, v47, v47
	v_add3_u32 v39, v39, v52, 0x7fff
	v_add3_u32 v47, v47, v181, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v61.h, s64
	v_cndmask_b16 v37.l, 0x7fff, v33.h, s37
	v_cndmask_b16 v61.l, 0x7fff, v45.h, s58
	v_cndmask_b16 v33.h, 0x7fff, v41.h, s48
	v_add3_u32 v45, v64, v42, 0x7fff
	v_and_b32_e32 v46, 1, v197
	v_mov_b16_e64 v197.l, v36.h
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v181, v102, v50 :: v_dual_mov_b32 v52, v229
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v57, v58, v48 :: v_dual_mov_b32 v48, v56
.Ltmp75:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s50, v34, v34
	v_cmp_o_f32_e64 s57, v43, v43
	v_cndmask_b16 v44.l, 0x7fff, v230.h, s63
	v_add3_u32 v43, v43, v179, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v63.h, s65
	v_cndmask_b16 v39.l, 0x7fff, v35.h, s46
	v_cndmask_b16 v44.h, 0x7fff, v54.h, s47
	v_cndmask_b16 v35.h, 0x7fff, v45.h, s49
	v_add3_u32 v34, v34, v46, 0x7fff
	v_and_b32_e32 v45, 1, v197
	v_permlanex16_b32 v46, v33, s69, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v197.l, v38.h
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v178, v186
.Ltmp77:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s60, v49, v49
	v_and_b32_e32 v186, 1, v227
	v_add3_u32 v49, v49, v182, 0x7fff
	v_cmp_o_f32_e64 s51, v36, v36
	v_cndmask_b16 v49.l, 0x7fff, v37.h, s52
	v_cndmask_b16 v60.l, 0x7fff, v43.h, s57
	v_cndmask_b16 v63.l, 0x7fff, v47.h, s59
	v_permlanex16_b32 v43, v96, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v44, s69, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v37.h, 0x7fff, v34.h, s50
	v_add3_u32 v34, v36, v45, 0x7fff
	v_perm_b32 v45, v46, v33, v97
	v_perm_b32 v46, v46, v33, v98
	v_permlanex16_b32 v33, v35, s69, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v36, 1, v197
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v64, v48, v48
.Ltmp79:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v197.l, v40.h
	v_cmp_o_f32_e64 s61, v51, v51
	v_add3_u32 v51, v51, v186, 0x7fff
	v_cndmask_b16 v51.l, 0x7fff, v39.h, s54
	v_perm_b32 v41, v43, v96, v97
	v_perm_b32 v42, v43, v96, v98
	v_perm_b32 v43, v47, v44, v97
	v_perm_b32 v44, v47, v44, v98
	v_cndmask_b16 v39.h, 0x7fff, v34.h, s51
	v_perm_b32 v47, v33, v35, v97
	v_perm_b32 v48, v33, v35, v98
	v_permlanex16_b32 v34, v37, s69, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v35, v38, v36, 0x7fff
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v56, v64
.Ltmp81:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v56, 1, v197
	v_cmp_o_f32_e64 s66, v40, v40
	v_perm_b32 v33, v34, v37, v97
	v_perm_b32 v34, v34, v37, v98
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v186, v139, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v37, v40, v56, 0x7fff
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v227.l, 0x7fff, v51.h, s61
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v193, v141, v50
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v197.l, v231.h
	v_cndmask_b16 v51.h, 0x7fff, v37.h, s66
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v183, v186
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v179, v99, v36
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v52, v52, v52 :: v_dual_sub_f32 v139, v211, v181
.Ltmp85:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s53, v38, v38
	v_permlanex16_b32 v40, v39, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v59, v83, v179 :: v_dual_max_f32 v52, v229, v52
	v_sub_f32_e32 v64, v85, v179
	v_sub_f32_e32 v141, v213, v181
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v226.l, 0x7fff, v49.h, s60
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v59, v59
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v62, v52
.Ltmp87:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v49.h, 0x7fff, v35.h, s53
	v_perm_b32 v35, v40, v39, v97
	v_perm_b32 v36, v40, v39, v98
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v58, v57
.Ltmp89:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s46, 0xff800000, v183
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v198, v179
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v59, s24
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v56, 1, v197
	v_mov_b16_e64 v197.l, v55.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s20
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v198, v219, v181
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v196, v185, v193
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cmp_neq_f32_e64 s37, 0xff800000, v185
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v40, 1, v197
	v_mov_b16_e64 v197.l, v232.h
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
.Ltmp91:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	v_exp_f32_e32 v185, v198
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s44, v55, v55
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v52, v52, v62 :: v_dual_and_b32 v183, 1, v197
.Ltmp93:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v55, v55, v40, 0x7fff
	v_mov_b16_e64 v197.l, v233.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v141
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v62, v84, v179
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v182, v104, v52
	v_max_f32_e32 v194, v142, v52
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v52, v199, v179 :: v_dual_sub_f32 v199, v220, v181
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v54.h, 0x7fff, v55.h, s44
	v_and_b32_e32 v55, 1, v197
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v139, s14
	v_cndmask_b32_e64 v185, 0, v185, s30
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v58
.Ltmp97:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v141, s10
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v198, v199
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v197.l, v234.h
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v57, v58
.Ltmp99:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v201, v179
	v_sub_f32_e32 v58, v82, v179
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s42, v233, v233
	v_add3_u32 v55, v233, v55, 0x7fff
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v180, v100, v38
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v192, v140, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v140, v212, v181
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v212, 0, v52, s6
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v83, v207, v180
	v_sub_f32_e32 v85, v209, v180
	v_sub_f32_e32 v99, v203, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v102, v205, v180 :: v_dual_add_f32 v59, v212, v59
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v99, v99
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v102, v102
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v39, v231, v56, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v200, v179
	v_sub_f32_e32 v200, v221, v181
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v57, s4
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s45, v231, v231
	v_permlanex16_b32 v38, v49, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, 0, v83, s11
	v_cndmask_b32_e64 v85, 0, v85, s7
	v_cndmask_b32_e64 v99, 0, v99, s28
	v_cndmask_b32_e64 v102, 0, v102, s22
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v199, v200
.Ltmp100:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v57, v57, v64 :: v_dual_sub_f32 v104, v210, v181
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_add_f32 v64, v83, v99 :: v_dual_add_f32 v83, v85, v102
.Ltmp101:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v201, v214, v182
	v_sub_f32_e32 v205, v222, v182
	v_sub_f32_e32 v207, v224, v182
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v85, v139, v185 :: v_dual_sub_f32 v82, v206, v180
.Ltmp103:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v84, v208, v180
	v_sub_f32_e32 v100, v204, v180
	v_sub_f32_e32 v204, v217, v182
	v_sub_f32_e32 v206, v223, v182
	v_sub_f32_e32 v208, v225, v182
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v200, v201
	v_exp_f32_e32 v201, v205
	v_exp_f32_e32 v204, v204
	v_exp_f32_e32 v205, v206
	v_exp_f32_e32 v206, v207
	v_exp_f32_e32 v207, v208
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v208, 1, v197
	v_mov_b16_e64 v197.l, v235.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v96, v202, v180
	v_sub_f32_e32 v142, v218, v181
	v_sub_f32_e32 v202, v215, v182
	v_sub_f32_e32 v203, v216, v182
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v199, 0, v199, s26
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v61.h, 0x7fff, v55.h, s42
	v_add3_u32 v55, v234, v208, 0x7fff
	v_and_b32_e32 v208, 1, v197
	v_mov_b16_e64 v197.l, v236.h
	v_cndmask_b16 v228.l, 0x7fff, v53.h, s62
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v210, v37
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cmp_neq_f32_e64 s47, 0xff800000, v184
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v37, v38, v49, v97
	v_cndmask_b16 v53.h, 0x7fff, v39.h, s45
	v_perm_b32 v38, v38, v49, v98
	v_permlanex16_b32 v49, v51, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v96, v96
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v104, v104
	v_exp_f32_e32 v142, v142
	v_exp_f32_e32 v140, v140
	v_exp_f32_e32 v202, v202
	v_exp_f32_e32 v203, v203
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v204, 0, v204, s15
	v_cndmask_b32_e64 v207, 0, v207, s33
.Ltmp104:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v141, v199
.Ltmp105:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v195, v184, v192
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v141, 1, v197
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v184, v50
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s43, v232, v232
	v_permlanex16_b32 v50, v53, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v49, v51, v97
	v_perm_b32 v40, v49, v51, v98
	v_add3_u32 v51, v232, v183, 0x7fff
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v139, v204, v207
.Ltmp107:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v209, v101, v194
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v211, v195
	v_exp_f32_e32 v195, v196
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v49, v50, v53, v97
	v_perm_b32 v50, v50, v53, v98
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v196, v209
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v60.h, 0x7fff, v51.h, s43
	v_permlanex16_b32 v53, v54, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v209, 0, v184, s9
	v_cndmask_b32_e64 v58, 0, v58, s25
	v_cndmask_b32_e64 v56, 0, v56, s5
	v_cndmask_b32_e64 v62, 0, v62, s21
	v_cndmask_b32_e64 v82, 0, v82, s12
	v_cndmask_b32_e64 v96, 0, v96, s29
	v_cndmask_b32_e64 v84, 0, v84, s8
	v_cndmask_b32_e64 v100, 0, v100, s23
	v_cndmask_b32_e64 v104, 0, v104, s16
	v_cndmask_b32_e64 v142, 0, v142, s31
	v_cndmask_b32_e64 v140, 0, v140, s13
	v_cndmask_b32_e64 v198, 0, v198, s27
	v_cndmask_b32_e64 v200, 0, v200, s19
	v_cndmask_b32_e64 v201, 0, v201, s36
	v_cndmask_b32_e64 v202, 0, v202, s18
	v_cndmask_b32_e64 v205, 0, v205, s35
	v_cndmask_b32_e64 v203, 0, v203, s17
	v_cndmask_b32_e64 v206, 0, v206, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s41, v234, v234
	v_perm_b32 v51, v53, v54, v97
	v_perm_b32 v52, v53, v54, v98
	v_permlanex16_b32 v54, v60, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v58, v209, v58
	v_add_f32_e32 v56, v56, v62
	v_add_f32_e32 v62, v82, v96
	v_add_f32_e32 v82, v84, v100
	v_add_f32_e32 v84, v104, v142
	v_add_f32_e32 v96, v140, v198
	v_add_f32_e32 v100, v200, v201
	v_add_f32_e32 v102, v202, v205
	v_add_f32_e32 v104, v203, v206
.Ltmp109:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v53, v54, v60, v97
	v_perm_b32 v54, v54, v60, v98
	v_permlanex16_b32 v60, v61, s69, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v63.h, 0x7fff, v55.h, s41
	v_mov_b16_e64 v197.l, v237.h
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v58, v58, v59 :: v_dual_add_f32 v57, v56, v57
	v_add_f32_e32 v59, v62, v64
	v_add_f32_e32 v62, v82, v83
	v_add_f32_e32 v64, v84, v85
	v_add_f32_e32 v82, v96, v99
	v_add_f32_e32 v83, v100, v102
	v_add_f32_e32 v84, v104, v139
.Ltmp111:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s39, v236, v236
	v_perm_b32 v55, v60, v61, v97
	v_perm_b32 v56, v60, v61, v98
	v_permlanex16_b32 v60, v63, s69, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v61, v236, v141, 0x7fff
	v_and_b32_e32 v85, 1, v197
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v96, v58, v57 :: v_dual_add_f32 v99, v59, v62
	v_add_f32_e32 v64, v64, v82
	v_add_f32_e32 v82, v83, v84
.Ltmp113:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s38, v237, v237
	v_perm_b32 v57, v60, v63, v97
	v_perm_b32 v58, v60, v63, v98
	v_cndmask_b16 v227.h, 0x7fff, v61.h, s39
	v_add3_u32 v61, v237, v85, 0x7fff
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v63, v96
	v_dual_mov_b32 v83, v99 :: v_dual_mov_b32 v84, v64
	v_mov_b32_e32 v85, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp115:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v228.h, 0x7fff, v61.h, s38
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v63, v63 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v83, v83 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v84, v84 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v85, v85 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v100, v228, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v96, v96, v63
	v_dual_add_f32 v83, v99, v83 :: v_dual_add_f32 v84, v64, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v99, v82, v85
.Ltmp119:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v63, v100, v228, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v82, v96 :: v_dual_mov_b32 v85, v83
	v_mov_b32_e32 v102, v84
.Ltmp121:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v64, v100, v228, v98
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v100, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v85, v85 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v102, v102 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s4, 0xff800000, v101
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v100, v100 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v82, v96, v82 :: v_dual_add_f32 v83, v83, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v85, v84, v102
.Ltmp126:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s40, v235, v235
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v185, v99, v100 :: v_dual_mov_b32 v84, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v197, v83 :: v_dual_mov_b32 v198, v85
.Ltmp129:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v99, 0, v196, s4
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v199, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v62, v227, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v199, v199 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v82, v82, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v84, v83, v197 :: v_dual_add_f32 v83, v85, v198
.Ltmp134:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v85, v185, v199
.Ltmp136:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v61, v62, v227, v97
	v_perm_b32 v62, v62, v227, v98
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v189, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v189, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v189, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v189, v[77:80] offset:6144
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v85, v187, v99
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v140, v235, v208, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v183, 0, v210, s46
	v_cndmask_b32_e64 v184, 0, v211, s47
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v226.h, 0x7fff, v140.h, s40
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v96, 0, v195, s37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v185, v193 :: v_dual_fmac_f32 v82, v190, v183
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v84, v191, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v60, v226, s69, 0xfedcba98 op_sel:[1,0]
	v_dual_mov_b32 v183, v186 :: v_dual_mov_b32 v184, v192
	v_mov_b32_e32 v101, v194
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v83, v188, v96
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v59, v60, v226, v97
	v_perm_b32 v60, v60, v226, v98
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v69, v106 offset:1024
	ds_load_u16_d16 v77, v106 offset:1088
	ds_load_u16_d16 v75, v106 offset:576
	ds_load_u16_d16 v199, v106 offset:608
	ds_load_u16_d16 v198, v106 offset:352
	ds_load_u16_d16 v67, v106 offset:512
	ds_load_u16_d16 v206, v106 offset:288
	ds_load_u16_d16 v68, v106 offset:768
	ds_load_u16_d16 v76, v106 offset:832
	ds_load_u16_d16 v207, v106 offset:544
	ds_load_u16_d16 v70, v106 offset:1280
	ds_load_u16_d16 v78, v106 offset:1344
	ds_load_u16_d16 v201, v106 offset:1120
	ds_load_u16_d16 v71, v106 offset:1536
	ds_load_u16_d16 v79, v106 offset:1600
	ds_load_u16_d16 v202, v106 offset:1376
	ds_load_u16_d16 v72, v106 offset:1792
	ds_load_u16_d16 v80, v106 offset:1856
	ds_load_u16_d16 v203, v106 offset:1632
	ds_load_u16_d16 v213, v106 offset:2112
	ds_load_u16_d16 v204, v106 offset:1888
	ds_load_u16_d16 v221, v106 offset:2048
	ds_load_u16_d16 v214, v106 offset:2368
	ds_load_u16_d16 v222, v106 offset:2304
	ds_load_u16_d16 v223, v106 offset:2560
	ds_load_u16_d16 v215, v106 offset:2624
	ds_load_u16_d16 v224, v106 offset:2816
	ds_load_u16_d16 v216, v106 offset:2880
	ds_load_u16_d16 v231, v106 offset:2656
	ds_load_u16_d16 v225, v106 offset:3072
	ds_load_u16_d16 v217, v106 offset:3136
	ds_load_u16_d16 v232, v106 offset:2912
	ds_load_u16_d16 v226, v106 offset:3328
	ds_load_u16_d16 v218, v106 offset:3392
	ds_load_u16_d16 v233, v106 offset:3168
	ds_load_u16_d16 v227, v106 offset:3584
	ds_load_u16_d16 v219, v106 offset:3648
	ds_load_u16_d16 v234, v106 offset:3424
	ds_load_u16_d16 v228, v106 offset:3840
	ds_load_u16_d16 v220, v106 offset:3904
	ds_load_u16_d16 v235, v106 offset:3680
	ds_load_u16_d16 v238, v106 offset:4416
	ds_load_u16_d16 v237, v106 offset:4160
	ds_load_u16_d16 v236, v106 offset:3936
	ds_load_u16_d16 v65, v106
	ds_load_u16_d16 v66, v106 offset:256
	ds_load_u16_d16 v205, v106 offset:32
	ds_load_u16_d16 v73, v106 offset:64
	ds_load_u16_d16 v74, v106 offset:320
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v198, v106 offset:480
	ds_load_u16_d16 v197, v106 offset:96
	ds_load_u16_d16_hi v75, v106 offset:704
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v68, v106 offset:896
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v76, v106 offset:960
	ds_load_u16_d16 v200, v106 offset:864
	ds_load_u16_d16 v208, v106 offset:800
	ds_load_u16_d16_hi v69, v106 offset:1152
	ds_load_u16_d16_hi v77, v106 offset:1216
	ds_load_u16_d16 v209, v106 offset:1056
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v70, v106 offset:1408
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v78, v106 offset:1472
	ds_load_u16_d16 v210, v106 offset:1312
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v71, v106 offset:1664
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v79, v106 offset:1728
	ds_load_u16_d16 v211, v106 offset:1568
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v72, v106 offset:1920
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v80, v106 offset:1984
	ds_load_u16_d16 v212, v106 offset:1824
	ds_load_u16_d16_hi v67, v106 offset:640
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v66, v106 offset:384
	ds_load_u16_d16_hi v221, v106 offset:2176
	ds_load_u16_d16_hi v65, v106 offset:128
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v205, v106 offset:160
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v73, v106 offset:192
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v197, v106 offset:224
	ds_load_u16_d16_hi v206, v106 offset:416
	ds_load_u16_d16_hi v74, v106 offset:448
	ds_load_u16_d16_hi v207, v106 offset:672
	ds_load_u16_d16_hi v199, v106 offset:736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v208, v106 offset:928
	ds_load_u16_d16_hi v200, v106 offset:992
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v209, v106 offset:1184
	ds_load_u16_d16_hi v201, v106 offset:1248
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v210, v106 offset:1440
	ds_load_u16_d16_hi v202, v106 offset:1504
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v211, v106 offset:1696
	ds_load_u16_d16_hi v203, v106 offset:1760
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v212, v106 offset:1952
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s4, s104, 64
	s_cmpk_lt_u32 s104, 0x7c0
	s_mov_b32 s104, s4
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[65:72], v[41:48], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v204, v106 offset:2016
	ds_load_u16_d16 v65, v106 offset:2080
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(13)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[41:48], v[9:16]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[205:212], v[41:48], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v205, v106 offset:4096
	ds_load_u16_d16 v73, v106 offset:4192
	ds_load_u16_d16 v206, v106 offset:4352
	ds_load_u16_d16 v207, v106 offset:4608
	ds_load_u16_d16 v239, v106 offset:4672
	ds_load_u16_d16 v74, v106 offset:4448
	ds_load_u16_d16 v208, v106 offset:4864
	ds_load_u16_d16 v240, v106 offset:4928
	ds_load_u16_d16 v75, v106 offset:4704
	ds_load_u16_d16 v209, v106 offset:5120
	ds_load_u16_d16 v241, v106 offset:5184
	ds_load_u16_d16 v76, v106 offset:4960
	ds_load_u16_d16 v210, v106 offset:5376
	ds_load_u16_d16 v242, v106 offset:5440
	ds_load_u16_d16 v77, v106 offset:5216
	ds_load_u16_d16 v211, v106 offset:5632
	ds_load_u16_d16 v243, v106 offset:5696
	ds_load_u16_d16 v78, v106 offset:5472
	ds_load_u16_d16 v212, v106 offset:5888
	ds_load_u16_d16 v244, v106 offset:5952
	ds_load_u16_d16 v79, v106 offset:5728
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(22)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[197:204], v[41:48], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v42, v106 offset:6464
	ds_load_u16_d16 v41, v106 offset:6208
	ds_load_u16_d16 v80, v106 offset:5984
	ds_load_u16_d16 v197, v106 offset:6144
	ds_load_u16_d16 v229, v106 offset:2144
	ds_load_u16_d16_hi v213, v106 offset:2240
	ds_load_u16_d16_hi v222, v106 offset:2432
	ds_load_u16_d16_hi v214, v106 offset:2496
	ds_load_u16_d16_hi v223, v106 offset:2688
	ds_load_u16_d16_hi v215, v106 offset:2752
	ds_load_u16_d16_hi v224, v106 offset:2944
	ds_load_u16_d16_hi v216, v106 offset:3008
	ds_load_u16_d16_hi v225, v106 offset:3200
	ds_load_u16_d16_hi v217, v106 offset:3264
	ds_load_u16_d16_hi v226, v106 offset:3456
	ds_load_u16_d16_hi v218, v106 offset:3520
	ds_load_u16_d16_hi v227, v106 offset:3712
	ds_load_u16_d16_hi v219, v106 offset:3776
	ds_load_u16_d16_hi v228, v106 offset:3968
	ds_load_u16_d16_hi v220, v106 offset:4032
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[221:228], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v221, v106 offset:6240
	ds_load_u16_d16 v198, v106 offset:6400
	ds_load_u16_d16 v199, v106 offset:6656
	ds_load_u16_d16 v43, v106 offset:6720
	ds_load_u16_d16 v222, v106 offset:6496
	ds_load_u16_d16 v200, v106 offset:6912
	ds_load_u16_d16 v44, v106 offset:6976
	ds_load_u16_d16 v223, v106 offset:6752
	ds_load_u16_d16 v201, v106 offset:7168
	ds_load_u16_d16 v45, v106 offset:7232
	ds_load_u16_d16 v224, v106 offset:7008
	ds_load_u16_d16 v202, v106 offset:7424
	ds_load_u16_d16 v46, v106 offset:7488
	ds_load_u16_d16 v225, v106 offset:7264
	ds_load_u16_d16 v203, v106 offset:7680
	ds_load_u16_d16 v47, v106 offset:7744
	ds_load_u16_d16 v226, v106 offset:7520
	ds_load_u16_d16 v204, v106 offset:7936
	ds_load_u16_d16 v48, v106 offset:8000
	ds_load_u16_d16 v227, v106 offset:7776
	ds_load_u16_d16 v228, v106 offset:8032
	ds_load_u16_d16 v230, v106 offset:2400
	ds_load_u16_d16 v66, v106 offset:2336
	ds_load_u16_d16 v67, v106 offset:2592
	ds_load_u16_d16 v68, v106 offset:2848
	ds_load_u16_d16 v69, v106 offset:3104
	ds_load_u16_d16 v70, v106 offset:3360
	ds_load_u16_d16 v71, v106 offset:3616
	ds_load_u16_d16 v72, v106 offset:3872
	ds_load_u16_d16_hi v237, v106 offset:4288
	ds_load_u16_d16_hi v205, v106 offset:4224
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(31)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[213:220], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v213, v106 offset:4128
	ds_load_u16_d16_hi v238, v106 offset:4544
	ds_load_u16_d16_hi v206, v106 offset:4480
	ds_load_u16_d16 v214, v106 offset:4384
	ds_load_u16_d16_hi v207, v106 offset:4736
	ds_load_u16_d16_hi v239, v106 offset:4800
	ds_load_u16_d16 v215, v106 offset:4640
	ds_load_u16_d16_hi v208, v106 offset:4992
	ds_load_u16_d16_hi v240, v106 offset:5056
	ds_load_u16_d16 v216, v106 offset:4896
	ds_load_u16_d16_hi v209, v106 offset:5248
	ds_load_u16_d16_hi v241, v106 offset:5312
	ds_load_u16_d16 v217, v106 offset:5152
	ds_load_u16_d16_hi v210, v106 offset:5504
	ds_load_u16_d16_hi v242, v106 offset:5568
	ds_load_u16_d16 v218, v106 offset:5408
	ds_load_u16_d16_hi v211, v106 offset:5760
	ds_load_u16_d16_hi v243, v106 offset:5824
	ds_load_u16_d16 v219, v106 offset:5664
	ds_load_u16_d16_hi v212, v106 offset:6016
	ds_load_u16_d16_hi v244, v106 offset:6080
	ds_load_u16_d16 v220, v106 offset:5920
	ds_load_u16_d16_hi v41, v106 offset:6336
	ds_load_u16_d16_hi v197, v106 offset:6272
	ds_load_u16_d16_hi v65, v106 offset:2208
	ds_load_u16_d16_hi v229, v106 offset:2272
	s_waitcnt lgkmcnt(34)
	ds_load_u16_d16_hi v66, v106 offset:2464
	ds_load_u16_d16_hi v230, v106 offset:2528
	s_waitcnt lgkmcnt(35)
	ds_load_u16_d16_hi v67, v106 offset:2720
	ds_load_u16_d16_hi v231, v106 offset:2784
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v68, v106 offset:2976
	ds_load_u16_d16_hi v232, v106 offset:3040
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v69, v106 offset:3232
	ds_load_u16_d16_hi v233, v106 offset:3296
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v70, v106 offset:3488
	ds_load_u16_d16_hi v234, v106 offset:3552
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v71, v106 offset:3744
	ds_load_u16_d16_hi v235, v106 offset:3808
	s_waitcnt lgkmcnt(40)
	ds_load_u16_d16_hi v72, v106 offset:4000
	ds_load_u16_d16_hi v236, v106 offset:4064
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(19)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[237:244], v[49:56], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[205:212], v[49:56], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v65, v106 offset:6176
	ds_load_u16_d16_hi v42, v106 offset:6592
	ds_load_u16_d16_hi v198, v106 offset:6528
	ds_load_u16_d16 v66, v106 offset:6432
	ds_load_u16_d16_hi v199, v106 offset:6784
	ds_load_u16_d16_hi v43, v106 offset:6848
	ds_load_u16_d16 v67, v106 offset:6688
	ds_load_u16_d16_hi v200, v106 offset:7040
	ds_load_u16_d16_hi v44, v106 offset:7104
	ds_load_u16_d16 v68, v106 offset:6944
	ds_load_u16_d16_hi v201, v106 offset:7296
	ds_load_u16_d16_hi v45, v106 offset:7360
	ds_load_u16_d16 v69, v106 offset:7200
	ds_load_u16_d16_hi v202, v106 offset:7552
	ds_load_u16_d16_hi v46, v106 offset:7616
	ds_load_u16_d16 v70, v106 offset:7456
	ds_load_u16_d16_hi v203, v106 offset:7808
	ds_load_u16_d16_hi v47, v106 offset:7872
	ds_load_u16_d16 v71, v106 offset:7712
	ds_load_u16_d16_hi v204, v106 offset:8064
	ds_load_u16_d16_hi v48, v106 offset:8128
	ds_load_u16_d16 v72, v106 offset:7968
	ds_load_u16_d16_hi v213, v106 offset:4256
	ds_load_u16_d16_hi v73, v106 offset:4320
	ds_load_u16_d16_hi v214, v106 offset:4512
	ds_load_u16_d16_hi v74, v106 offset:4576
	ds_load_u16_d16_hi v215, v106 offset:4768
	ds_load_u16_d16_hi v75, v106 offset:4832
	ds_load_u16_d16_hi v216, v106 offset:5024
	ds_load_u16_d16_hi v76, v106 offset:5088
	ds_load_u16_d16_hi v217, v106 offset:5280
	ds_load_u16_d16_hi v77, v106 offset:5344
	ds_load_u16_d16_hi v218, v106 offset:5536
	ds_load_u16_d16_hi v78, v106 offset:5600
	ds_load_u16_d16_hi v219, v106 offset:5792
	ds_load_u16_d16_hi v79, v106 offset:5856
	ds_load_u16_d16_hi v220, v106 offset:6048
	ds_load_u16_d16_hi v80, v106 offset:6112
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v65, v106 offset:6304
	ds_load_u16_d16_hi v221, v106 offset:6368
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v66, v106 offset:6560
	ds_load_u16_d16_hi v222, v106 offset:6624
	s_waitcnt lgkmcnt(35)
	ds_load_u16_d16_hi v67, v106 offset:6816
	ds_load_u16_d16_hi v223, v106 offset:6880
	s_waitcnt lgkmcnt(34)
	ds_load_u16_d16_hi v68, v106 offset:7072
	ds_load_u16_d16_hi v224, v106 offset:7136
	s_waitcnt lgkmcnt(33)
	ds_load_u16_d16_hi v69, v106 offset:7328
	ds_load_u16_d16_hi v225, v106 offset:7392
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v70, v106 offset:7584
	ds_load_u16_d16_hi v226, v106 offset:7648
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v71, v106 offset:7840
	ds_load_u16_d16_hi v227, v106 offset:7904
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v72, v106 offset:8096
	ds_load_u16_d16_hi v228, v106 offset:8160
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[229:236], v[33:40], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[197:204], v[57:64], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[57:64], v[9:16]
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[213:220], v[49:56], v[25:32]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[49:56], v[1:8]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[57:64], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[221:228], v[57:64], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v33, off, off offset:12
	scratch_load_b32 v35, off, off offset:16
	scratch_load_b32 v34, off, off offset:8
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	v_and_b32_e32 v0, 4, v0
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v33, 0x80, v33
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v35, 0, v35
	s_waitcnt vmcnt(0)
	v_lshl_add_u32 v34, v34, 3, 0
	ds_store_2addr_b64 v35, v[82:83], v[84:85] offset1:16
	v_add3_u32 v0, v34, v33, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v17
	v_div_scale_f32 v35, null, v0, v0, v18
	v_div_scale_f32 v37, null, v0, v0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v39, null, v0, v0, v20
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v21
	v_div_scale_f32 v43, null, v0, v0, v22
	v_rcp_f32_e32 v48, v39
	v_rcp_f32_e32 v49, v41
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v34, vcc_lo, v17, v0, v17
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s1, v18, v0, v18
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s3, v19, v0, v19
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_scale_f32 v40, s4, v20, v0, v20
	v_fma_f32 v59, -v43, v50, 1.0
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_mul_f32 v55, v36, v46
	v_mul_f32_e32 v56, v38, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v50, v59, v50
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s5, v21, v0, v21
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v23
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
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v51, s6, v22, v0, v22
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v17, v33, v0, v17
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_scale_f32 v52, null, v0, v0, v24
	v_div_fixup_f32 v18, v34, v0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v51, v50 :: v_dual_fmac_f32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_div_fixup_f32 v20, v33, v0, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v33, -v43, v34, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v19, v35, v0, v19
	v_div_scale_f32 v35, s3, v23, v0, v23
	v_fmac_f32_e32 v34, v33, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v37, 1.0
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v33, v35, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s4, v24, v0, v24
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s5, v25, v0, v25
	v_fmac_f32_e32 v62, v58, v49
	v_div_scale_f32 v47, null, v0, v0, v28
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	v_div_fixup_f32 v21, v39, v0, v21
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v22, v34, v0, v22
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_div_scale_f32 v42, null, v0, v0, v27
	v_mul_f32_e32 v35, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v36, v35, v45
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v44, s3, v26, v0, v26
	v_div_fmas_f32 v34, v34, v37, v43
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v38, v40 :: v_dual_mul_f32 v38, v44, v41
	v_div_fixup_f32 v23, v33, v0, v23
	v_div_fixup_f32 v24, v34, v0, v24
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v42, v39, 1.0
	v_fma_f32 v34, -v46, v38, v44
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v36, s4, v27, v0, v27
	v_dual_fmac_f32 v39, v43, v39 :: v_dual_fmac_f32 v38, v34, v41
	v_fma_f32 v43, -v47, v37, 1.0
	v_div_scale_f32 v45, null, v0, v0, v29
	v_div_fmas_f32 v33, v33, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v36, v39 :: v_dual_fmac_f32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v40, s5, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v43
	v_div_fixup_f32 v25, v33, v0, v25
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v46, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v44, v39
	v_fma_f32 v44, -v43, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v35, v49, v35 :: v_dual_fmac_f32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_fma_f32 v38, -v47, v46, v40
	v_div_scale_f32 v41, s3, v29, v0, v29
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v36
	v_fmac_f32_e32 v46, v38, v37
	v_mul_f32_e32 v36, v41, v35
	v_div_scale_f32 v38, s6, v30, v0, v30
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
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_fmac_f32_e32 v44, v39, v48
	v_div_fmas_f32 v34, v34, v37, v46
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v35, -v43, v44, v38
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_scale_f32 v45, null, v0, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s4, v31, v0, v31
	v_fma_f32 v39, -v47, v37, 1.0
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v38, null, v0, v0, v9
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	v_fmac_f32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v41, v38
	v_mul_f32_e32 v36, v34, v40
	v_div_scale_f32 v39, s3, v32, v0, v32
	v_div_fixup_f32 v29, v33, v0, v29
	v_div_scale_f32 v48, null, v0, v0, v12
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v35, v46, v35 :: v_dual_fmac_f32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v43, v41
	v_div_fmas_f32 v34, v34, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s4, v10, v0, v10
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	v_fma_f32 v46, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s6, v11, v0, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s5, v9, v0, v9
	v_fma_f32 v36, -v47, v44, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v33, v41
	v_div_fmas_f32 v36, v36, v37, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v32, v36, v0, v32
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v0, v12
	v_fma_f32 v38, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v39, v36, v50 :: v_dual_fmac_f32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v9, v33, v0, v9
	v_fma_f32 v38, -v42, v44, v46
	v_div_scale_f32 v40, null, v0, v0, v14
	v_div_fixup_f32 v10, v35, v0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v11, v38, v0, v11
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s4, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	v_div_scale_f32 v35, s5, v14, v0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_scale_f32 v34, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v36, s3, v15, v0, v15
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s4, v16, v0, v16
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v48, s5, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s6, v2, v0, v2
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
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
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
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s3, v3, v0, v3
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	v_div_fixup_f32 v1, v34, v0, v1
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	v_rcp_f32_e32 v39, v35
	s_mov_b32 vcc_lo, s3
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
	v_cndmask_b32_e64 v15, 0, v15, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s4, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s3, v5, v0, v5
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v43, v38, v42
	v_mul_f32_e32 v49, v33, v36
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s5, v7, v0, v7
	v_fma_f32 v47, -v40, v43, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v52, v48, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s6, v8, v0, v8
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
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v17, s1
	v_cndmask_b32_e64 v17, 0, v18, s1
	v_cndmask_b32_e64 v18, 0, v19, s1
	v_cndmask_b32_e64 v19, 0, v20, s1
	v_cndmask_b32_e64 v20, 0, v21, s1
	v_cndmask_b32_e64 v21, 0, v22, s1
	v_cndmask_b32_e64 v22, 0, v23, s1
	v_cndmask_b32_e64 v23, 0, v24, s1
	v_cndmask_b32_e64 v24, 0, v25, s1
	v_cndmask_b32_e64 v25, 0, v26, s1
	v_cndmask_b32_e64 v26, 0, v27, s1
	v_cndmask_b32_e64 v27, 0, v28, s1
	v_cndmask_b32_e64 v28, 0, v29, s1
	v_cndmask_b32_e64 v29, 0, v30, s1
	v_cndmask_b32_e64 v30, 0, v31, s1
	v_cndmask_b32_e64 v31, 0, v32, s1
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:4
	scratch_load_b32 v36, off, off
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v37, v8, 16, 1
	v_bfe_u32 v38, v17, 16, 1
	v_bfe_u32 v39, v18, 16, 1
	v_cmp_o_f32_e64 s5, v8, v8
	v_cmp_o_f32_e64 s6, v17, v17
	v_add3_u32 v37, v8, v37, 0x7fff
	v_add3_u32 v8, v17, v38, 0x7fff
	v_add3_u32 v17, v18, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v18, v18
	v_bfe_u32 v18, v19, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v20, 16, 1
	v_bfe_u32 v38, v21, 16, 1
	v_cmp_o_f32_e64 s5, v19, v19
	v_add3_u32 v18, v19, v18, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s7
	v_add3_u32 v19, v20, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v20, v20
	v_add3_u32 v20, v21, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v21, v21
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s5
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v21, v23, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s6
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s7
	v_bfe_u32 v20, v24, 16, 1
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v21, v23, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_bfe_u32 v22, v25, 16, 1
	v_add3_u32 v20, v24, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v24, v24
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s5
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v26, 16, 1
	v_add3_u32 v22, v25, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v25, v25
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s7
	v_bfe_u32 v23, v27, 16, 1
	v_add3_u32 v21, v26, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v26, v26
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v28, 16, 1
	v_bfe_u32 v24, v29, 16, 1
	v_add3_u32 v23, v27, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v27, v27
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s6
	v_add3_u32 v22, v28, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v24, v29, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s7
	v_bfe_u32 v23, v30, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s5
	v_bfe_u32 v25, v31, 16, 1
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s6
	v_bfe_u32 v24, v9, 16, 1
	v_bfe_u32 v26, v10, 16, 1
	v_add3_u32 v23, v30, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v24, v9, v24, 0x7fff
	v_add3_u32 v25, v31, v25, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v9, v10, v26, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v24.h, s6
	v_bfe_u32 v24, v12, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s5
	v_bfe_u32 v25, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v24, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v24, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s5, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v0, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v0, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v0, v0
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s9
	v_cndmask_b32_e64 v5, v8, v19, s0
	v_cndmask_b32_e64 v6, v18, v17, s0
	v_cndmask_b32_e64 v7, v17, v18, s0
	v_cndmask_b32_e64 v13, v20, v22, s0
	v_cndmask_b32_e64 v16, v12, v9, s0
	v_cndmask_b32_e64 v9, v9, v12, s0
	v_cndmask_b32_e64 v12, v11, v10, s0
	v_cndmask_b32_e64 v10, v10, v11, s0
	v_cndmask_b32_e64 v17, v0, v1, s0
	v_cndmask_b32_e64 v0, v1, v0, s0
	v_cndmask_b32_e64 v15, v21, v23, s0
	v_cndmask_b32_e64 v1, v2, v3, s0
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e64 v18, v3, v2, s0
	v_permlanex16_b32 v2, v5, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v4, v19, v8, s0
	v_cndmask_b32_e64 v8, v22, v20, s0
	v_permlanex16_b32 v9, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v14, v23, v21, s0
	v_permlanex16_b32 v3, v7, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v10, v11, v12, v97
	v_perm_b32 v11, v11, v12, v98
	v_perm_b32 v12, v13, v17, v97
	v_perm_b32 v13, v13, v17, v98
	v_perm_b32 v0, v2, v4, v97
	v_perm_b32 v1, v2, v4, v98
	v_perm_b32 v4, v5, v8, v97
	v_perm_b32 v5, v5, v8, v98
	v_perm_b32 v8, v9, v16, v97
	v_perm_b32 v9, v9, v16, v98
	v_perm_b32 v2, v3, v6, v97
	v_perm_b32 v3, v3, v6, v98
	v_perm_b32 v6, v7, v14, v97
	v_perm_b32 v7, v7, v14, v98
	v_perm_b32 v14, v15, v18, v97
	v_perm_b32 v15, v15, v18, v98
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_and_b32 s9, s91, 0xffff
	s_mov_b32 s8, s90
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v32, 1, v32
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v36, s85, v36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 16, v32
	v_or_b32_e32 v34, 32, v32
	v_or_b32_e32 v35, 48, v32
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s85, v32
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s85, v33
	v_cmp_gt_i32_e64 s1, s85, v34
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s85, v35
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s0, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v35, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[8:11], 0 offen
	buffer_store_b128 v[4:7], v17, s[8:11], 0 offen
	buffer_store_b128 v[8:11], v18, s[8:11], 0 offen
	buffer_store_b128 v[12:15], v19, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp137:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 24
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 24
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18368
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 24
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
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
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
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
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
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 24
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 5
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
